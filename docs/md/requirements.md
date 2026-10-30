---
title: Requirements
author: Wout Dillen
bibliography: references.bib
---

At the very least, to use this template you will need to install pandoc (for offline work) **or** to have a GitHub account (for online work). To take full advantage of the template (by working locally and deploying the result via GitHub Pages), you will need both.[^1]


## Pandoc

To be able to run the `Makefile` (step 3) and develop your essay locally (recommended even when you publish your essay with GitHub Pages; see step 5), you will need to install `pandoc`.
This is a (free, open source) commandline tool designed to transform files from one format into another – in our case: from `Markdown` into `HTML`. 

Pandoc works on most platforms, and in most cases installing the software is very straightforward. You should be able to find simple instructions for your operating system here: [https://pandoc.org/installing.html](https://pandoc.org/installing.html).

If you can't or are unwilling to install `pandoc` on your computer you can still use the template, but you will have to rely solely on GitHub Pages to visualise your essay, which is a somewhat less convenient workflow.

## Install a text editor

To use this template, you will need to write your essay in markdown (`.md`), and add your references in BibTeX[^2] (`.bib`).
To write and edit files in these plain text formats, you will need a text editor.
There are many different free and open source (as well as proprietary) available on all platforms, so just pick the one you're most comfortable with.
In this walk through, we will be using Visual Studio Code for demonstration purposes.
Other text editors usually work in a similar way.

While it is made by Microsoft, [Visual Studio Code](https://code.visualstudio.com), is a free, open source text editor that is available on all major platforms.
The software comes with some extension-aware syntax highlighting out of the box, and allows you to open a terminal right in the editor, which comes in handy when you are developing your essay locally and frequently running the `Makefile` to update its visualisation in the browser (step 3).
It also comes with GitHub integration, so you can even check your version history and evaluate recent repository changes, commit, pull, and push – all from the text editor, without installing a dedicated GitHub development interface like GitHub Desktop (see step 0.3). 

If you are comfortable with the commandline, an even better solution would be to use [VSCodium](https://vscodium.com) instead.
This text editor is based on the source code of Visual Studio Code, looks the same, and has the same functionalities.
Unlike the Visual Studio Code download file, VSCodium is also licensed under an open MIT license, and has disabled telemetry (the automatic collection of usage for diagnostic purposes etc.).

## Install a GitHub development interface (optional)

[GitHub Desktop](https://desktop.github.com/download/) can be a useful tool to keep track of the changes you are making across multiple files in your git-initiated repositories; especially when you have several repositories to keep track of on your local device.
It allows you to quickly switch repositories, inspect your latest changes as well as your longer versioning history, commit, push, and pull.
If you have taken my introduction to GitHub course, you may already have this application installed on your device.

Using GitHub Desktop is not a requirement to use this template, however.
If you are using Visual Studio Code to edit your essay, you can also activate similar functionalities straight from the editor.
And it is of course also always possible to run all git commands in your terminal.
In this tutorial, we will be using GitHub Desktop to download and initiate GitHub repositories, because it allows students to bypass having to install git and initiate repositories via the commandline.

[^1]: If you have no desire to publish your result online, you can also just download the repository, and work entirely locally by running the `Makefile` (step 3).
In this case, you have no need of a GitHub Account.
In addition, the repository can easily be incorporated into workflows that use other git hosting and management tools like [Gitea](https://about.gitea.com) or [GitLab](https://about.gitlab.com/) – that may or may not have opportunities to run similar applications to GitHub Pages.