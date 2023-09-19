#' Wiki_Graph dataset
#' This dataset contains a sample of data for demonstration purposes. 
#' 
#' @format ## `wiki_graph` A dataframe with 3 variables and 18 rows.
#' \describe{
#' \item{v1}{variable1. Contains the initial nodes}
#' \item{v2}{variable2. Contains the neighboring nodes to the initial nodes.}
#' \item{w}{weight. The distance between the initial nodes and neighbouring nodes.}
#' }
#' @usage data(wiki_graph)
#' @source wiki_graph <- data.frame(v1=c(1,1,1,2,2,2,3,3,3,3,4,4,4,5,5,6,6,6), 
#' v2=c(2,3,6,1,3,4,1,2,4,6,2,3,5,4,6,1,3,5), w=c(7,9,14,7,10,15,9,10,11,2,15,11,6,6,9,14,2,9))
"wiki_graph"