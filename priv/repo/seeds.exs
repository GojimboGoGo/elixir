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



WodGen.Repo.insert!(%WodGen.Structure{
  id: 0,
  title: "Hollywood Hotel",
  description: "A long abandoned hotel. It used to be a five-star location in the 80's, but only the spiders check in now."
}, on_conflict: :replace_all, conflict_target: :id)
WodGen.Repo.insert!(%WodGen.Structure{
  id: 1,
  title: "Hall of Valhalla",
  description: "A cozy bar to sit down, have a drink, and forget about the troubles of the world."
}, on_conflict: :replace_all, conflict_target: :id)
WodGen.Repo.insert!(%WodGen.Structure{
  id: 2,
  title: "Clark Medical",
  description: "The family clinic of Dr. Clark. Some police tape blocks the entrance."
}, on_conflict: :replace_all, conflict_target: :id)
WodGen.Repo.insert!(%WodGen.Structure{
  id: 3,
  title: "The Tower to Heaven",
  description: "A forested hill scarred by a recent wildfire. A lone signal tower stands here. At the top of the structure a green light blinks periodically."
}, on_conflict: :replace_all, conflict_target: :id)


WodGen.Repo.insert!(%WodGen.Event{
  id: 0,
  event: "Before the nearby Monty Veillon Airport first opened, a strange light shone upon the site in the early hours of morning. Nearby beggars and displaced vagabonds have since mumbled their rantings of the true messiah."}, on_conflict: :replace_all, conflict_target: :id)

WodGen.Repo.insert!(%WodGen.Event{
  id: 1,
  event: "A police bust at the neighboring bar, Hall of Valhalla, turned into a firefight. Neighbors trade rumors of the lingering presence of the vengeful dead."}, on_conflict: :replace_all, conflict_target: :id)

WodGen.Repo.insert!(%WodGen.Event{
  id: 2,
  event: "A drug dealer left a considerable stash of money buried at the site before she was imprisoned. Only her closest family members are aware of the money."}, on_conflict: :replace_all, conflict_target: :id)

WodGen.Repo.insert!(%WodGen.Event{
  id: 3,
  event: "Most pedestrians avoid visiting the nearby park at night, due to the recent string of serial killings."}, on_conflict: :replace_all, conflict_target: :id)

WodGen.Repo.insert!(%WodGen.Event{
  id: 4,
  event: "The site is a part of the territory of an elder Malkavian acting as a local politician. His eccentric, bordering on insane rants have strangely grown more and more popular with the masses as of late."}, on_conflict: :replace_all, conflict_target: :id)

WodGen.Repo.insert!(%WodGen.Event{
  id: 5,
  event: "Although the site was filmed for the Hunters of Fear TV show, the episode never made it on air. The show was canceled shortly after, despite high ratings and a contract for another season."}, on_conflict: :replace_all, conflict_target: :id)

WodGen.Repo.insert!(%WodGen.Event{
  id: 6,
  event: "Social media posts are clamoring to provide their own edits of a seemingly innocuous video where a dog is eating a hot dog in front of the site."}, on_conflict: :replace_all, conflict_target: :id)
