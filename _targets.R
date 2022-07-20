## Load your packages, e.g. library(targets).
source("./packages.R")

## Load your R files
lapply(list.files("./R", full.names = TRUE), source)

## tar_plan supports drake-style targets and also tar_target()
tar_plan(
  words = get_words(),
  word_lengths = make_word_lenths(words),
  word_lengths_histogram =
    make_word_lengths_histogram(word_lengths),
  tar_render(
    word_lengths_histogram_report,
    "doc/word_lengths_histogram.Rmd"
  )
)
