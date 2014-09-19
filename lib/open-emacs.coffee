{exec, child} = require 'child_process'

module.exports =

  activate: (state) ->
    atom.workspaceView.command "open-emacs:open", => @open()

  open: ->
    editor = atom.workspace.getActivePaneItem()
    filePath = editor?.buffer.file?.path
    exec "emacsclient -n -a emacs #{filePath}"
