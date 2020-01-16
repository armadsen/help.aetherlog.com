## Overview

This README file contains information about the Aether help website ([help.aetherlog.com](https://help.aetherlog.com/)), which is the online help file for [Aether](http://www.aetherlog.com/), a ham radio logging application for OS X. It is open source so that others may contribute content, fix mistakes, or request answers to questions.

The site's content is written in [Markdown](https://daringfireball.net/projects/markdown/) and can be edited using a simple text editor.

## Building

The site is deployed using [mkdocs](http://www.mkdocs.org), which is a static site generator meant for building project documentation. In order to build help.aetherlog.com:

1. Install mkdocs by following the instructions [here](http://www.mkdocs.org/#installation). In short:

    `pip install mkdocs`
    
2. Install the Bootstrap/Bootswatch themes:

	`pip install mkdocs-bootswatch`

3. Clone the repository:

    `git clone https://github.com/armadsen/help.aetherlog.com.git`

4. Build the site using mkdocs:

    `mkdocs build`

5. Find the output in the `./site` directory.

You can also use mkdocs' `serve` command to see a live-reloading preview of the site while you make changes.

## Contributing

Contributions to help.aetherlog.com are most welcome. Whether you'd like to report or fix a mistake, add new content yourself, or simply ask a question, your input is valuable. If you'd just like to report a mistake or ask a question, please [open an issue](../../issues/new). If you would like to make a change yourself, fork this repo, make the change (see further instructions below for adding new pages), then submit a [pull request](https://help.github.com/articles/using-pull-requests/). See [CONTRIBUTING](CONTRIBUTING.md) for more information about contributing to the site.

## Adding a Page

help.aetherlog.com is a standard mkdocs site, so the process for adding content is straightforward. For detailed information, see mkdocs own [documentation](http://www.mkdocs.org/user-guide/writing-your-docs/).

1. Create a new file with the extension ".md" (for Markdown) inside the `docs` folder (or a subfolder).
2. Add the file to the pages configuation in the `mkdocs.yml` file. Make sure to add it to the appropriate category under `pages:`, and use a good title. The existing content in mkdocs.yml is a good example to follow.
3. Write the content for the page using [Markdown](https://daringfireball.net/projects/markdown/).

## Questions

If you have questions about this site, or Aether itself, please [open an issue](../../issues/new).
