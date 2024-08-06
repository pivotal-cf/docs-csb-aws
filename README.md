# docs-csb-aws

## Branches

The master branch is the tree-trunk, so **always** make changes you want carried forward in this branch. This includes:

* Unreleased features
* Doc bug fixes
* Doc reorganization or enhancement

Then, if necessary, immediately cherry-pick/copy any changes that you want to push immediately to production into the appropriate branches listed below:

| Branch Name| Staging | Production |
|------------|---------|------------|
| main       | [v1.13 staging](https://docs-staging.vmware.com/en/draft/Tanzu-Cloud-Service-Broker-for-AWS/1.13/csb-aws/GUID-index.html) | N/A |
| 1.12       | [v1.12 staging](https://docs-staging.vmware.com/en/Tanzu-Cloud-Service-Broker-for-AWS/1.12/csb-aws/GUID-index.html) | [v1.12 prod](https://docs.vmware.com/en/Tanzu-Cloud-Service-Broker-for-AWS/1.12/csb-aws/GUID-index.html) |
| 1.11       | [v1.11 staging](https://docs-staging.vmware.com/en/Tanzu-Cloud-Service-Broker-for-AWS/1.11/csb-aws/GUID-index.html) | [v1.11 prod](https://docs.vmware.com/en/Tanzu-Cloud-Service-Broker-for-AWS/1.11/csb-aws/GUID-index.html) |
| 1.10       | [v1.10 staging](https://docs-staging.vmware.com/en/Tanzu-Cloud-Service-Broker-for-AWS/1.10/csb-aws/GUID-index.html) | [v1.10 prod](https://docs.vmware.com/en/Tanzu-Cloud-Service-Broker-for-AWS/1.10/csb-aws/GUID-index.html) |
| 1.9       | [v1.9 staging](https://docs-staging.vmware.com/en/Tanzu-Cloud-Service-Broker-for-AWS/1.9/csb-aws/GUID-index.html) | [v1.9 prod](https://docs.vmware.com/en/Tanzu-Cloud-Service-Broker-for-AWS/1.9/csb-aws/GUID-index.html) |
| 1.8        | [v1.8 staging](https://docs-staging.vmware.com/en/Tanzu-Cloud-Service-Broker-for-AWS/1.8/csb-aws/GUID-index.html) | [v1.8 prod](https://docs.vmware.com/en/Tanzu-Cloud-Service-Broker-for-AWS/1.8/csb-aws/GUID-index.html) |
| 1.7        | [v1.7 staging](https://docs-staging.vmware.com/en/Tanzu-Cloud-Service-Broker-for-AWS/1.7/csb-aws/GUID-index.html) | [v1.7 prod](https://docs.vmware.com/en/Tanzu-Cloud-Service-Broker-for-AWS/1.7/csb-aws/GUID-index.html) |
| 1.6        | [v1.6 staging](https://docs-staging.vmware.com/en/Tanzu-Cloud-Service-Broker-for-AWS/1.6/csb-aws/GUID-index.html) | [v1.6 prod](https://docs.vmware.com/en/Tanzu-Cloud-Service-Broker-for-AWS/1.6/csb-aws/GUID-index.html) |
| 1.5        | [v1.5 staging](https://docs-staging.vmware.com/en/Tanzu-Cloud-Service-Broker-for-AWS/1.5/csb-aws/GUID-index.html) | [v1.5 prod](https://docs.vmware.com/en/Tanzu-Cloud-Service-Broker-for-AWS/1.5/csb-aws/GUID-index.html) |
| 1.4        | [v1.4 staging](https://docs-staging.vmware.com/en/Tanzu-Cloud-Service-Broker-for-AWS/1.4/csb-aws/GUID-index.html) | [v1.4 prod](https://docs.vmware.com/en/Tanzu-Cloud-Service-Broker-for-AWS/1.4/csb-aws/GUID-index.html) |
| 1.3        | [v1.3 staging](https://docs-staging.vmware.com/en/Tanzu-Cloud-Service-Broker-for-AWS/1.3/csb-aws/GUID-index.html) | [v1.3 prod](https://docs.vmware.com/en/Tanzu-Cloud-Service-Broker-for-AWS/1.3/csb-aws/GUID-index.html) |
| 1.2        | [v1.2 staging](https://docs-staging.vmware.com/en/Tanzu-Cloud-Service-Broker-for-AWS/1.2/csb-aws/GUID-index.html) | [v1.2 prod](https://docs.vmware.com/en/Tanzu-Cloud-Service-Broker-for-AWS/1.2/csb-aws/GUID-index.html) |
| 1.1        | [v1.1 staging](https://docs-staging.vmware.com/en/Tanzu-Cloud-Service-Broker-for-AWS/1.1/csb-aws/GUID-index.html) | [v1.1 prod](https://docs.vmware.com/en/Tanzu-Cloud-Service-Broker-for-AWS/1.1/csb-aws/GUID-index.html) |
| 1.0        | [v1.0 staging](https://docs-staging.vmware.com/en/Tanzu-Cloud-Service-Broker-for-AWS/1.0/csb-aws/GUID-index.html) | [v1.0 prod](https://docs.vmware.com/en/Tanzu-Cloud-Service-Broker-for-AWS/1.0/csb-aws/GUID-index.html) |

### Contributing to documentation

If there is some documentation to add for an unreleased patch version of Cloud Service Broker then create a branch off of the **live** branch
you intend to modify and create a pull request against that branch.
After the version that change is targeting is released, the pull request can be merged and will be live
the next time a documentation deployment occurs.

If the documentation is meant to be target several released versions,
then you will need to:
+ create a pull request for each individual minor version
+ or ask the technical writer to cherry-pick to particular branches/versions.

### Partials

Cross-product partials (if any) for Cloud Service Broker are single sourced from the [Docs Partials](https://github.com/pivotal-cf/docs-partials) repository.

### Releasing a new minor version

Because **master** is the latest and greatest documentation, the process would be to cut a **x.x-live** branch
for the version that **master** was targeting during that time.
A corresponding section in **config.yml** in the [docs-book-pcfservices][docs-book-pcfservices] repository would also need to be made.

After this point, **main** is the target for the next version of the Cloud Service Broker for AWS
product.

## Other style stuff

Top tips:

+ Keep line lengths short, around 100 chars.
+ Start each sentence on its own line. Markdown only creates new paragraphs after a blank line.
+ UI elements are bolded and the widget type not mentioned.
For example, "Click on the `NEXT STEPS` button." is rewritten as "Click **NEXT STEPS**."

## Autogenerated docs

If a doc file is autogenerated, any direct edits are overwritten at the next autogeneration event.
The files in these folders are autogenerated:

+ scst-store/cli_docs


## Style Guide

This is a word list for terminology and word usage specific to the Cloud Service Broker for AWS for docs.

| Problem | List numbering is broken: every item is `1.` |
|---------|-----------|
| Symptom:| Each numbered item in a list is a `1.` instead of `1.`, `2.`, `3.`, etc|
| Solution: | Try removing any blank newlines within each step.|

## Creating a pull request

For instructions on how to create a pull request on a branch and instructions on how to create a
pull request using a fork, see
[Creating a PR](https://docs-wiki.sc2-04-pcf1-apps.oc.vmware.com/wiki/external/create-pr.html)
in the documentation team wiki.

## Publishing Docs

This section describes how writers publish documentation.

There are two major publishing tools:

- [DocWorks](https://docworks.vmware.com/) is the main tool writers use for managing the documentation.
- [Docs Dashboard](https://docsdash.vmware.com/) is a deployment UI that manages the promotion of docs
from staging to pre-prod to production.

### Prepare Markdown files

- Markdown files are maintained in this repo.
- Create a link for each page in [toc.md](toc.md). This generates the table of contents.
- Store images in an `images` directory at the same level. Use relative links for images within topics.

### Publish to the staging area

1. Go to the [Markdown Projects area of DocWorks](https://docworks.vmware.com/md2docs/projects/all).
1. Locate the Markdown Project for this product.
1. Each repo branch has its own version within the project. Select the version for the repo branch that you want to publish.
1. Click **PUBLISH**.
1. A blue bar appears. Wait for the bar to turn green.
1. Click on the bar to open the Build Details pop-up. Click on the Docs Dash link to visit the staged documentation.

### Promote your staged build to production

1. Go to the [Stage deployment area of the Docs Dashboard](https://docsdash.vmware.com/deployment-stage).   
1. Check the **PRODUCT** and **DEPLOYMENT DATE** columns to find your build.
1. Click the check box next to your build.
1. Click **Deploy Selected to Pre-Prod** and wait for the pop-up to turn green.
1. Go to the [Pre-prod deployment area of the Docs Dashboard](https://docsdash.vmware.com/deployment-pre-prod).
1. Select the check box for your build again. If the check box is not selected, you must wait until your build has finished processing.
1. Click **Sign-Off For Release**.
1. Wait for your username to show up in the **Signed-Off By** column.
1. Select the check box for your build again.
1. Click **Deploy Selected to Prod**.

### Landing page and publications

General information about landing pages:

- The landing page is a container for all the "publications" for a product.
- Typically there will be a new docs publication for each minor release but not each point release.
This version number becomes part of the URL.
- Some products, such as, [Tanzu Kubernetes Grid](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/index.html) publish separate release notes publications for each point release.
- For comparison see https://docs.vmware.com/en/VMware-Tanzu-Application-Catalog/index.html

## Historic Bookbinder and Runway information

Content used to be published with Bookbinder and Runway. This is no longer true.
The book repository associated with this content was
[pivotal-cf/docs-book-csb-aws](https://github.com/pivotal-cf/docs-book-csb-aws).
