# Cookiecutter Clinical Safety Management File 

Powered by Powered by [Cookiecutter](https://github.com/cookiecutter), Cookiecutter Clinical Safety Management File automates the generation of a skeleton outline Clinical Safety Management File, pre-populated with project-, team-, and organisation-specific details.

## Why?

We believe that creation of the Clinical Safety Management File using traditional methods (for example customising the NHS Digital template Word documents) is unnecessarily time-consuming and distracts Clinical Safety Officers from the actual task of building clinical safety into the development toolchain.

Having used GitHub for managing clinical safety documentation in other projects, we have developed this Cookiecutter to speed up the initial process of creating a new GitHub repository and some clinical safety documentation to start from.

-----
## DISCLAIMER

This documentation is offered as a service to other Clinical Safety Officers **without warranty of any kind**. It in no way replaces the need for a comprehensive and legal clinical safety team approach. All responsibility for all aspects of clinical safety compliance and legal compliance remains with the owners of the Healthcare IT project.

-----
## Usage

### Setup 
Install Cookiecutter and any prerequisites such as Python

### Initial generation of clinical safety management file

Run the Cookiecutter
```shell
cookiecutter gh:bawmedical/cookiecutter-dcb0129
```

Enter your project-, team- and organisation-specific information in response to the command line prompts.

The data you enter will be used to populate values within the template documents, and the output will be in a subfolder named according to your slugified project name

### Commit to version control

### Making Changes

You can edit any part of the generated documentation is a text editor. We recommend Visual Studio Code, which is a free, extensible, open source editor. Global 'find and replace' is the easiest way to change any of the global variables you set during the initial Cookiecutter run.

### Reviewing and amending

You **MUST** review and amend **IN ENTIRETY** the generated clinical safety documentation according to the needs of your project, team, and organisation. The auto-generated documentation is only a starting point for you clinical safety documentation, it is designed to speed up, simplify, and improve your clinical safety work, but is not a replacement for a Clinical Safety Officer and an appropriate clinical safety process.


### Output into other formats

Some organisations or collaborators will be uncomfortable with the Markdown format used here, and may prefer to consume this documentation as a PDF or Word document.

### Creating a documentation website from your Markdown

A number of web documentation frameworks are available which can ingest Markdown and output a static website. One of these Material for MkDocs

> If you are using Material for MkDocs in a production site for a commercial product, please consider joining their [Insiders programme](https://squidfunk.github.io/mkdocs-material/insiders/) which supports the project financially and gets you some very cool additional features ahead of everyone else.

## Contributing

## Roadmap for future development

* Automatic GitHub Action generation of PDF and Word version of the CSMF, triggered by changes to the repository.
* Automatic generation of the Hazard Log repository, with labels for risk severity and likelihood.
* Support for Medical Device Registration Documentation in EU, UK, and NI.
* Support for Digital Technologies Assessment Criteria (DTAC).


## Acknowledgements

* This Cookiecutter is derived from the Clinical Safety work from the RCPCH Digital Growth Charts project, the RCPCH Epilepsy12 Audit Platform project, and other projects, for which due acknowledgement is afforded.

