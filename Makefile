SHELL=/bin/sh

install:
		yarn install
		source ~/emsdk/emsdk_env.sh

compile-c:
		cd ./src/c && gcc main.c -S
		cd ./src/c && emcc main.c -s WASM=1
		mv ./src/c/main.s ./build/c-out.s
		mv ./src/c/a.out.wasm ./build/c-out.wasm
		rm ./src/c/a.out.js

compile-ts:
		yarn asbuild
		mv ./src/ts/a.out.wasm ./build/ts-out.wasm
		mv ./src/ts/a.out.wat ./build/ts-out.wat