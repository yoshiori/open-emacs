{exec, child} = require 'child_process'

module.exports =

  activate: (state) ->
    atom.workspaceView.command "open-emacs:open", => @open()

  open: ->
    exec "which emacsclient", (error, stdout, stderr) ->
      if error
        alert("emacsclient not found")
      editor = atom.workspace.getActivePaneItem()
      filePath = editor?.buffer.file?.path
      if filePath
        exec "emacsclient -n #{filePath}"
