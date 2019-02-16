# code-format
![MIT](https://img.shields.io/badge/license-MIT-blue.svg)

A shell script that can batch process source code format. Currently it can delete trailing spaces, convert tab indents to 4 spaces indent, and convert end-of-line from windows style (CRLF) to unix style (LF).


## Usage
Format a single file:

```
$ ./code_format.sh test.cc
```

A folder:

```
$ ./code_format.sh test/
```

## Supported formats
When converting a directory, it only looks for the file format listed in format_list.conf, and all other formats will not be converted. You can modify format_list.conf to any you need to convert. Now like this:

```
$ cat format_list.conf
c
cpp
cc
h
hpp
conf
txt
ini
proto
mk
sh
py

```

## TODO
Convert arbitrary file encoding to utf8.