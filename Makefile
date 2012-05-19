
NODE = assert \
	buffer \
	child_process \
	cluster \
	crypto \
	debugger \
	dgram \
	dns \
	domain \
	events \
	fs \
	globals \
	http \
	https \
	modules \
	net \
	os \
	path \
	process \
	querystring \
	readline \
	repl \
	stream \
	timers \
	tls \
	tty \
	url \
	utils \
	vm \
	zlib

node: $(NODE)

$(NODE):
	@echo "$@ -> node.$@.md"
	@curl -s https://raw.github.com/joyent/node/master/doc/api/$@.markdown > node.$@.md

.PHONY: node