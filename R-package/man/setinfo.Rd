% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lgb.Dataset.R
\name{setinfo}
\alias{setinfo}
\alias{setinfo.lgb.Dataset}
\title{Set information of an lgb.Dataset object}
\usage{
setinfo(dataset, ...)

\method{setinfo}{lgb.Dataset}(dataset, name, info, ...)
}
\arguments{
\item{dataset}{Object of class "lgb.Dataset"}

\item{...}{other parameters}

\item{name}{the name of the field to get}

\item{info}{the specific field of information to set}
}
\value{
passed object
}
\description{
Set information of an lgb.Dataset object
}
\details{
The \code{name} field can be one of the following:

\itemize{
    \item \code{label}: label lightgbm learn from ;
    \item \code{weight}: to do a weight rescale ;
    \item \code{init_score}: initial score is the base prediction lightgbm will boost from ;
    \item \code{group}.
}
}
\examples{
\dontrun{
  data(agaricus.train, package='lightgbm')
  train <- agaricus.train
  dtrain <- lgb.Dataset(train$data, label=train$label)
  lgb.Dataset.construct(dtrain)
  labels <- getinfo(dtrain, 'label')
  setinfo(dtrain, 'label', 1-labels)
  labels2 <- getinfo(dtrain, 'label')
  stopifnot(all.equal(labels2, 1-labels))
}
}

