# Ecto.Adapters.CockroachDB

This is a very minimal adaption of the Postgress adapter for Ecto to be compatible with
CockroachDB. 

There is an older projec with the same aim ([ecto_cockroachdb](https://github.com/jumpn/ecto_cockroachdb/blob/master/config/config.exs)), which has be made obsolete when Cockroach improved its compatibility with Postgres.

But as new incompatibilities have been brought up by the latest version of Ecto (3.6+), a new
CockroachDB specific adapter is needed.

## Installation

Currently the package is only available via GitHub. Please add the following to your `mix.exs` file:

```
def deps do
  [
    {:ecto_crdb, git: "https://github.com/cypherfox/ecto_crdb.git", tag: "0.0.1"},
  ]
end
```

Once it is [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `ecto_crdb` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:ecto_crdb, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/ecto_crdb](https://hexdocs.pm/ecto_crdb).

## Changes Made

* `cockroachdb.ex`: remove the `LOCK TABLE` SQL statement in function `lock_for_migrations`
