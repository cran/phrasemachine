## ----eval=FALSE----------------------------------------------------------
#  install.packages("phrasemachine")

## ----eval=FALSE----------------------------------------------------------
#  install.packages("devtools")

## ----eval=FALSE----------------------------------------------------------
#  devtools::install_github("slanglab/phrasemachine/R/phrasemachine")

## ----eval=FALSE----------------------------------------------------------
#  library(phrasemachine)

## ----eval=TRUE, fig.width=6, fig.height=6, fig.align ='center'-----------
library(phrasemachine)

# load in U.S. presidential inaugural speeches from Quanteda example data.
corp <- quanteda::corpus(quanteda::inaugTexts)
# use first 5 documents for example
documents <- quanteda::texts(corp)[1:5]
# take a look at the document names
print(names(documents))

## ----eval=TRUE, fig.width=6, fig.height=6, fig.align ='center'-----------
# run phrasemachine
phrases <- phrasemachine(documents,
                         minimum_ngram_length = 2,
                         maximum_ngram_length = 8,
                         return_phrase_vectors = TRUE,
                         return_tag_sequences = TRUE)
# look at some example phrases
print(phrases[[1]]$phrases[1:10])

