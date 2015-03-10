module.exports = {
	"entry": {
        "jquery.album":"./coffee/jquery.album.coffee"
//        "common":"./coffee/common.coffee"
    },
	"output": {
		"filename": "www/js/[name].js"
	},
    module: {
        loaders: [
            { test: /\.coffee/, loader: "coffee" },
            { test: /\.html/, loader: "html" }
        ]
    },
    resolve: {
        extensions:["",".coffee",".js"]
    }
}