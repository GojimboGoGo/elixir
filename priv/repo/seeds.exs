# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     WodGen.Repo.insert!(%WodGen.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

WodGen.Repo.insert!(%WodGen.Title{
  id: 0,
  title: "Hollywood Hotel"
}, on_conflict: :replace_all, conflict_target: :id)

WodGen.Repo.insert!(%WodGen.Description{
  id: 0,
  description: "A forested hill scarred by a recent wildfire. A signal tower stands here while from atop the structure a lone green light blinks periodically."
}, on_conflict: :replace_all, conflict_target: :id)

WodGen.Repo.insert!(%WodGen.Event{id: 0, event: "Before the nearby Monty Veillon Airport first opened, a strange light shone upon the site in the early hours of morning. Nearby beggars and displaced vagabonds have since mumbled their rantings of the true messiah."}, on_conflict: :replace_all, conflict_target: :id)

WodGen.Repo.insert!(%WodGen.Event{id: 1, event: "A police bust at the neighboring bar, Hall of Valhalla, turned into a firefight. Neighbors trade rumors of the lingering presence of the vengeful dead."}, on_conflict: :replace_all, conflict_target: :id)

WodGen.Repo.insert!(%WodGen.Event{id: 2, event: "A drug dealer left a considerable stash of money buried at the site before she was imprisoned. Only her closest family members are aware of the money."}, on_conflict: :replace_all, conflict_target: :id)
