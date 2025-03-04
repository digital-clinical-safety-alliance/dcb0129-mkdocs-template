# Template DCB0129 Clinical Safety Management File



## Features

- **DCB0129 Documents** - Automatic generation of a skeletal set of clinical safety documents to be reviewed fully, and customised for the use-case.
- **Documentation Website** - Repo is with a ready-configured Material for MkDocs website to show your clinical safety documents openly.
- **GitHub Pages** - Automatic build and deploy of the MkDocs site as a GitHub Pages site (via GitHub Actions)
- **PDF Export** - Automatic generation of a PDF version of the complete site, for organisations who would prefer to have an 'offline' document.
- **Hazard Log** - GitHub Action to generate standard DCB0129-compatible Labels for Hazard Severity and Likelihood, as well as overall Risk level.

## Why?

We believe that creation of the DCB0129 Clinical Safety Management File using traditional methods (for example customising the NHS Digital template Word documents) is unnecessarily time-consuming and distracts Clinical Safety Officers from the **actual** task of building clinical safety into the development toolchain and working with their teams on improving the safety of their products.

Having used GitHub for managing clinical safety documentation in other projects, we have developed this Template Repository to speed up the initial process of creating a new GitHub repository and some clinical safety documentation to start from.

---

> ## **DISCLAIMER**

> **This documentation is offered as a free public service to other Clinical Safety Officers as-is, without warranty of any kind. It in no way replaces the need for a comprehensive and legal clinical safety team approach. All responsibility for all aspects of clinical safety compliance and legal compliance remains with the owners of the Healthcare IT project.**

---

## Usage

### Setup


### Initial generation of clinical safety management file

Create a repository on GitHub to house your new management file, as you will need this URL and the URL of the Hazard Log you want to use.



Enter your project-, team- and organisation-specific information in response to the command line prompts.

The data you enter will be used to populate values within the template documents, and the output will be in a subfolder named according to your _slugified_ project name plus `-clinical-safety-management-file`. So a project called 'Project Mayhem' will have a slug of `project-mayhem-clinical-safety-management-file`.

### Commit to version control


Follow the instructions in the newly-created repo for connecting to the GitHub remote from your local machine, which will be something like `git remote add origin <MYREPONAME>`

Push local changes to the remote
`git push -u origin main`

### View the site locally for development

Install Material for MkDocs if not already installed
`pip install mkdocs-material`

View the site with the command
`mkdocs serve`

> Note that `mkdocs serve` will FAIL unless you have **already pushed the site code to the GitHub repo at least once**, because the `git-committers` plugin included in the site configuration won't be able to access any commits in the repo. (The error will be something like `raise InvalidGitRepositoryError()`)

### Creating the standard palette of Hazard Log labels

Once the repo is pushed to GitHub, a GitHub Action will have been created which automates the process of removing unwanted Issue labels and replaces them all with the labels for Likelihood, Severity, and Risk Level

To make this happen is a one-time task in GitHub. Navigate to your GitHub repository, go to the Actions tab, and select 'create-hazard-log-labels' from the right sidebar. Over on the right of the page is a button labelled 'Run workflow', click this and the labels will be created. All other labels will be removed, but you can easily add any other custom labels you need later in the Labels UI.

### Enabling the built-in Material for MkDocs website

Go into GitHub's repository settings and enable GitHub Pages for your repository (This only works with public repos unless you have a paid plan). Enable GitHub Pages to build from the `gh-pages` branch of your repository.

You may notice (if you look at graphical representations of the Git branches in something like Git Graph on VS Code) that the `gh-pages` branch is completely unrelated to the other branches you may have - this is because the ['build-and-deploy' GitHub Action workflow]() force-pushes the built HTML site to that branch.

### Making Changes

You can edit any part of the generated documentation in a text editor. We recommend [Visual Studio Code](https://code.visualstudio.com/), which is a free, extensible, open source editor. 

### Online Markdown editing

If you are new to Markdown editing, you can use GitHub's interface itself to edit online, by clicking the 'pencil' edit icon in the top right corner of any source code page. There are also external tools like [Prose.io](http://prose.io/) and [StackEdit](https://stackedit.io/) which give you a nice interface for editing MarkDown online, and will sync the changes with GitHub for you.

### Reviewing and amending

You **MUST** review and amend **IN ENTIRETY** the generated clinical safety documentation according to the needs of your project, team, and organisation. The auto-generated documentation is only a starting point for you clinical safety documentation, it is designed to speed up, simplify, and improve your clinical safety work, but **it is not a replacement for a Clinical Safety Officer and an appropriate clinical safety process.**

- Remove any documents that you don't need.
- Review all the documents to ensure they read correctly and make sense.
- Add any documents or pages that are necessary to make your safety case complete.
- Tidy up the navigation so your site is neat and easy to use.

### Output into other formats

Some organisations or collaborators will be uncomfortable with the Markdown format used here, and may prefer to consume this documentation as a PDF or Word document.

When the website is pushed to GitHub, a PDF rendering of the entire site is created and saved to the `pdf/` folder in the `gh-pages` branch. This branch is the one which is deployed to GitHub Pages, so the button on the Download page in the documentation site will work.

Since the PDF render takes time (around 15 seconds for a small site, longer for a larger site) by default the PDF rendering is disabled when developing locally. If you need to enable the PDF render because you want to test the PDF locally, then you can enable it like this:

```console
export ENABLE_PDF_EXPORT=1;mkdocs serve
```

PDF rendering is enabled by default in the GitHub Action which builds the site on GitHub pages.

## Contributing

If you have suggestions, amendments, or improvements to contribute, these are most welcome. Probably the best way to start a conversation is to open an Issue on this repository. Pull requests will be considered as well, if they enhance the overall project.

## Roadmap for future development

- Support for Medical Device Registration Documentation in EU, UK, and NI.
- Support for Digital Technologies Assessment Criteria (DTAC).

## Acknowledgements

- This Template is derived from the Clinical Safety work from the RCPCH Digital Growth Charts project, the RCPCH Epilepsy12 Audit Platform project, and other RCPCH Incubator and Baw Medical Ltd projects, for which due acknowledgement is afforded.

## Authors

- **Dr Marcus Baw** [@pacharanero](https://github.com/pacharanero)
