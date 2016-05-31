Setting up my Linux or Mac just the way I like it
============

Things I share between my various computers at home and work. This
contains nothing confidential or no IP of my employer.

To use I do a `git clone` of this repository in my home directory, and
then refer to the files in this directory from my various setup files.

bashrc
----

In the `~/.bashrc` file on Linux (or `~/.bash_profile on Mac`) add
```sh
. $HOME/eobify/bashrc
```
making sure that the PS1 variable is not overwritten later in the
.bashrc file.

This does

1. Prompt format. Adds a wide horizontal line and some colour to the
prompt, so you can easily find it as you scroll up.

2. Git branch in prompt. If you are in a git repo, the current branch
appears in the prompt, with an appended `*` if it is dirty.  This
avoids the need to keep on typing `git status` to confirm you are on
the correct branch.

3. Short path in prompt. Shows a shortened version of the current
working directory in the prompt.

4. Timer in prompt. Shows the number of seconds the last command took
to execute.

5. Shell History: Makes the shell history much longer and appends to
it from all your shells in parallel.  When you create a new shell it
gets all the history from your previous shells, so that you can use
up-arrow or CONTROL-R to find those complicated command lines you used
in the past.

6. Adds the bin in this directory to your PATH, enabling:

  a.  whenchange COMMAND
      whenchange-popup COMMAND
      (Requires `sudo apt-get install inotify-tools`)
      Run a command every time any file changes under the working directory.

7. Adds aliases for some common commands

  a. gitdiff
     Do a graphical diff of the all the changed files.

emacs.el
-----

In the `~/.emacs` or `~/.emacs.d/user.el`  file add
```lisp
(load-file "~/eobify/emacs.el")
```

This does the following to your Emacs:

1. Filters dired buffers to not show uninteresting files.

2. When you have two dired buffers in two windows, then rename and
copy will move or copy to the other directory.

3. Indentation inserts spaces, not tab characters.

4. Undo is the single-key CONTROL-Z, which is much easier to quickly
repeat than the default key binding.  (You can still run
`suspend-frame` by doing the CONTROL-X-CONTROL-Z key sequence.)

Xmonad
------

```sh
sudo apt-get install gnome-panel
sudo apt-get install xmonad
cd
mkdir ~/.xmonad
touch ~/.xmonad/xmonad.hs
```
