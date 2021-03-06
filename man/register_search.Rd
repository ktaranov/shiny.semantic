% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/semantic_search.R
\name{register_search}
\alias{register_search}
\title{Register search api url}
\usage{
register_search(session, data, search_query)
}
\arguments{
\item{session}{Shiny server session}

\item{data}{Data (the value that is passed into registerDataObj)}

\item{search_query}{Function providing a response as a list of
lists or dataframe of search results.}
}
\description{
Calls Shiny session's registerDataObj to create REST API.
Publishes any R object as a URL endpoint that is unique to Shiny session.
search_query must be a function that takes two arguments:
data (the value that was passed into registerDataObj) and req
(an environment that implements the Rook specification for HTTP requests).
search_query will be called with these values whenever an HTTP request is
made to the URL endpoint. The return value of search_query should be a list
of list or a dataframe. Note that different semantic components expect
specific JSON fields to be present in order to work correctly.
Check components documentation for details.
}
