[designwithfontforge.com](http://designwithfontforge.com)
=======================

This is the 'Design With FontForge' book project, about how to design new
typefaces with FontForge.

This is a Jeykll site hosted on GitHub pages.

To contribute, please create issues, join the fontforge-devel list to discuss
general topics, and make pull requests with your improvements. Please don't
hesitate to ask for direct commit access.

You can edit this file directly on the GitHub website:

https://github.com/fontforge/designwithfontforge.com/blob/gh-pages/README.md

You can also use the prose.io site to edit pages. For example, to edit this
page, simply visit:

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

Each page is in MarkDown format, with a `.md` file extension. These 
files are converted into corresponding .html files by Jekyll when 
they start with these lines:

```
    ---
    published: true
    layout: bookpage
    title: Page Title
    ---
```

How to build the site
-------------------

This site uses [Jeykll](https://github.com/mojombo/jekyll/wiki/Usage)

You can install Jekyll with `gem`:

    sudo gem install jekyll;

To see the site as it will appear on fontforge.github.com after processing by
Jekyll and review your edits in a browser layout, live, run:

    jekyll --server

Now browse [http://localhost:4000/](http://localhost:4000/)