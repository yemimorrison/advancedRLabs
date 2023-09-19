#' The Dijkstras algortithm takes a graph and an initial node and calculates the shortest path from the initial node to every other node. 
#' 
#' @param graph a dataframe.
#' @param init_node a number.
#' @returns The shortest path to every other node from the starting node as a vector.
#' @examples
#' dijkstra(wiki_graph, 1)
#' dijkstra(wiki_graph, 3)
#' @section Reference: https://en.wikipedia.org/wiki/Dijkstra%27s_algorithm


dijkstra <- function (graph, init_node) {
  
  #check if graph is a data frame 
  if (!is.data.frame(graph)) {
    stop("Invalid input. graph must be a dataframe")
  } 
  
  #check if init_node is numeric 
  if (!is.numeric(init_node)) {
    stop("Invalid input. init_node must be numeric")
  } 
  
  
  # Create a vector to store the unique values of the nodes
  nodes <- unique(c(graph$v1, graph$v2))
  
  # Store the shortest distances
  num_nodes <- length(nodes)
  
  #Initialize the distances with infinity. 
  short_dist <- rep(Inf, num_nodes)
  
  short_dist[init_node] <- 0
  
  # Create a vector to track unvisited nodes
  unvisited_nodes <- nodes
  
  while(length(unvisited_nodes) > 0) {
    
    # Locate the unvisited node with the shortest distance
    visited_node <- unvisited_nodes[which.min(short_dist[unvisited_nodes])]
    
    # Find the neighboring nodes of the current node
    neighbor <- graph %>%
      filter(v1 ==visited_node)
    
    for(i in 1:nrow(neighbor)) {
      visit_neighbor <- neighbor[i, ]
      first_dist <- short_dist[visited_node] + visit_neighbor$w
      
      if (first_dist <  short_dist[visit_neighbor$v2]) {
        short_dist[visit_neighbor$v2] <- first_dist
      }
    }
    unvisited_nodes <- setdiff(unvisited_nodes, visited_node)
  }
  
  return(short_dist)
}




