#Collate all node-groups into array
groups = [].slice.call document.getElementsByClassName("ngroup")

#Collate all nodes into array
nodes = [].slice.call document.getElementsByClassName("node")

nodes.forEach (n, i)->
  #Record Group Index
  n.group = groups.indexOf n.parentElement.parentElement
  n.id = i
  n.onclick = ->
    console.log "im number #{n.id} of group #{n.group}"
    
