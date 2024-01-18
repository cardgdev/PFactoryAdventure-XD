# rom hack of a rom hack of a rom hack
An enhancement patch of Pokemon Factory Adventure, which is a hack of PF-Roaming-Red, which is a hack of Pokemon Red.

Fork of: https://github.com/CameruptQDX/PF-Roaming-Red

# Change summary

PFA is an excellent, underappreciated rom hack. So many PF fakemons are so charming and cool that the hack demands multiple replays in order to use lots of different mons -- this patch is meant to help facilitate that experience.

Many of the changes to this patch actually reduce the scope of wild encounters to create a more fun experience. This is because the wild level scaling features of PF-Roaming-Red disincentivize certain aspects of gameplay, such as using weak mons early, training weak mons, working towards evolving to stronger stages, etc. For example, is no need to struggle to train up a Magikarp if you can just quickly catch Gyarados after some evo scaling. These changes are fine for a hack of vanilla Red, which everyone has already played. But the main purpose of Pokemon Factory Adventure is to use the fakemons. So to incentivize actually using the fakemons, the wild encounter system of PF-Roaming-Red has been restricted, while still preserving the fun of a dynamic adventure. Additionally, evo stones can no longer be purchased in Celedon and must be found in the overworld.

Items in the overworld are improved, mostly replaced with TMs and Evo stones. In a dynamic region where you can start anywhere, there is no need to have Potions in Viridian Forest and Max Potions in the Safari Zone.

Many of the fakemons from Pokemon Factory, like Scytheper and Laprince, seem to have originally been meant as evolutions of existing pokemon, but in PFA they have just replaced those mons with minimal changes. One of the goals of this patch is to differentiate mons which are effectively just copypastes of existing mons.

## System changes

- Wild mons no longer scale their evolution. Trainer battles still scale evolution.
- Wild mon level scaling is reduced and capped at level 35.
- HM moves can be forgotten. Softlocking should be impossible since Cinnebar is accessible by foot, and everywhere else you can always black out.

## Type changes:

| Pokemon   | Original Type |  New Type | Notes |
|----------|:-------------:|:------:|:------:|
| Scythero | Bug | Bug/Normal |  |
| Morphus |  Poison |  Poison/Normal |  |
| Laprince | Water/Ice | Rock/Ice | Differentiate more from Lapras, Rock-type fits because the dex entry says this is effectively a fossil mon |

## Encounter changes:

- Wakkazoid no longer found in Safari Zone to make the static encounter more special.
- Stage 2 and higher mons replaced with their stage 1 versions.

## Other changes:

- Try to fix trainer payouts? Need to check the logic for how viable this is.
- "Mew under the truck" event.
