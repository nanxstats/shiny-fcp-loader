loaderDependency <- function() {
  htmltools::htmlDependency(
    name = "loader",
    version = "0.1.0",
    src = c(file = "loader/"),
    stylesheet = c("loader.css")
  )
}

useLoader <- function() {
  loaderDiv <- div(
    class = "loading",
    id = "loading",
    h2("Here is a loading message..."),
    div(class = "loader")
  )
  tagList(loaderDiv, loaderDependency())
}
