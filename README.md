# redo

Rerun last command with different command line options

### Installation

```sh
ln -siv `pwd`/r /usr/local/bin
```

### Usage

```sh
$ ls a b c
$ r -G
-> ls -G a b c
```

### Longer Explanation

Commands in the terminal are usually called with the following syntax:

```
$ builtin [-options] [args ...]
```

These commands are executed in the running shell's process. If a command contains
a slash (`/`), the shell does not execute the builtin program (which is contained
in `$PATH`). The purpose of this script is to easily rerun a program (either
a builtin or an specified executable) with a different set of options than
initially specified.

