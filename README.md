[DesignWithFontforge.com](http://designwithfontforge.com)
=======================

This is a book project, about how to design new typefaces with FontForge.

This site is made with [Jeykll](https://github.com/mojombo/jekyll/wiki/Usage) and hosted on [GitHub pages](http://pages.github.com).

If you're not familiar with GitHub, they have [excellent help pages](https://help.github.com).

## License

The book and this site is licensed under the [Creative Commons Attribution-ShareAlike 3.0 Unported License](http://creativecommons.org/licenses/by-sa/3.0/).

## Contributing

If you wish to contribute to this website, you can

* create issues (at the top of [this page](//github.com/fontforge/designwithfontforge.com), in the main navigation bar) to request or suggest changes
* join the [fontforge-devel email discussion list](//fontforge.10959.n7.nabble.com/Developer-f3.html) to discuss general topics, and 
* contribute directly by [forking it on GitHub](https://help.github.com), pushing your change to a named branch, then sending a pull request

Please do ask for commit access, so you can edit files live, directly from the GitHub website:

https://github.com/fontforge/designwithfontforge.com/blob/gh-pages/README.md

You can also use the prose.io site to edit pages. For example, to edit this page, simply visit:

http://prose.io/#fontforge/designwithfontforge.com/edit/gh-pages/README.md

Directory Layout
------------------

- `_layouts/*.html` html template files

- `_includes/*.html` snippets of HTML that are included in pages and templates

- `assets/` CSS, JS and image files

- `_config.yml` Configuration for Jeykll (ignore this file)

- `en-US/` The site's contents, in US English. 

File Formats
---------------

Each page is in MarkDown format, with a `.md` file extension. These files are converted into corresponding .html files by Jekyll when they start with these lines:

```
    ---
    published: true
    layout: bookpage
    title: Page Title
    ---
```

How to build the site
-------------------

First install Jekyll, with `gem`:

    sudo gem install jekyll;

To see the site as it will appear after processing by Jekyll and review your edits live in a browser layout, run:

    jekyll --server

Now browse [http://localhost:4000/](http://localhost:4000/)
