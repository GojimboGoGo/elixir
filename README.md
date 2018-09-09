# World of Darkness Location Generator

WIP

Generator for locations of interest using the World of Darkness setting.

Inspired by the generators provided at <http://donjon.bin.sh/>.

## Endpoints

### GET /v1/locations

```json
{
  "title": "Hollywood Hotel",
  "description": "A forested hill scarred by a recent wildfire. A signal tower stands here, a green light blinking periodically.",
  "history": [
    "Before the nearby Monty Veillon Airport first opened, a strange light shone upon the site. The vagabonds and beggars have since whispered about the true messiah.",
    "A police bust at the neighboring bar, Hall of Valhalla, turned into a firefight. Neighbors trade rumors of the lingering presence of the vengeful dead.",
    "A drug dealer left a considerable stash of money buried at the site before she was imprisoned. Only her closest family members are aware of the money."
  ]
}
```

#### Filters

##### Size: Integer (default 1)

Return a number of generated locations equal to Size.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `wod_gen` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:wod_gen, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/hello](https://hexdocs.pm/hello).
