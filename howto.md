---
title: How to use this template
author: Wout Dillen
bibliography: references.bib
---

## About

This template helps students write a critical essay in markdown, with automatic reference formatting via a linked `.bib` file, while keeping track of their writing process through git's versioning system. The template uses a built-in workflow for visualising and publishing the essay with GitHub Pages, and/or developing the essay locally with pandoc. 

To take full advantage of the template, you will need a GitHub account,[^1] and to follow these steps: 

0. Install the suggested software;
1. Create and initiate your own copy of the template;
2. Start writing your essay;
3. Run the `Makefile` to visualise and check your progress locally;
4. `commit` your changes and `push` them to the remote; an
5. Publish your essay (at any point) with GitHub Pages.

The following will explain each of these steps in more detail. 

When you are done following the steps below, you will be ready to start writing your essay. Check out the [demo](index.html) (and the markdown file it is generated from) to learn more about how to format your essay in markdown, and be sure to check out our [Crash Course in Academic Writing (CCAW)](https://sslis.github.io/ccaw/index.html) for some tips to help you write the essay.

## Step 0: Requirements

### 0.1: Install Pandoc

To be able to run the `Makefile` (step 3) and develop your essay locally (recommended even when you publish your essay with GitHub Pages; see step 5), you will need to install `pandoc`. This is a (free, open source) commandline tool designed to transform files from one format into another – in our case: from `Markdown` into `HTML`. 

Pandoc works on most platforms, and in most cases installing the software is very straightforward. You should be able to find simple instructions for your operating system here: [https://pandoc.org/installing.html](https://pandoc.org/installing.html).

If you can't or are unwilling to install `pandoc` on your computer you can still use the template, but you will have to rely solely on GitHub Pages to visualise your essay, which is a somewhat less convenient workflow.

### 0.2: Install a text editor (e.g., VSC)

### 0.3: Install a GitHub development interface (e.g., GitHub Desktop)

## Step 1: Create and initiate your own copy of the template

[^1]: If you have no desire to publish your result online, you can also just download the repository, and work entirely locally by running the `Makefile` (step 3). In this case, you have no need of a GitHub Account. In addition, the repository can easily be incorporated into workflows that use other git hosting and management tools like [Gitea](https://about.gitea.com) or [GitLab](https://about.gitlab.com/) – that may or may not have opportunities to run similar applications to GitHub Pages.