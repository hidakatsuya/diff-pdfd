# diff-pdfd

[![Build and publish image](https://github.com/hidakatsuya/diff-pdfd/actions/workflows/build-and-publish.yml/badge.svg?branch=main)](https://github.com/hidakatsuya/diff-pdfd/actions/workflows/build-and-publish.yml)

A dockerized [diff-pdf](https://github.com/vslavik/diff-pdf) command.

## Install

Set up the alias as follows:

```bash
alias diff-pdfd='docker run --init -it --rm -v "${PWD}:/workdir" ghcr.io/hidakatsuya/diff-pdfd:latest'
```

For first time use, the diff-pdfd image will be downloaded from [github.com/hidakatsuya/diff-pdfd/pkgs](https://github.com/hidakatsuya/diff-pdfd/pkgs/container/diff-pdfd).

## Usage

```bash
diff-pdfd file1.pdf file2.pdf
```

See the README of [diff-pdf](https://github.com/vslavik/diff-pdf) for more information.
