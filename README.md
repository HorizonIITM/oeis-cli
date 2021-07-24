# oeis-cli

## CLI for [The On-line Encyclopedia of Integer Sequences](https://oeis.org/).

## Features

1. [POSIX](http://get.posixcertified.ieee.org/) Compliant.
2. Search sequences using ID, Name, examples.
3. Retrieve ID, Name, and example sequence for any query.
4. Plaintext output obeying UNIX Philosophy.

## Examples

1. Search using sequence ID

```sh
oeis -i ID
```

2. Search using example sequence

```sh
oeis -e 1 1 2 3
```

3. Search using ID and get references

```sh
oeis -i --ref ID
```

4. Commandline help

```sh
oeis -h
```

## [Instructions for project](./INSTRUCTIONS.md)

## [Resources for project](./RESOURCES.md)
