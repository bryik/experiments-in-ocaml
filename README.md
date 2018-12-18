# Experiments in OCamel

This repo contains little examples demonstrating certain concepts from OCaml. They are slightly cleaned up versions of notes I wrote during the uOttawa course CSI 3120.

## Running these experiments

All of the examples in `./experiments` have been tested with OCaml 4.07.0.

The easiest way to try out these examples is to open [utop](https://opam.ocaml.org/blog/about-utop/) in `./experiments` and `#use` a file to run the code via OCaml's interpreter. For example,

```
# "hello" refers to ./experiments/hello.ml
#use "hello".ml
```

Alternatively, to compile, run, and remove the compiled files:

1. Open a terminal in the `./experiments` directory.
2. Execute:

```bash
ocamlbuild $1.native -- && rm $1.native && rm -rf _build
```

Where `$1` is the filename of the example you want to run.

You can wrap this in a handy bash function:

```bash
function camel {
  ocamlbuild $1.native -- && rm $1.native && rm -rf _build
}
```

With this, running a single file can be accomplished with:

```bash
# "hello" refers to ./experiments/hello.ml
camel hello
```
