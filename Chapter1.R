## Purpose: Convert Python code from SNA for Startups - Chapter 1
## Author: Bryan Shepherd
## Email: bryan@programmingr.com


#### Create the formal org chart

# Create an edgelist to pass to the graph function 
o.el <- matrix(c('Conrad','Mary',
                 'Conrad','Cindy',
                 'Conrad','Alice',
                 'Alice','Brad',
                 'Alice','Angie',
                 'Alice','Jim',
                 'Cindy','Samuel',
                 'Cindy','Dave',
                 'Cindy','Frida'), ncol=2, byrow=TRUE)

o <- graph.edgelist(o.el, directed=FALSE)

plot(o)
             
#### Create informal networks chart

a.el <- matrix(c('Cindy','Samuel',
               'Cindy','Conrad',
               'Samuel','Frida',
               'Conrad','Frida',
               'Alice','Frida',
               'Angie','Frida',
               'Dave','Frida',
               'Mary','Frida',
               'Brad','Mary'), ncol=2, byrow=TRUE)

a <- graph.edgelist(a.el, directed=FALSE)

?add.vertices

a <- a + vertex("Jim")

plot(a)
          
#### More information

# http://igraph.sourceforge.net/igraphbook/igraphbook-creating.html