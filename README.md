# docs-csb-aws

## Branches in this Content Repo

The main branch is the tree trunk, so **always** make changes you want carried forward in this branch.
This includes:

* Unreleased features
* Doc error fixes
* Doc reorganization or enhancement

Then, if necessary, immediately cherry-pick/copy any changes that you want to push immediately to
production into the appropriate branches listed below:

| Branch Name| Use for… |
|------------| ---------|
| main       | v1.2. Staged at https://docs-staging.vmware.com/en/Cloud-Service-Broker-for-AWS/1.2/cloud-service-broker-aws/GUID-index.html |
| 1.1        | v1.1. Staged at https://docs-staging.vmware.com/en/Cloud-Service-Broker-for-AWS/1.1/cloud-service-broker-aws/GUID-index.html |

## Book Repo

The book repository associated with this content is [pivotal-cf/docs-book-csb-aws](https://github.com/pivotal-cf/docs-book-csb-aws).

### Contributing Documentation

If there is some documentation to add for an unreleased patch version of Cloud Service Broker then 
create a branch off of the **live** branch you intend to edit and create a pull request against
that branch.
After the version that change is targeting is released, a writer merges the pull request, and the
change goes live the next time a documentation deployment occurs.

If the documentation is meant to target several released versions, ask the technical writer to
cherry-pick to particular branches/versions.
If this isn't practical because the content differs too much between versions, create a separate pull
request for each minor version.

### Partials

Cross-product partials (if any) for Cloud Service Broker are single sourced from the
[Docs Partials](https://github.com/pivotal-cf/docs-partials) repository.

### Releasing a New Minor Version

Because **main** is the latest and greatest documentation, cut a **x.x-live** branch for the version
that **main** was targeting during that time.

After this point, **main** is the target for the next version of the Cloud Service Broker for AWS
product.

## Historic Bookbinder Content: Delete After Bookbinder is Shut Down

### Staging Environment

When a commit is made into any of the above branches, [this concourse build][docs-staging-deploy]
deploys the documentation.
All the supported versions are accessible on the [staging website][docs-staging].

[docs-staging]:        http://docs-pcf-staging.cfapps.io/csb-aws/


### Making Your Documentation Changes Live

Click the **deploy** button in the pipeline! Living the dream :-D
