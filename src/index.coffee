exec = require('child_process').exec
sysPath = require 'path'

module.exports = class TelepathNotifier
  brunchPlugin: yes

  constructor: (@config) ->
    null

  onCompile: (generatedFiles) ->
    scriptPath = sysPath.join __dirname, '..', 'telepath_build.py'
    child = exec scriptPath, (error, stdout, stderr) ->
      #console.log 'stdout: ' + stdout
      #console.log 'stderr: ' + stderr
      #console.log 'exec error: ' + error if error
    null
