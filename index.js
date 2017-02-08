var groups, nodes;

groups = [].slice.call(document.getElementsByClassName("ngroup"));

nodes = [].slice.call(document.getElementsByClassName("node"));

nodes.forEach(function(n, i) {
  n.groupElement = n.parentElement.parentElement;
  n.groupIndex = groups.indexOf(n.groupElement);
  n.nodeId = i;
  return n.onclick = function() {
    return console.log("im number " + n.nodeId + " of group " + n.groupIndex);
  };
});
