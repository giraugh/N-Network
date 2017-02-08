#Collate all node-groups into array
groups = [].slice.call document.getElementsByClassName("ngroup")

#Collate all nodes into array
nodes = [].slice.call document.getElementsByClassName("node")

nodes.forEach (n, i)->
  #Record Group Index
  n.groupElement = n.parentElement.parentElement
  n.groupIndex = groups.indexOf n.groupElement
  n.nodeId = i

  n.onclick = ->
    console.log "im number #{n.nodeId} of group #{n.groupIndex}"
