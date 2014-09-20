# open-emacs - Atom package Beta
Open a current file in Emacs.

![](https://raw.githubusercontent.com/yoshiori/open-emacs/master/open-emacs.gif)

## Installation

```
$ apm install open-emacs
```

## Usage
The following commands are available for you to remap and/or run via the command palette.

* `open-emacs:open` - Open a current file in Emacs.

## Back To The Future

```list
(defun open-atom ()
  (interactive)
  (call-process
   "atom" nil t nil buffer-file-name))
```
