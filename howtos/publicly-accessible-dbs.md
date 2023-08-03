# Use Cloud Service Broker to create a publicly accessible RDS

Topics covered in this document:
- [Existing challenges and possible solutions](#existing-challenges-and-possible-solutions)
  - [Setting `publicly_accessible` is not enough](#setting-public_accessible_is_not_enough)
- [Pitfalls when creating service plans](#pitfalls-when-creating-service-plans)
- [Pitfalls when creating service instances](#pitfalls-when-creating-service-instances)
- [Making an existing instance public](#making-an-existing-instance-public)
- [Creating a public instance from scratch](#creating-a-public-instance-from-scratch)


## Existing challenges and possible solutions

### Setting `publicly_accessible` is not enough

This is strictly true for AWS RDS. Other IAASes use different naming conventions (GCP > public_ip),
however the same principle still applies. Setting such field is required but not sufficient for making
the DB instance public.

Additional requirements tend to also use different naming conventions across IAASes, but in general,
each and everyone of these additional requirements will fit into one of the following descriptions:
- Assigning the db to a subnet or subnet group with the right routing conditions
- Allowing traffic from/to specific CIDR ranges using firewall/security rules

Since there isn't a one-size-fits-all solution in terms of networking architecture, CSB doesn't try
to impose an opinionated networking configuration. Instead, most services will allow/require you to
specify any custom subnet, firewall and/or security rules you want associated to your service instance.

At the time of writing (July 31st 2023), not a single one of CSB services ever attempts to create
a VPC, nor a subnet for you. For the time being, you'll have to create such infrastructure yourself
using whatever tool is available to you depending on the IAAS.

However be aware that some CSB services will assign each and every subnet present in the active VPC
unless a custom set of subnets is specified. This can take you completely by surprise, the more so
given that for some services you can also leave the VPC unspecified. CSB will pick the default one.

_Eg. **The default VPC** will be used for the Amazon RDS for PostgreSQL service when `aws_vpc_id` is unspecified_.
See [Configuration Parameters](../reference/aws-postgres.html.md.erb#parameters) for more information


## Pitfalls when creating service plans

- Remember to explicitly specify a VPC and subnet group in your plan (unless you have strong reason not to).  
  _Failing to do this can lead to unexpected and unpredictable network configurations to be applied to each service instance._
- Explictly set `publicly_accessible: false` in your plan if your VPC and subnets were not designed with public DBs in mind.  
  _Failing to do this can confuse consumers of your plan if they set `publicly_accessible: true` and still can't connect to the DB._


## Pitfalls when creating service instances

If setting `publicly_accessible: true` doesn't seem to allow public connections, contact the team
  in charge of creating the CSB plans for your org and ask them whether they intend to support public database instances or not.
- If setting `publicly_accessible: true` or `ipv4_enabled: true` causes your db to randomly accept public connection, contact the team
  in charge of creating the CSB plans for your org and ask them whether they intend to support public database instances or not.


## Making an existing instance public

Depending on the conditions in which your service instance was created it might be easier or harder to make it public.  
The most relevant factor is the number of subnets associated to the resulting database.

### Too many subnets

Some combinations of VPC and subnet groups are extremely error prone. Mainly, when neither VPC or subnet groups are specified.
In such cases, all subnets present in the default VPC will be assigned to a new subnet group and associated to your db instance.
As you can imagine, the larger the number of subnets associated to your db instance in such scenario, the harder to fix their routing.

https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Troubleshooting.html#CHAP_Troubleshooting.Connecting


### Firewalls and security rules

Other common scenario is missing just a firewall or security rule.  
- If your service uses AWS RDS, you should specify `rds_vpc_security_group_ids` as a comma delimited list of security group ID's for instance.  
  _You may need to review your security rules to add the rules needed to allow network traffic._


## Creating a public instance from scratch

- AWS RDS:
  1. [Creating a DB instance in a VPC.](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html#USER_VPC.InstanceInVPC)  
    _You should skip **The "Create a DB instance in the VPC" step** since we want the DB to be managed by CSB._
  1. [Create a CSB instance.](../reference/index.html.md.erb)
     _Remember to specify the following fields:_  
     `aws_vpc_id`, `rds_subnet_group`, `rds_vpc_security_group_ids`, `publicly_accessible`.
