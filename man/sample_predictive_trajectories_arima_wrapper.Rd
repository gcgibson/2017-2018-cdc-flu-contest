% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sarima-utils.R
\name{sample_predictive_trajectories_arima_wrapper}
\alias{sample_predictive_trajectories_arima_wrapper}
\title{A wrapper around sample_predictive_trajectories_arima suitable for use as the
\code{simulate_trajectories_function} argument to
\code{get_log_scores_via_trajectory_simulation}.}
\usage{
sample_predictive_trajectories_arima_wrapper(n_sims, max_prediction_horizon,
  data, region, analysis_time_season, analysis_time_season_week, params)
}
\arguments{
\item{n_sims}{number of trajectories to simulate}

\item{max_prediction_horizon}{how many steps ahead to simulate}

\item{data}{data set}

\item{region}{region}

\item{analysis_time_season}{season in which we're predicting}

\item{analysis_time_season_week}{week of the season in which we're making our
predictions, using all data up to the analysis time to make predictions for
later time points}

\item{params}{other parameters.  A list with the following entries:
* fits_filepath = path to a directory where SARIMA model fits are located
* prediction_target_var = string naming variable in data we are predicting
* seasonal_difference = logical specifying whether a seasonal difference
    should be computed manually before passing to auto.arima
* transformation = string, either "log", "box-cox", or "none", indicating
    type of transformation to do
* first_test_season = string, in format of "2011/2012", specifying first
    test season.}
}
\value{
an n_sims by h matrix with simulated values
}
\description{
This function does a few things worth noting.  It subsets data to the
analysis time.  It pulls in an appropriate SARIMA fit, either a
leave-one-season-out fit if the analysis time is before the first test season
or a fit based on all of the training data if the analysis time is in or
after the first test season.  It linearly interpolates missing values.
It handles log transformations and possible seasonal differencing that may
be done outside of functionality in the forecast package.
}
