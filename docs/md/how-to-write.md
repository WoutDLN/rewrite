---
title: How to write your essay in markdown
author: Wout Dillen
bibliography: references.bib
---

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