<!---
See [gh-branch](https://github.com/fontforge/designwithfontforge.com/tree/gh-pages/) for project files.
-->

[DesignWithFontforge.com](http://designwithfontforge.com)
=======================

This is a book project, about how to design new typefaces with FontForge.

## How To Contribute

If you wish to contribute to this website, you are very welcome to! Here are a few ways you can do so:

1. Report an issue for someone else to resolve, by clicking the ‘Issues’ button at the top of [this page](http://github.com/fontforge/designwithfontforge.com), in the main navigation bar.

2. Contribute a change directly, by forking it on GitHub and editing the plain text files, then send a pull request. (If that sounds unfamiliar, [learn how with GitHub’s excellent interactive introduction](https://help.github.com)).

3. Discuss general topics on the [fontforge-devel email discussion list](http://fontforge.10959.n7.nabble.com/Developer-f3.html) 

## License

The book and this site is licensed under the [Creative Commons Attribution-ShareAlike 3.0 Unported License](http://creativecommons.org/licenses/by-sa/3.0/).

## How This Site Is Made

This site is made with the [Jekyll](http://jekyllrb.com/docs/home/) content management system, and hosted on [GitHub pages](http://pages.github.com).

If you’re not familiar with GitHub, they have [excellent help pages](https://help.github.com).

#### Directory Layout

- `_layouts/*.html`: HTML template files
- `_includes/*.html`: snippets of HTML that are included in pages and templates
- `assets/`: CSS, JS and image files
- `_config.yml`: Configuration for Jekyll (ignore this file)
- `en-US/`: the site’s contents, in US English

#### File Formats

Each page is in Markdown format, with a `.md` file extension. These files are converted into corresponding `.html` files by Jekyll when they start with these lines:

- published: if the page should not be published, set this to `false`
- layout: `bookpage` is the default
- weight: an integer value from 1 to 100 that effects the ordering of the page in the sidebar and homepage lists
- category: the category the page belongs in
- title: the page title used in the title tag and h1 of the page

Example:

```
    ---
    published: true
    layout: bookpage
    weight: 60
    category: Workflow
    title: Page Title
    ---
```

#### How to build the site

For Linux, ensure that ruby-dev is installed on your system: e.g. for Ubuntu 14.04:
    
    sudo apt-get install ruby-dev

First install Jekyll, with `gem`:

    sudo gem install jekyll

To see the site as it will appear after processing by Jekyll and review your edits live in a browser layout, run:

    jekyll serve --watch

Now browse [http://localhost:4000/](http://localhost:4000/).
