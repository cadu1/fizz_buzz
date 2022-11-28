# FizzBuzz

**This is my first step with elixir. It's about a "game" called FizzBuzz, basically, the app reads a list of numbers from a file (named "numbers.txt", it's available in the root folder), then it checks if the number on the list is divisible by 3 if it's true will be to replace to symbol `:fizz`. If it's divisible by 5, it will be replaced by the symbol `:buzz`. If it's divisible by both, it will be replaced with the symbol `:fizzbuzz`. The tests are available too.**

## Docker
I leave a docker YML file if you want to test without installing the ER language and elixir. Just run `docker up`, then to access the image, look below:

```docker
docker run -ti -v $(pwd):/srv/app -w /srv/app elixir:1.12-alpine sh
```

## Commands available

```elixir
iex -S mix
FizzBuzz.build("numbers.txt")

mix test
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `fizz_buzz` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:fizz_buzz, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/fizz_buzz](https://hexdocs.pm/fizz_buzz).
