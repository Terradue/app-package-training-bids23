# Mastering Earth Observation Application Packaging with CWL

This guide supports the BiDS23 "Mastering Earth Observation Application Packaging with CWL" tutorial event, where we will dive into the world of EO Application Packages and explore how to effectively package, share, and execute Earth observation workflows using the Common Workflow Language (CWL) standard.

This tutorial event is designed for developers, scientists, and Earth observation enthusiasts who want to enhance their skills in creating and sharing EO Application Packages. 

Whether you are new to CWL or already have some experience, this event will provide valuable insights and practical knowledge to boost your expertise.

During the event, you will learn:

* The fundamentals of EO Application Packages and their role in the Earth observation domain.
* How to leverage CWL to describe, package, and share workflows.
* Techniques for incorporating data, code, configuration files, and documentation into an EO Application Package.
* Best practices for creating portable and reproducible Earth observation workflows.
* Hands-on exercises to reinforce your understanding and gain practical experience.

This tutorial will guide you through step-by-step tutorials, demonstrating the process of creating EO Application Packages using CWL. 

The tutorial is structured in several parts:

``` mermaid
%%{init: { 'logLevel': 'debug', 'theme': 'forest' } }%%
timeline
title Mastering EO Application Packaging with CWL
Part 1 - Water bodies detection
    : Short introduction 
    : Application steps
Part 2 - Execution in Python environments
    : Create Python environment
    : Run Python script 
Part 3 - Package the Application 1/2
    : Create and test the containers
    : Create the CWL CommandLineTool
  : Run the CWL CommandLineTool with podman
Part 4 - Package the Application 2/2
    : CWL Workflow for Sentinel-2 Cloud Native processing
    : CWL Workflow for Landsat-9 processing (includes stage-in/out)
    : CWL Workflow of workflows 
Part 5 - Release the Application
    : Continuous Integration
    : Containers published in a container registry
    : Application Packages in a package registry
Part 6 - Execution Scenarios
    : Execution using a CWL runner (cwltool)
    : Execution on kubernetes using the calrissian CWL runner
Part 7 - FAIR Application Packages
    : Recommendations and Best Practices
```

The tooling used during each part is listed below:

``` mermaid
%%{init: { 'logLevel': 'debug', 'theme': 'forest' } }%%
timeline
title Tooling
Part 1 - Water bodies detection
    : N/A
Part 2 - Execution in Python environments
    : python venv
    : python 
Part 3 - Package the Application 1/2
    : podman
    : cwltool
Part 4 - Package the Application 2/2
    : cwltool
Part 5 - Release the Application
    : N/A
Part 6 - Execution Scenarios
    : cwltool
    : calrissian
Part 7 - FAIR Application Packages
    : N/A 
```