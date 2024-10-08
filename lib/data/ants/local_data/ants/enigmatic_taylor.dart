part of '../local_ants_list.dart';

const enigmaticTaylor = Ant(
  id: AntId.enigmaticTaylor,
  name: 'Enigmatic Taylor',
  scientificName: 'Tetramorium pulcherrimum',
  species: ScientificSpecies.tetramoriumPulcherrimum,
  type: AntType.carrier,
  role: AntRole.support,
  tierTags: [
    ...enigmaticTaylorPveTags,
    ...enigmaticTaylorPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.tetramoriumPulcherrimum,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.myrmicinae,
    tribe: null,
    genus: ScientificGenus.tetramorium,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Tetramorium_pulcherrimum',
    ),
  ],
);

const enigmaticTaylorPveTags = [
  AntPveTierTag(
    rating: TierRating.d,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
  ),
];
const enigmaticTaylorPvpTags = [
  AntPvpTierTag(
    rating: TierRating.d,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
  ),
];
