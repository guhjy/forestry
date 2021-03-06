% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/forestry.R
\name{training_data_checker}
\alias{training_data_checker}
\title{Training data check}
\usage{
training_data_checker(x, y, ntree, replace, sampsize, mtry, nodesizeSpl,
  nodesizeAvg, nodesizeStrictSpl, nodesizeStrictAvg, splitratio, nthread,
  middleSplit, doubleTree)
}
\arguments{
\item{x}{A data frame of all training predictors.}

\item{y}{A vector of all training responses.}

\item{ntree}{The number of trees to grow in the forest. The default value is
500.}

\item{replace}{An indicator of whether sampling of training data is with
replacement. The default value is TRUE.}

\item{sampsize}{The size of total samples to draw for the training data. If
sampling with replacement, the default value is the length of the training
data. If samplying without replacement, the default value is two-third of
the length of the training data.}

\item{mtry}{The number of variables randomly selected at each split point.
The default value is set to be one third of total number of features of the
training data.}

\item{nodesizeSpl}{Minimum observations contained in terminal nodes. The
default value is 3.}

\item{nodesizeAvg}{Minimum size of terminal nodes for averaging dataset. The
default value is 3.}

\item{nodesizeStrictSpl}{Minimum observations to follow strictly in terminal
nodes. The default value is 1.}

\item{nodesizeStrictAvg}{Minimum size of terminal nodes for averaging dataset
to follow strictly. The default value is 1.}

\item{splitratio}{Proportion of the training data used as the splitting
dataset. It is a ratio between 0 and 1. If the ratio is 1, then essentially
splitting dataset becomes the total entire sampled set and the averaging
dataset is empty. If the ratio is 0, then the splitting data set is empty
and all the data is used for the averaging data set (This is not a good
usage however since there will be no data available for splitting).}

\item{nthread}{Number of threads to train and predict the forest. The default
number is 0 which represents using all cores.}

\item{middleSplit}{if the split value is taking the average of two feature
values. If false, it will take a point based on a uniform distribution
between two feature values. (Default = FALSE)}

\item{doubleTree}{if the number of tree is doubled as averaging and splitting
data can be exchanged to create decorrelated trees. (Default = FALSE)}
}
\description{
Check the input to forestry constructor
}
