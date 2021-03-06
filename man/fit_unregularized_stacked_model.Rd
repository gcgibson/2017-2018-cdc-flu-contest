% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stacking-utils.R
\name{fit_unregularized_stacked_model}
\alias{fit_unregularized_stacked_model}
\title{Estimate "optimal" unregularized weights for a linear combination of
predictive models.}
\usage{
fit_unregularized_stacked_model(component_model_log_scores, method = "em",
  tol = .Machine$double.eps, grid_size = 101, return_type = "optimal")
}
\arguments{
\item{component_model_log_scores}{a data frame or matrix of log scores.
Each column gives log scores for a particular predictive model.
Each row corresponds to one observation}

\item{method}{character, either "em" for degenerate EM or "grid-search" for
grid search}

\item{tol}{numeric, if method was "em", stopping tolerance}

\item{grid_size}{number of grid points for each model to evaluate in a grid
search}

\item{return_type}{character, if method was "grid-search", either "optimal"
to return only the best weights examined or "all" to return the full grid}
}
\value{
model weights
}
\description{
This function uses either a grid search or the "degenerate EM" algorithm
outlined at http://www.cs.cmu.edu/~roni/11761-f16/Presentations/degenerateEM.pdf
}
