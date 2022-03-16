# Contributing to c2pa.org

c2pa.org uses [Hugo][hugo], a static site generator, a [custom theme][c2pa_theme], and is deployed via GitHub pages.

## Building the site locally

Please build the site locally if you are adding new content pages, changing layouts, adding images, or making other substantive changes.
For minor changes to existing pages such as typo fixes, grammar, or refreshing content, you can use the GitHub UI.

### Requirements

- [Docker][docker] - download and install docker for your operating system. The docker container holds your deploy environment, webserver, and other software you'll need without requiring you to download it all to your local computer.
- A terminal, text editor, and browser.

With these items installed and running, you are ready to build the site:

1. [Clone this repository to your machine][clone] if you haven't already done so.
1. Launch the Docker application - you don't need to do anything other than start it.
1. In your terminal, change directories into the repo directory, `/c2pa-org.github.io`
1. If this is your first time running the site locally, you will also need to get the theme files. In your terminal, execute `git submodule init`
1. Run the build script with `./hugo-build.sh`
1. Run the server script with `./hugo-serve.sh`
1. In your browser, navigate to `http://localhost:1313/` to see the site.
1. Any changes you make will be automatically updated in the browser.
1. Commit changes to a separate branch (not main/master) and file a Pull Request when you are ready for review.

## Editing the site

## Content updates

Most changes to the site will be content-related. All content is in the `/content/en` directory and is captured in markdown. You do not need to edit html files to add or edit copy on the website.

For example, to make a change to the about page (c2pa.org/about/about), edit the `about.md` file under `/content/en/about/`. To edit the "about summary", which can be seen at c2pa.org/about under the 'About' heading, you will edit the `summary:` key in the frontmatter of the `about.md` file under `/content/en/about/`. All content sections follow this pattern.

You can create a new content page by creating a new markdown file in the appropriate directory. For example, to add a new post, create a new markdown file under the post directory. In the frontmatter, include values for the following keys: `date:` `description:` `title:` and `summary:`. Use markdown to style your post below the frontmatter. _Note that your file name will become the url path: my-awesome-post.md will be located at c2pa.org/post/my-awesome-post_

Changes to content on the homepage, c2pa.org, are made by editing the `/content/en/_index.md` file. You should not need to edit the files in the `/docs` folder.

### Membership/logo updates

To add/remove members, you'll have to do two things:

1. Put a square SVG of their logo in `static/images/logos/<tier>`. This should optimally be sized in relation to the other
   logos (reference the others for padding, etc.) so that it appears consistent.
2. Update the `[params.members]` table in [`config.toml`](config.toml) by adding a map with the `name`, path (`img`), and
   URL (`href`) of the new member.

Adding a steering committee member to the homepage hero section is a bit more involved due to sizing and adjusting responsive layouts. Please open up an issue if you wish to update this section of the site.

### Menu updates

You can add/edit global nav options in the `[menu]` table in [`config.toml`](config.toml). This configuration is based
on [Hugo's menu system][hugo_menu].

### Updating the theme

To update the theme, please view the instructions in the [custom theme README][c2pa_theme].

[hugo]: https://gohugo.io/
[hugo_menu]: https://gohugo.io/content-management/menus/
[c2pa_theme]: themes/hugo-theme-c2pa
[docker]: https://www.docker.com/
[clone]: https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository
