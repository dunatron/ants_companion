part of '../local_ants_list.dart';

const shieldWarden = Ant(
  id: AntId.shieldWarden,
  name: 'Shield Warden',
  scientificName: 'Cataulacus huberi',
  species: ScientificSpecies.cataulacusHuberi,
  type: AntType.guardian,
  role: AntRole.support,
  tierTags: [
    ...shieldWardenPveTags,
    ...shieldWardenPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.cataulacusHuberi,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.myrmicinae,
    tribe: ScientificTribe.crematogastrini,
    genus: ScientificGenus.cataulacus,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Cataulacus_huberi',
    ),
  ],
);

const shieldWardenPveTags = [
  AntPveTierTag(
    rating: TierRating.d,
    antType: AntType.guardian,
    rowPosition: RowPosition.middle,
  ),
];

const shieldWardenPvpTags = [
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
  ),
];
