% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sentence_detector_dl.R
\name{nlp_sentence_detector_dl_pretrained}
\alias{nlp_sentence_detector_dl_pretrained}
\title{Load a pretrained Spark NLP Sentence Detector DL model}
\usage{
nlp_sentence_detector_dl_pretrained(
  sc,
  input_cols,
  output_col,
  impossible_penultimates = NULL,
  model = NULL,
  explode_sentences = NULL,
  name = NULL,
  lang = NULL,
  remote_loc = NULL
)
}
\arguments{
\item{sc}{A Spark connection}

\item{input_cols}{Input columns. String array.}

\item{output_col}{Output column. String.}

\item{impossible_penultimates}{impossible penultimates}

\item{model}{model architecture}

\item{explode_sentences}{a flag indicating whether to split sentences into different Dataset rows}

\item{name}{the name of the model to load. If NULL will use the default value}

\item{lang}{the language of the model to be loaded. If NULL will use the default value}

\item{remote_loc}{the remote location of the model. If NULL will use the default value}
}
\value{
The Spark NLP model with the pretrained model loaded
}
\description{
Create a pretrained Spark NLP \code{SentenceDetectorDLModel} model
}
