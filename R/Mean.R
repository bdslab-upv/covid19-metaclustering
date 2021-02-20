# Copyright 2020 Biomedical Data Science Lab, Universitat Politècnica de València (Spain)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#' Estimates the mean without confidence intervals  (please see mCI.R for the version with confience intervals).
#'
Mean <- function(x, na.rm = FALSE){
  n = ifelse(na.rm, sum(!is.na(x)), length(x))
  smean = mean(x, na.rm = na.rm)
  return(smean)
}