
#' Download a file.
#'
#' @importFrom httr GET
#' @importFrom httr content
#' @export
oddsfeed <- function(){

	feed.loc <- "http://odds.smarkets.com/oddsfeed.xml"

	file <- content(GET(feed.loc),as = "parsed")
	assign(feed.loc, file, envir=cache.env)

	file

}
