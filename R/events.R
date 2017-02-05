#'@return a data frame of available events on the exchange.
#'@importFrom xml2 xml_find_all
#'@export
events <- function(feed = oddsfeed()){
	children <- xml_find_all(feed, './event')
	as.data.frame(do.call(rbind, lapply(children,xml_attrs)))
}
