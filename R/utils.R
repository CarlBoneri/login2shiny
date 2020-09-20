#' Pipe operator
#'
#' See \code{magrittr::\link[magrittr]{\%>\%}} for details.
#'
#' @name %>%
#' @rdname pipe
#' @keywords internal
#' @export
#' @importFrom magrittr %>%
#' @usage lhs \%>\% rhs
NULL




#' Is the calling environment a Shiny app
#'
#' \code{is.shiny}
#'
#' Determine if the calling function or environment is an rstudio session
#'   or a shiny application.
#'
#' @return logical indicating if the environment is a shiny domain or local session
#'
#' @author Carl Boneri, \email{carl.boneri@@whyles.com}
#'
#'
#' @examples
#'
#' is.shiny()
#'
#'
#' library(shiny)
#'
#' tapp <- function(){
#'
#'   ui <- fluidPage(
#'     verbatimTextOutput("showme")
#'   )
#'
#'   server <- function(input, output, session) {
#'     output$showme <- renderPrint({
#'       is.shiny()
#'     })
#'   }
#'
#'   shinyApp(ui = ui, server = server, options = list(launch.browser = T))
#' }
#'
#'
#' @export
#'
#'

is.shiny <- function(x){
  test <- tryCatch(shiny::getDefaultReactiveDomain(), error = function(e){
    NULL
  })
  if(!is.null(test) && inherits(test, "ShinySession")){
    TRUE
  }else {
    FALSE
  }
}

