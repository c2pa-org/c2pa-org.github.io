# C2PA Hugo Theme

This is the Hugo theme that powers https://c2pa.org.

It was bootstrapped with the [Hugo + Tailwind CSS starter theme](https://github.com/dirkolbrich/hugo-theme-tailwindcss-starter).

## Prerequisites

Make sure to install `postcss-cli` and `autoprefixer` globally in your environment, as Hugo Pipe’s PostCSS requires it. This is mentioned in the [Hugo Docs](https://gohugo.io/hugo-pipes/postcss/).

**Note:** Please use Node v12 for this, via [nvm](https://github.com/nvm-sh/nvm) or otherwise.

```bash
npm install -g postcss-cli
npm install -g autoprefixer
```

Then, install the dependencies for the theme:

```bash
npm install
```

You can run hugo for development by running the following (if you have the `hugo` CLI installed locally):

```bash
hugo server --disableFastRender
```

You should now be able to make changes to the theme files and see the site autoreload in your browser.

Make sure to use a minimum Hugo version of v0.69.0 and above.

Set the `writeStats` option in your Hugo `config` file, so that purging of CSS classes works in production. See `/exampleSite/config.toml` as a guideline.

```toml
[build]
  writeStats = true
```

### Environment variables

To make the distinction between `development` and `production` environments work, add an environment variable `HUGO_ENV = "production"` to your site settings under `Settings` → `Build & deploy` → `Environment`.

Or use a `netlify.toml` for a [file-based configuration](https://docs.netlify.com/configure-builds/file-based-configuration/).

## How does that work anyway?

Within `postcss.config.js` a `purgecss` function is defined, which is only called based on the environment variable `HUGO_ENVIRONMENT === 'production'`.

```js
const themeDir = __dirname + "/../../";

const purgecss = require("@fullhuman/postcss-purgecss")({
  // see https://gohugo.io/hugo-pipes/postprocess/#css-purging-with-postcss
  content: ["./hugo_stats.json"],
  defaultExtractor: (content) => {
    let els = JSON.parse(content).htmlElements;
    return els.tags.concat(els.classes, els.ids);
  },
});

module.exports = {
  plugins: [
    require("postcss-import")({
      path: [themeDir],
    }),
    require("tailwindcss")(themeDir + "assets/css/tailwind.config.js"),
    require("autoprefixer")({
      path: [themeDir],
      grid: true,
    }),
    ...(process.env.HUGO_ENVIRONMENT === "production" ? [purgecss] : []),
  ],
};
```

During the build process Hugo Pipes checks this variable too and build the `styles.css` with some additional minification. This snippet is located in `/layouts/partials/head.html`.

```html
{{ $styles := resources.Get "css/styles.css" | postCSS (dict "config"
"./assets/css/postcss.config.js") }} {{ if .Site.IsServer }}
<link rel="stylesheet" href="{{ $styles.RelPermalink }}" />
{{ else }} {{ $styles := $styles| minify | fingerprint | resources.PostProcess
}}
<link
  rel="stylesheet"
  href="{{ $styles.RelPermalink }}"
  integrity="{{ $styles.Data.Integrity }}"
/>
{{ end }}
```

## Reference

Documentation for Hugo's [PostCSS setup](https://gohugo.io/hugo-pipes/postprocess/).
