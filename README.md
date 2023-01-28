# shiny-fcp-loader

Shiny app skeleton with a loading screen that aims to minimize the time
to [first contentful paint (FCP)](https://web.dev/fcp/).

Demo: <https://nanx.shinyapps.io/shiny-fcp-loader/>

Blog post: <https://nanx.me/blog/post/shiny-fcp-loader/>

## Problem

For larger Shiny apps, users could wait a long time with a blank screen before seeing the rendered app content in the web browser, possibly due to:

- Loading a considerable number of render-blocking CSS/JS dependencies.
- Initializing the app state with some intensive computation.
- Connecting to servers with bandwidth and response time limitations.

## Solution

This Shiny app skeleton solves these problems on the app code level by:

- Implement a loading screen (loader); hide it after the main UI resources are loaded, and the state initialization is finished.
- Prioritizing loading the loader code so it can render before the main UI assets.
- Loading the main UI assets later separately without blocking the rendering of the loader.

## Thanks

- The general structure of the loading screen code is from [scartwright91/loading-dashboard](https://github.com/scartwright91/loading-dashboard), by using the single-element CSS spinner from Luke Haas and shinyjs from Dean Attali.
- The loader code is packed as HTML dependency following the guidelines in the [handle HTML dependencies with htmltools](https://unleash-shiny.rinterface.com/htmltools-dependencies.html) chapter of the "Outstanding User Interfaces with Shiny" book by David Granjon.
