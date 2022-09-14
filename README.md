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
| main       | v1.3. Staged at https://docs-staging.vmware.com/en/draft/Tanzu-Cloud-Service-Broker-for-AWS/1.3/csb-aws/GUID-index.html |
| 1.2        | v1.2. Staged at https://docs-staging.vmware.com/en/Tanzu-Cloud-Service-Broker-for-AWS/1.2/csb-aws/GUID-index.html |
| 1.1        | v1.1. Staged at https://docs-staging.vmware.com/en/Tanzu-Cloud-Service-Broker-for-AWS/1.1/csb-aws/GUID-index.html |
| 1.0        | v1.0. Staged at https://docs-staging.vmware.com/en/Tanzu-Cloud-Service-Broker-for-AWS/1.0/csb-aws/GUID-index.html |

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

### Releasing a New Minor Version

Because **main** is the latest and greatest documentation, cut a **x.x-live** branch for the version
that **main** was targeting during that time.

After this point, **main** is the target for the next version of the Cloud Service Broker for AWS
product.

## Other style stuff

Top tips:

+ Keep line lengths short, around 100 chars.
+ Start each sentence on its own line. Markdown only creates new paragraphs after a blank line.
+ UI elements are bolded and the widget type not mentioned.
For example, "Click on the `NEXT STEPS` button." is rewritten as "Click **NEXT STEPS**."

## Autogenerated Docs

If a doc file is autogenerated, any direct edits are overwritten at the next autogeneration event.
The files in these folders are autogenerated:

+ scst-store/cli_docs


## Troubleshooting Markdown

| Problem | List displays as a paragraph |
|---------|-----------|
| Symptom:| Bulleted or numbered lists look fine on GitHub but display as a single paragraph in HTML.|
| Solution: | Add a blank line after the stem sentence and before the first item in the list.|

| Problem | List numbering is broken: every item is `1.` |
|---------|-----------|
| Symptom:| Each numbered item in a list is a `1.` instead of `1.`, `2.`, `3.`, etc|
| Solution: | Try removing any blank newlines within each step.|

| Problem | Code boxes not showing |
|---------|-----------|
| Symptom:| VMware publishing system doesn't accept code tags after the three back ticks.|
| Solution: | Make sure you're not using `shell` or `bash` or `console` or `yaml` after back ticks.|

## Creating a Pull Request

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

### Prepare Markdown Files

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
1. Select the check box for your build again. If the check box is disabled, you must wait until your build has finished processing.
1. Click **Sign-Off For Release**.
1. Wait for your username to show up in the **Signed-Off By** column.
1. Select the check box for your build again.
1. Click **Deploy Selected to Prod**.

### Landing Page and Publications

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
