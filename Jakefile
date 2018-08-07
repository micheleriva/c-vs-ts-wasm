task('init', { async: true }, () => {
  
  const commands = [
    `source ~/emsdk/emsdk_env.sh`
    `yarn install`
  ]

  jake.exec(commands, { printStdout: trure }, () => complete())

})

task('compile-c', () => {
  jake.exec(`cd ./src/c && gcc main.c -S`)
  jake.exec(`cd ./src/c && emcc main.c -s WASM=1`)
})

task('compile-ts', () => {
  jake.exec(`yarn asbuild`)
})

task('default', () => {

  jake.Task['compile-c'].invoke()
  jake.Task['compile-ts'].invoke()

})