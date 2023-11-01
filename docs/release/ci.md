
## Application Package Software Configuration Management

The SCM has the task of tracking and controlling changes in the software as a part of the larger cross-disciplinary field of configuration management. 

SCM practices include revision control and the establishment of baselines.

The Application Package code is hosted on a repository publicly accessible (Github, Bitbucket, a GitLab instance, an institutional software forge, etc.) using one of the version control systems supported by (Subversion, Mercurial and Git)

The Application Package code include, at the top level of the source code tree, the following files:

* README containing a description of the software (name, purpose, pointers to website, documentation, development platform, contact, and support information, …)
* AUTHORS, a list of all the persons to be credited for the software.
* LICENSE, the project license terms. For Open Source Licenses, the standard SPDX license names are used. For large software projects and developers, the REUSE (https://reuse.software/) process and tools can be an option to look at.
* codemeta.json, a linked data metadata file that helps index the source code in the Software Heritage archive and provides an easy way to link to other related research outputs.

The code meta project motivation (https://codemeta.github.io/) is reported below:

**Research relies heavily on scientific software, and a large and growing fraction of researchers are engaged in developing software as part of their own research (Hannay et al 2009). Despite this, infrastructure to support the preservation, discovery, reuse, and attribution of software lags substantially behind that of other research products such as journal articles and research data. This lag is driven not so much by a lack of technology as it is by a lack of unity: existing mechanisms to archive, document, index, share, discover, and cite software contributions are heterogeneous among both disciplines and archives and rarely meet best practices (Howison 2015). Fortunately, a rapidly growing movement to improve preservation, discovery, reuse, and attribution of academic software is now underway: a recent NIH report; conferences and working groups of FORCE11, WSSSPE & Software Sustainability Institute; and the rising adoption of repositories like GitHub, Zenodo, figshare & DataONE by academic software developers. Now is the time to improve how these resources can communicate to each other.**

CodeMeta developed the translations from the different vocabularies. The CodeMeta vocabulary is an extension of the SoftwareApplication and SoftwareSourceCode classes found in the vocabulary of the Schema.org initiative [schema]. Metadata information conformant to the CodeMeta vocabulary can be represented in JSON format, named codemeta.json, like the example below with the information for Water Bodies Detection application.

```json linenums="1" title="codemeta.json"
--8<--
codemeta.json
--8<--
```

## Application Package Continuous Integration

A typical Continuous Integration scenario for an Application Package includes the release of the CWL document(s) and publishing the container images to a container registry 