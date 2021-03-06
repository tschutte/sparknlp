% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/perceptron.R
\name{nlp_perceptron}
\alias{nlp_perceptron}
\title{Spark NLP Perceptron}
\usage{
nlp_perceptron(
  x,
  input_cols,
  output_col,
  n_iterations = NULL,
  pos_column = NULL,
  uid = random_string("perceptron_")
)
}
\arguments{
\item{x}{A \code{spark_connection}, \code{ml_pipeline}, or a \code{tbl_spark}.}

\item{input_cols}{Input columns. String array.}

\item{output_col}{Output column. String.}

\item{n_iterations}{Number of iterations for training. May improve accuracy but takes longer. Default 5.}

\item{pos_column}{Column containing an array of POS Tags matching every token on the line.}

\item{uid}{A character string used to uniquely identify the ML estimator.}

\item{...}{Optional arguments, see Details.}
}
\value{
The object returned depends on the class of \code{x}.

\itemize{
\item \code{spark_connection}: When \code{x} is a \code{spark_connection}, the function returns an instance of a \code{ml_estimator} object. The object contains a pointer to
a Spark \code{Estimator} object and can be used to compose
\code{Pipeline} objects.

\item \code{ml_pipeline}: When \code{x} is a \code{ml_pipeline}, the function returns a \code{ml_pipeline} with
a default pretrained NLP model appended to the pipeline.

\item \code{tbl_spark}: When \code{x} is a \code{tbl_spark}, an estimator is constructed then
immediately fit with the input \code{tbl_spark}, returning an NLP model.
}
}
\description{
Spark ML transformer that sets a POS tag to each word within a sentence. Its train data (train_pos) is a spark
dataset of POS format values with Annotation columns.
See \url{https://nlp.johnsnowlabs.com/docs/en/annotators#postagger}
}
