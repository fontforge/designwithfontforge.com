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

The book and this site are licensed under the [Creative Commons Attribution-ShareAlike 3.0 Unported License](http://creativecommons.org/licenses/by-sa/3.0/).

## How This Site Is Made

This site is made with the [Jekyll](http://jekyllrb.com/docs/home/) content management system, and hosted on [GitHub pages](http://pages.github.com).

If you’re not familiar with GitHub, they have [excellent help pages](https://help.github.com).

#### Directory Layout

- `_layouts/*.html`: HTML template files
- `_includes/*.html`: snippets of HTML that are included in pages and templates
- `assets/`: CSS, JS and image files
- `_config.yml`: Configuration for Jekyll (ignore this file)
- `en-US/`: the site’s contents, in US English
- `en-US/images/precompressed/`: Directory of the original, pre-compressed content images

#### File Formats

Each page is in Markdown format, with a `.md` file extension. These files are converted into corresponding `.html` files by Jekyll when they start with these lines:

- published: if the page should not be published, set this to `false`
- layout: `bookpage` is the default
- weight: an integer value starting from 1 that affects the ordering of the page in the sidebar and homepage lists
- category: the category the page belongs in
- title: the page title used in the title tag and h1 of the page

Example:

```
    ---
    published: true
    layout: bookpage
    category: Workflow
    weight: 3
    title: Page Title
    ---
```

#### Weight list

Weight lists are used to help contributors determine and document the weight of all pages. Please follow the following rules:

1. Please update the according list if any chapter/page is added or removed.
2. If the new chapter is in between existing chapters, Just add a weight between existing weights.
3. If the new chapter is after any existing chapters, Add the weight number by 3.
4. If no more full numbers can be added between the existing weights, start using decimals.
5. Only edit the weight list for your chapter's language.

Example:

| Weight | Page                                       |
|--------|--------------------------------------------|
| 0      | Index                                      |
| 1      | Introduction                               |
| 3      | What Is a Font                             |


#### How to build the site

For Linux, ensure that ruby-dev is installed on your system: e.g. for Ubuntu 14.04:

```bash
sudo apt-get install ruby-dev
```    

First install Jekyll, with `gem`:

```bash
sudo gem install jekyll
```

To see the site as it will appear after processing by Jekyll and review your edits live in a browser layout, run:

```bash
jekyll serve --watch
# or
jekyll serve --livereload
```

Now browse [http://localhost:4000/](http://localhost:4000/).

#### How to compress images with Grunt

Put all the raw images inside `en-US/images/precompressed/`

Make sure npm is already installed on your computer, then install all the dependencies with:
    
```bash
npm install
```

Once the installations are done, you can go ahead to minify all the images with this Grunt command:

```bash
grunt
```

Wait for Grunt to notify you, and all the compressed images will be inside `en-US/images/`

### How to create ebooks

```bash
sudo apt-get install calibre ghostscript
cd ebook
npm install
./create_books.sh
```
