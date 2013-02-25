[DesignWithFontforge.com](http://designwithfontforge.com)
=======================

This is a book project, about how to design new typefaces with FontForge.

This site is made with [Jeykll](https://github.com/mojombo/jekyll/wiki/Usage) and hosted on [GitHub pages](http://pages.github.com).

If you're not familiar with GitHub, they have [excellent help pages](https://help.github.com).

## License

The book and this site is licensed under the [Creative Commons Attribution-ShareAlike 3.0 Unported License](http://creativecommons.org/licenses/by-sa/3.0/).

## How To Contribute

If you wish to contribute to this website, you can

1. Report an issue for someone else to resolve, by clicking the 'Issues' button at the top of [this page](http://github.com/fontforge/designwithfontforge.com), in the main navigation bar.

2. Contribute a change directly, by forking it on GitHub and sending a pull request. (If that sounds unfamiliar, [learn how with GitHub's excellent interactive introduction]](https://help.github.com).

3. Discuss general topics on the [fontforge-devel email discussion list](http://fontforge.10959.n7.nabble.com/Developer-f3.html) 

#### Directory Layout

- `_layouts/*.html` html template files
- `_includes/*.html` snippets of HTML that are included in pages and templates
- `assets/` CSS, JS and image files
- `_config.yml` Configuration for Jeykll (ignore this file)
- `en-US/` The site's contents, in US English. 

#### File Formats

Each page is in MarkDown format, with a `.md` file extension. These files are converted into corresponding .html files by Jekyll when they start with these lines:

- published: If the page should not be published, set this to `false`
- layout: `bookpage` is the default
- weight: An integer value from 1 to 100 that effects the ordering of the page in the sidebar and homepage lists
- category: the category the page belongs in
- title: The page title used in the title tag and h1 of the page

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

First install Jekyll, with `gem`:

    sudo gem install jekyll

To see the site as it will appear after processing by Jekyll and review your edits live in a browser layout, run:

    jekyll --server

Now browse [http://localhost:4000/](http://localhost:4000/)
