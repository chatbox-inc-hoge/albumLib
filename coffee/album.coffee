
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
  uploadZip: (category,file,cb)->
    console.log "zip method"
    setting = @setting
    reader = new FileReader();
    reader.readAsDataURL file,"UTF-8" # ここでファイルが取れる
    reader.onload = ()->
      xhr = sendRequest "post",setting,"archive/upload",
        data: this.result
        category: category
      cb xhr


  uploadFile: (category,file)->
    console.log "file method",category,file,@config
  bookInfo: (bookName)-> # カテゴリー情報の取得
    sendRequest "get",@setting,"book/info/#{bookName}"

  bookList: ()-> # カテゴリー一覧の取得
    sendRequest "get",@setting,"book/list/"



module.exports = Album