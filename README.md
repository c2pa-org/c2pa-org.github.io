# Contributing to c2pa.org

c2pa.org uses Hugo, a static site generator, Ananke, a theme for Hugo sites, and is deployed via GitHub pages.

## Building the site locally
 
Please build the site locally if you are adding new content pages, changing layouts, adding images, or making other substantive changes.
For minor changes to existing pages such as typo fixes, grammar, or refreshing content, you can use the GitHub UI.

Requirements:
* Docker - download and install docker for your operating system. The docker container holds your deploy environment, webserver, and other software you'll need without requiring you to download it all to your local computer.
* A terminal, text editor, and browser.

With these items installed and running, you are ready to build the site:

1. [Clone this repository to your machine]() if you haven't already done so. 
1. Launch the Docker application - you don't need to do anything other than start it.
1. In your terminal, change directories into the repo directory, `/c2pa-org.github.io`
1. If this is your first time running the site locally, you will also need to get the theme files. In your terminal, execute `git submodule init`
1. Run the build script with `./hugo-build.sh`
1. Run the server script with `./hugo-serve.sh`
1. In your browser, navigate to `localhost://1313` to see the site.
1. Any changes you make will be automatically updated in the browser.
1. Commit changes to a separate branch (not main/master) and file a Pull Request when you are ready for review.

## Editing the site

Most changes to the site will be content-related. All content is in the `/content` directory and is captured in markdown. You do not need to edit html files to add or edit copy on the website.

For example, to make a change to the about page (c2pa.org/about/about), edit the `about.md` file under `/content/about/`. To edit the "about summary", which can be seen at c2pa.org/about under the 'About' heading, you will edit the `summary:` key in the frontmatter  of the `about.md` file under `/content/about/`. All content sections follow this pattern. 

You can create a new content page by creating a new markdown file in the appropriate directory. For example, to add a new blog post, create a new markdown file under the post directory. In the frontmatter, include values for the following keys: `date:` `description:` `title:` and `summary:`. Use markdown to style your post below the frontmatter. _Note that your file name will become the url path: my-awesome-post.md will be located at c2pa.org/post/my-awesome-post_

Changes to content on the homepage, c2pa.org, are made by editing the `/content/_index.md` file. You should not need to edit the files in the `/docs` folder.
