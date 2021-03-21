# jsonnet_of_ocaml
Jsonnet Lexer, Parser, Formatter and Linter written in the OCaml Programming Language.

## Development Setup (VS Code)
```
opam install dune ocaml-lsp-server ocamlformat

eval $(opam env)
```

Install [OCaml Platform plugin for VS Code](https://github.com/ocamllabs/vscode-ocaml-platform)

## Test Loop
Uses [PPX Expect](https://github.com/janestreet/ppx_expect)

### Writing a feature:
1. Add new tests inline with your file
2. Generate correct expected values with `dune runtest --auto-promote`

### Refactoring Feature:
1. Update the codebase
2. Check changes via `dune test`
