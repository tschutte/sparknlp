% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/word-embeddings.R
\name{nlp_word_embeddings_pretrained}
\alias{nlp_word_embeddings_pretrained}
\title{Load pretrained word embeddings}
\usage{
nlp_word_embeddings_pretrained(
  sc,
  input_cols = NULL,
  output_col,
  name = NULL,
  lang = NULL,
  remote_loc = NULL,
  case_sensitive = NULL
)
}
\arguments{
\item{sc}{A Spark connection}

\item{input_cols}{Input columns. String array.}

\item{output_col}{Output column. String.}

\item{name}{the name of the model to load. If NULL will use the default value}

\item{lang}{the language of the model to be loaded. If NULL will use the default value}

\item{remote_loc}{the remote location of the model. If NULL will use the default value}

\item{case_sensitive}{whether to treat the words as case sensitive}
}
\value{
The Spark NLP model with the pretrained model loaded
}
\description{
Loads pretrained word embeddings into a Spark NLP annotator
}
