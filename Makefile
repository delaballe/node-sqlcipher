build:
	npm install --build-from-source

clean:
	rm -f ./lib/node_sqlcipher.node
	rm -rf ./lib/binding/
	#rm -f ./test/support/big.db*
	rm -f ./test/tmp/*
	rm -rf ./deps/sqlcipher-autoconf-*/
	rm -rf ./build
	rm -rf ./out

test:
	npm test

.PHONY: build clean test
