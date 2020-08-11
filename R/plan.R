the_plan <-
  drake_plan(

    words = get_words(),
    
    word_lengths = make_word_lenths(words),
    
    word_lengths_histogram = 
      make_word_lengths_histogram(word_lengths),
    
    word_lengths_report = target(
      command = {
        rmarkdown::render(knitr_in("doc/word_lengths_histogram.Rmd"))
        file_out("doc/word_lengths_histogram.html")
      }
    )

)
