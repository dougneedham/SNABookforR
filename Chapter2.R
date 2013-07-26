## Purpose: Convert Python code from SNA for Startups - Chapter 2
## Author: Bryan Shepherd
## Email: bryan@programmingr.com

library(igraph)

### GOTCHA! igraph (at least in R) begins vertex ids at "1", not "0"

g.el <- matrix(c(1, 2, 1, 3, 1, 4, 1, 6, 2, 4, 2, 5, 2, 7, 3, 4, 3, 6,
                 4, 5, 4, 6, 4, 7, 5, 7, 6, 7, 6, 8, 7, 8, 8, 9, 9, 10), ncol=2, byrow=TRUE)

g.el

g <- graph.edgelist(g.el, directed=FALSE)

plot(g)

V(g)
V(g)$name

# Various method equivalencies
# number_of_edges()
ecount(g)

# number_of_nodes()
vcount(g)

# edges()
get.edgelist(g)


# Analog to adjacency_list() method
get.adjacency(g)

# Analog to dict()
get.adjlist(g)

graph.dfs(g, 1)

# Not very close to examples
graph.bfs(g, 1, pred=TRUE, succ=TRUE)
graph.dfs(g, 1, order.out=TRUE, father=TRUE)

# No analogs to the tree functions in R


shortest.paths(g)

get.all.shortest.paths(g, 1, 5)

average.path.length(g)

plot(path.length.hist(g, directed=FALSE)$res)




#-----------------------#

### GOTCHA! When imported as characters, the names and vertex ids don't necessarily match up.
### E.g., the vertex named "6" has the vertex id 5 and the vertex named "5" has the vertex id 6.

cg.el <- matrix(c("1", "2", "1", "3", "1", "4", "1", "6", "2", "4", "2", "5", "2", "7", "3", "4", "3", "6",
                  "4", "5", "4", "6", "4", "7", "5", "7", "6", "7", "6", "8", "7", "8", "8", "9", "9", "10"), ncol=2, byrow=TRUE)

cg <- graph.edgelist(cg.el, directed=FALSE)

plot(cg)

graph.dfs(cg, 10)

V(cg)
V(cg)$name