# diff-pdfd

A Dockerized version of the [diff-pdf](https://github.com/vslavik/diff-pdf) command.

## Install

Set up the alias as follows:

```bash
alias diff-pdfd='docker run --init -it --rm -v "${PWD}:/workdir" ghcr.io/hidakatsuya/diff-pdfd:latest'
```

## Usage

```bash
diff-pdfd file1.pdf file2.pdf
```

See the README of [diff-pdf](https://github.com/vslavik/diff-pdf) for more information.
