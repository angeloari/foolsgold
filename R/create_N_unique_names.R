create_N_unique_names<-function(n){
  # wrapper for create_vertex_names will create as many names for the n you specify
  N =ceiling(log(n+26)/log(26))
  return(create_vertex_names(N)[1:n])

}