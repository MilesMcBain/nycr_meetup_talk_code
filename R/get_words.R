##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title

##' @return
##' @author Miles McBain
##' @export
get_words <- function() {

  read_lines("https://github.com/MilesMcBain/drake_make/raw/master/inputs/words.txt")

}
