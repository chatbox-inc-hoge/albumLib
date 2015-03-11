server:
	php -S localhost:9090 -t www

build:
	webpack -p --config webpack.build.config.js