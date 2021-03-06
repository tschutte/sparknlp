% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ngram-generator.R
\name{nlp_ngram_generator}
\alias{nlp_ngram_generator}
\title{Spark NLP NGramGenerator}
\usage{
nlp_ngram_generator(
  x,
  input_cols,
  output_col,
  n = NULL,
  enable_cumulative = NULL,
  delimiter = NULL,
  uid = random_string("ngram_generator_")
)
}
\arguments{
\item{x}{A \code{spark_connection}, \code{ml_pipeline}, or a \code{tbl_spark}.}

\item{input_cols}{Input columns. String array.}

\item{output_col}{Output column. String.}

\item{n}{number elements per n-gram (>=1)}

\item{enable_cumulative}{whether to calculate just the actual n-grams or all n-grams from 1 through n}

\item{uid}{A character string used to uniquely identify the ML estimator.}

\item{...}{Optional arguments, see Details.}

\item{delimter}{glue character used to join the tokens}
}
\value{
The object returned depends on the class of \code{x}.

\itemize{
\item \code{spark_connection}: When \code{x} is a \code{spark_connection}, the function returns an instance of a \code{ml_estimator} object. The object contains a pointer to
a Spark \code{Estimator} object and can be used to compose
\code{Pipeline} objects.

\item \code{ml_pipeline}: When \code{x} is a \code{ml_pipeline}, the function returns a \code{ml_pipeline} with
the NLP estimator appended to the pipeline.

\item \code{tbl_spark}: When \code{x} is a \code{tbl_spark}, an estimator is constructed then
immediately fit with the input \code{tbl_spark}, returning an NLP model.
}
}
\description{
Spark ML transformer that takes as input a sequence of strings (e.g. the output of a Tokenizer, Normalizer, Stemmer,
Lemmatizer, and StopWordsCleaner). The parameter n is used to determine the number of terms in each n-gram.
The output will consist of a sequence of n-grams where each n-gram is represented by a space-delimited string of n
consecutive words with annotatorType CHUNK same as the Chunker annotator.
See \url{https://nlp.johnsnowlabs.com/docs/en/annotators#ngramgenerator}
}
