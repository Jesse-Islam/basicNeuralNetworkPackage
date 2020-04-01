
dlnet<- function()
  # need to make a function that calls this object
return(setClass("dlnet", slots=list(X=x,Y=y,Yh=nrow(y),
                                L=2,dims=c(ncol(x),2,1), #Specify layers and nodes in each later, including output
                                param=new.env(hash = TRUE, parent = emptyenv(), size = 100L), #hash table for W and b
                                ch=new.env(hash = TRUE, parent = emptyenv(), size = 100L), #hash table for cache,
                                lr=lossRate,
                                sam=nrow(y),
                                loss=rep(NA,iterations)
                                )
            )
)
