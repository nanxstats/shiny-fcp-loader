navbarPage(
  title = "shiny-fcp-loader",
  theme = bslib::bs_theme(version = 5),
  source("ui/tab-comp.R", local = TRUE)$value,
  source("ui/tab-deps.R", local = TRUE)$value
)
