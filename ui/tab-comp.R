headerCard <- function(title, ...) {
  div(
    class = "card",
    p(class = "card-header", title),
    div(class = "card-body", ...)
  )
}

tabPanel(
  title = "Computation",
  fluidRow(
    column(
      width = 10, offset = 1,
      headerCard("Card Title", plotOutput("plot"))
    )
  )
)
