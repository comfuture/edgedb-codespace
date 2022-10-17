# EdgeDB dev env

devcontainer for edgedb with python and nodejs

## Usage

connect to edgedb `dev` instance in shell:

```bash
$ edgedb -I dev
EdgeDB 2.3+64aee7d (repl 2.0.5+f78cf34)
Type \help for help, \quit to quit.
edgedb> select 1+1;
{2}
```

open web ui in browser

`https://localhost:5656/ui/` or `https://username-edgedb-codespace-xxxxxxxx.github.dev:5656/ui/`

## Features

- pre installed edgedb-cli
- launch edgedb-docker container with postgres backend
- web ui enabled
- python 3, node 16 language support
