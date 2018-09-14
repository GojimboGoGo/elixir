# World of Darkness Location Generator

WIP

Generator for locations of interest using the World of Darkness setting.

Inspired by the generators provided at <http://donjon.bin.sh/>

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

## Web UI

Also has a browser friendly view to test the data, courtesy of Phoenix framework.

To start the Phoenix server:

* Install dependencies with `mix deps.get`
* Create and migrate your database with `mix ecto.create && mix ecto.migrate`
* Install Node.js dependencies with `cd assets && npm install`
* Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

* Official website: http://www.phoenixframework.org/
* Guides: http://phoenixframework.org/docs/overview
* Docs: https://hexdocs.pm/phoenix
* Mailing list: http://groups.google.com/group/phoenix-talk
* Source: https://github.com/phoenixframework/phoenix
