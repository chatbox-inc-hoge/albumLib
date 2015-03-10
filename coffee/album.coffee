
sendRequest = (type,setting,entry,data)->
  options =
    url: "#{setting.entry}#{entry}"
    method: type,
    contentType: "application/json; charset={CHARSET}",
    dataType: "json"
  options.data = JSON.stringify data if data
  xhr = $.ajax options
  return xhr


class Album
  constructor: (config) ->
    if @ instanceof Album
      @setting = config
    else
      return new Album config
  upload:
    zip: (category,file)->
      console.log "zip method",category,file,@config
    file: (category,file)->
      console.log "file method",category,file,@config
  book: ()->
    console.log "book method",@config
  bookList: ()->
    sendRequest "get",@setting,"book/list/"



module.exports = Album