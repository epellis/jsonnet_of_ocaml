# `jsonnet_of_ocaml`
Jsonnet Lexer, Parser, Formatter and Linter written in the OCaml Programming Language.

## Development Setup (VS Code)
```
opam switch create . ocaml-base-compiler.4.10.2

opam install dune ocaml-lsp-server ocamlformat

eval $(opam env)

code .
```

Install [OCaml Platform plugin for VS Code](https://github.com/ocamllabs/vscode-ocaml-platform)

## Test Loop
I use [PPX Expect](https://github.com/janestreet/ppx_expect) as a lightweight testing framework.
In the future, this project may also adopt a property testing framework.

### Writing a feature:
1. Add new tests to `./test`
2. Generate correct expected values with `dune runtest --auto-promote`

### Refactoring Feature:
1. Update the codebase
2. Check changes via `dune test`
