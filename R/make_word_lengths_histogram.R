##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @param word_lengths
##' @return
##' @author Miles McBain
##' @export
make_word_lengths_histogram <- function(word_lengths) {

  word_lengths %>% 
    ggplot(aes(x = word_lengths, y = Freq)) +
    geom_col()
}
