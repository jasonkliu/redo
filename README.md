# redo

Rerun last command with different command line options

### Installation

```ln -siv `pwd`/r /usr/local/bin```

### Usage

``` sh
$ ls a b c
$ r -G
-> ls -G a b c
```

### Todo

* Parsing of all command line arguments (starting with -) for quick replacement
* Option to remove all of above arguments and use specified ones instead