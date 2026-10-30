---
title: How to use this template
author: Wout Dillen
bibliography: references.bib
---

## About

This template helps students write a critical essay in markdown, with automatic reference formatting via a linked `.bib` file, while keeping track of their writing process through git's versioning system.
The template uses a built-in workflow for visualising and publishing the essay with GitHub Pages, and/or developing the essay locally with pandoc. 

To take full advantage of the template, you will need a GitHub account,[^1] and to follow these steps: 

0. Install the suggested software;
1. Create your own copy of the template;
2. Start writing your essay;
3. Run the `Makefile` to visualise and check your progress locally;
4. `commit` your changes and `push` them to the remote; an
5. Publish your essay (at any point) with GitHub Pages.

The following will explain each of these steps in more detail. 

When you are done following the steps below, you will be ready to start writing your essay.
Check out the [demo](index.html) (and the markdown file it is generated from) to learn more about how to format your essay in markdown, and be sure to check out our [Crash Course in Academic Writing (CCAW)](https://sslis.github.io/ccaw/index.html) for some tips to help you write the essay.

## Step 0: Requirements

### 0.1: Install Pandoc

To be able to run the `Makefile` (step 3) and develop your essay locally (recommended even when you publish your essay with GitHub Pages; see step 5), you will need to install `pandoc`.
This is a (free, open source) commandline tool designed to transform files from one format into another – in our case: from `Markdown` into `HTML`. 

Pandoc works on most platforms, and in most cases installing the software is very straightforward. You should be able to find simple instructions for your operating system here: [https://pandoc.org/installing.html](https://pandoc.org/installing.html).

If you can't or are unwilling to install `pandoc` on your computer you can still use the template, but you will have to rely solely on GitHub Pages to visualise your essay, which is a somewhat less convenient workflow.

### 0.2: Install a text editor

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

### 0.3: Install a GitHub development interface (optional)

[GitHub Desktop](https://desktop.github.com/download/) can be a useful tool to keep track of the changes you are making across multiple files in your git-initiated repositories; especially when you have several repositories to keep track of on your local device.
It allows you to quickly switch repositories, inspect your latest changes as well as your longer versioning history, commit, push, and pull.
If you have taken my introduction to GitHub course, you may already have this application installed on your device.

Using GitHub Desktop is not a requirement to use this template, however.
If you are using Visual Studio Code to edit your essay, you can also activate similar functionalities straight from the editor.
And it is of course also always possible to run all git commands in your terminal.
In this tutorial, we will be using GitHub Desktop to download and initiate GitHub repositories, because it allows students to bypass having to install git and initiate repositories via the commandline.

## Step 1: Create your own copy of the template

### 1.1: Add the template repository to your GitHub Account

Visit [the re:write repository on GitHub](https://github.com/WoutDLN/rewrite).
Click on the green button that says `Use this template` in the top left.
In the drop-down menu, pick `Create a new repository` to start setting up a copy of the repository on your own account.
Choose a name for your repository (or keep the default), choose whether you want your repository to be public or private, and continue.
**Note**: the online visualisation of your essay with GitHub Pages will only work if you select 'public'.

### 1.2: Create a copy of your repository on your local machine

Once you have a copy of the template in your GitHub account, clone the repository onto your own device to start developing your essay locally.
You can easily do this by using GitHub Desktop, VSC, or do it straight from the command line. 

To do this using GitHub Desktop:

1. Open GitHub Desktop
2. In the top-left corner, click on the button that reads `Current Repository`
3. Click on the `Add` button, then choose `Clone repository...`
4. In the pop-up that allows you to add a repository, make sure that you are son the GitHub.com tab, and select the repository you just made from the list. This will typically be categorised under the heading **Your Repositories** with a name following the `[username]/[repository-name]` pattern.
5. Take note of the 'Local Path' underneath the selection menu, this tells you where the repository will be downloaded. Change the path if necessary.
6. Hit the blue `Clone` button to download the repository onto your local machine.

For a visual walkthrough, see [my video lecture on how to use GitHub](https://play.hb.se/media/0_mvgov641), specifically from minute 57 onwards.

To use the commandline instead, refer to [GitHub's documentation](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository).

## Step 2: Start writing your essay

### 2.1: Find the file to write your essay in

Open Visual Studio Code,  select `File > Open Folder...`, and navigate to the place where you downloaded your repository (see step 1.2[5]).
This will open the entire directory (including all its subfolders) in the 'Explorer' tab (the 'documents' icon in the top left of the VSC interface).
There, you will be able to select files to start editing, and see which files have been added or modified since your last commit (see step 4).

In the tree-structure with files and (sub)folders in the explorer view, you'll see one file called `essay.md`.
This file is used to generate the visualised essay (i.e., `index.html`).
The file `essay.md` currently contains a demo version that displays examples of the template's main Markdown and BibTeX affordances, like including images, code, links, and references.
If you would like to keep this file for reference purposes, make a copy.
If not, feel free to directly start editing `essay.md`. 

### 2.2: Update your essay's metadata

The `essay.md` file starts with a section written in [YAML](https://yaml.org) that contains the essay's metadata. By default, this section reads:

```
---
title: My Essay
author: Wout Dillen
bibliography: references.bib
---
```

Even if YAML is a data serialization format you are not yet familiar with, it designed to be easily readable and self-explanatory.
Change the metadata according to your needs, by replacing 'My Essay' with the title of your essay, and 'Wout Dillen' with your own name.
The bibliography field tells the template where to look for your references. 
You are free to change this to another file (name and path), but the easiest course of action is probably to just edit the `references.bib` file as you continue your writing process (see also 2.4).

### 2.3: Write your essay

Delete the text below the YAML block, and start writing your essay. 
You can use all the usual markdown shorthand codes to tell the template how to render your text, e.g. marking headings of various levels, using *italics*, links, images, etc.
The `essay.md` file includes a demo of most of the codes you'll need to write an essay. 
If you need more guidance, you can also have a look at the [markdown guide](https://www.markdownguide.org/basic-syntax/) for an introduction to basic markdown syntax, or use this [cheat sheet](https://www.markdownguide.org/cheat-sheet/) for a quick reference.

### 2.4: Add references and generate a bibliography

#### 2.4.1: Add a reference to `references.bib`

#### 2.4.2: Cite referenced works, and include them in the bibliography

[^1]: If you have no desire to publish your result online, you can also just download the repository, and work entirely locally by running the `Makefile` (step 3).
In this case, you have no need of a GitHub Account.
In addition, the repository can easily be incorporated into workflows that use other git hosting and management tools like [Gitea](https://about.gitea.com) or [GitLab](https://about.gitlab.com/) – that may or may not have opportunities to run similar applications to GitHub Pages.

[^2]: The BibLaTeX format (also saved with a `.bib` extension) should also work for formatting your references.