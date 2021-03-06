% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/praktikr.R
\name{align_to}
\alias{align_to}
\title{Align Data Set to Event.}
\usage{
align_to(x, cols = 1:ncol(x), align = NULL)
}
\arguments{
\item{x}{A data.frame (also) containing subjective and retrospectively
provided practice times, one row per participant.}

\item{cols}{A numerical vector of size \code{ncol(x)} indexing those columns
of \code{x} that contain mean daily hours information; or a character
string with the names of those columns containing age bracket averages. If
omitted, all columns are assumed to contained practice time data.}

\item{align}{Either a character string determining whether to align the data
set with each participants' first (\code{align = "first_entry"}) or last
entry (\code{align = "last_entry"}), or a numeric vector indexing each
participant's column with which to align the data set.}
}
\value{

}
\description{
Given a \code{data.frame} with rows that are (at least partially) left-
and/or right-padded with \code{NA} values (i.e. the number of non-\code{NA}
entries differs between rows), this function aligns the data set according to
\code{align}.
}
\examples{
d_f <- data.frame(`10-12` = c(NA, 1.5, 1.0, NA),
                  `13-14` = c(1.5, 3, 0.75, 1),
                  `15-16` = c(2.5, 4, 1.5, NA)
                  check.names = FALSE)
align_to(d_f, align = "last_entry")
align_to(d_f, align = "first_entry")
align_to(d_f, align = c(2, 2, 1))
}
