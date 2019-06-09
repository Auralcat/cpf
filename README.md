# CPF

A library to work with CPFs.

[![Hex pm](https://img.shields.io/hexpm/v/cpf.svg?style=flat)](https://www.hex.pm/packages/cpf)
[![CircleCI](https://circleci.com/gh/ulissesalmeida/cpf/tree/master.svg?style=svg)](https://circleci.com/gh/ulissesalmeida/cpf/tree/master)
[![Coverage Status](https://coveralls.io/repos/github/ulissesalmeida/cpf/badge.svg?branch=master)](https://coveralls.io/github/ulissesalmeida/cpf?branch=master)

CPF is an acronym for "Cadastro de Pessoa Físicas," it's a unique number
associated with a person that the Brazilian government maintains. With this
number, it is possible to check to retrieve information about the person. For
example, some companies or government services can offer data about the CPF like
 the person's name, or if the person is alive or has debts.

This library provides a validation that checks if the number is a valid CPF
number. The CPF has check digit algorithm is similar to
[`ISBN 10`](https://en.wikipedia.org/wiki/Check_digit#ISBN_10), you can check
the details in Portuguese [here](https://pt.wikipedia.org/wiki/Cadastro_de_pessoas_f%C3%ADsicas#C%C3%A1lculo_do_d%C3%ADgito_verificador).

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `cpf` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:cpf, "~> 0.3.0"}
  ]
end
```

## Quick Start

You verify if the CPF is valid by calling the function `CPF.valid?/1`:

```elixir
iex> CPF.valid?(563_606_676_73)
true

iex> CPF.valid?(563_606_676_72)
false

iex> CPF.valid?("563.606.676-73")
true

iex> CPF.valid?("563.606.676-72")
false

iex> CPF.valid?("56360667673")
true

iex> CPF.valid?("56360667672")
false
```

## CPF Formatting

If you have a valid CPF strings or integer in hands, you can use `CPF.new/1` and
in sequence call `CPF.format/1`:

```elixir
iex> 4485847608 |> CPF.new() |> CPF.format()
"044.858.476-08"

iex> "04485847608" |> CPF.new() |> CPF.format()
"044.858.476-08"
```

The `CPF.format/1` expects the input be wrapped in the CPF type. Remember, only
use `CPF.new` with valid CPFs, no other checks are done there. If you need some
validation, use `CPF.cast/1`.

## Why not other libraries?

This library runs 3 times faster and consume 3 times less memory and work with
primitive types, no extra struct is necessary.

## Docs

The docs can be found at [https://hexdocs.pm/cpf](https://hexdocs.pm/cpf).
