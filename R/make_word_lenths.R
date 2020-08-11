##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @param words
##' @return
##' @author Miles McBain
##' @export
make_word_lenths <- function(words) {

  word_lengths <- nchar(words)
  
  table(word_lengths) %>% 
    as.data.frame()

}
