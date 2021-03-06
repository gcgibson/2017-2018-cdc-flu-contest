% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get-partially-revised-data.R
\name{get_partially_revised_ilinet}
\alias{get_partially_revised_ilinet}
\title{Wrapper function around epiforecast::mimicPastEpidataDF to return partially
revised CDC flu data available as of the specified epiweek (but with missing
values filled in with more recent data from ilinet).  On top of
epiforecast::mimicPastEpidataDF, this function: 1) uses a static pull of
data from the delphi API, stored in the data directory of this package;
2) subsets data to a specified region; and 3) drops some occasional extra
rows of NA's at the end of the output from epiforecast::mimicPastEpidataDF.}
\usage{
get_partially_revised_ilinet(region_str, epiweek_str)
}
\arguments{
\item{region_str}{character defining region of interest, must be in c("nat", paste0("hhs", 1:10))}

\item{epiweek_str}{character string defining an epiweek in YYYYWW format}
}
\value{
a dataset in similar format to that returned by the Delphi epidata API
}
\description{
Wrapper function around epiforecast::mimicPastEpidataDF to return partially
revised CDC flu data available as of the specified epiweek (but with missing
values filled in with more recent data from ilinet).  On top of
epiforecast::mimicPastEpidataDF, this function: 1) uses a static pull of
data from the delphi API, stored in the data directory of this package;
2) subsets data to a specified region; and 3) drops some occasional extra
rows of NA's at the end of the output from epiforecast::mimicPastEpidataDF.
}
