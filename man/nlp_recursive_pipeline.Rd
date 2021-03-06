% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/recursive-pipeline.R
\name{nlp_recursive_pipeline}
\alias{nlp_recursive_pipeline}
\title{Spark NLP RecursivePipeline}
\usage{
nlp_recursive_pipeline(x, ..., uid = random_string("recursive_pipeline_"))
}
\value{
When \code{x} is a \code{spark_connection}, \code{ml_pipeline()} returns an empty pipeline object.
When \code{x} is a \code{ml_pipeline_stage}, \code{ml_pipeline()} returns an \code{ml_pipeline} with the stages
set to \code{x} and any transformers or estimators given in \code{...}.
}
\description{
Recursive pipelines are SparkNLP specific pipelines that allow a Spark ML Pipeline to know about itself on every
Pipeline Stage task, allowing annotators to utilize this same pipeline against external resources to process them
in the same way the user decides. Only some of our annotators take advantage of this. RecursivePipeline behaves
exactly the same than normal Spark ML pipelines, so they can be used with the same intention.
See \url{https://nlp.johnsnowlabs.com/docs/en/concepts#recursivepipeline}

@param x Either a \code{spark_connection} or \code{ml_pipeline_stage} objects
@param uid uid for the pipeline
@param ... \code{ml_pipeline_stage} objects
}
