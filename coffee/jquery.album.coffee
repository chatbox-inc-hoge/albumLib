
album = require "./album"

console.log "album",album
do ($=jQuery)->
  console.log "run register!"
  $.album = album
