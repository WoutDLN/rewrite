---
title: How to use this template
author: Wout Dillen
bibliography: references.bib
---

## About

This template helps students write a critical essay in markdown, with automatic reference formatting via a linked `.bib` file, while keeping track of their writing process through git's versioning system.
The template uses a built-in workflow for visualising and publishing the essay with GitHub Pages, and/or developing the essay locally with pandoc. 

## Quickstart

To get started with this template, follow these quick steps. More detailed instructions for each of the steps are linked below. This guide assumes that you will want to take advantage of both the template's local and online workflows.

1. Install [the requirements](requirements.html)
2. Find the template repository via [https://github.com/WoutDLN/rewrite](https://github.com/WoutDLN/rewrite)
3. Add the template to your GitHub account via `Use this template`
4. Clone your copy of the template to your local machine using your preferred method (e.g., via GitHub Desktop or the command line)
5. Start writing your essay in `essay.md`
6. Add any references you need in `references.bib`
7. Check your progress locally by running `make preview` and opening `index.html` in the browser
8. Commit changes to track your progress
9. Push changes to your remote to deploy your website and publish your essay

Check out the [demo](index.html) (and the markdown file it is generated from) to learn more about how to format your essay in markdown, and be sure to check out our [Crash Course in Academic Writing (CCAW)](https://sslis.github.io/ccaw/index.html) for some tips to help you write the essay.


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

testing testing

#### 2.4.1: Add a reference to `references.bib`

#### 2.4.2: Cite referenced works, and include them in the bibliography


[^2]: The BibLaTeX format (also saved with a `.bib` extension) should also work for formatting your references.