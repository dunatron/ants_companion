part of '../local_ants_list.dart';

const goldenSugar = Ant(
  id: AntId.goldenSugar,
  name: 'Golden Sugar',
  scientificName: 'Camponotus sericeiventris',
  species: ScientificSpecies.camponotusSericeiventris,
  type: AntType.universal,
  role: AntRole.ranged,
  tierTags: [
    ...goldenSugarPveTags,
    ...goldenSugarPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.camponotusSericeiventris,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.formicinae,
    tribe: ScientificTribe.camponotini,
    genus: ScientificGenus.camponotus,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Camponotus_sericeiventris',
    ),
    AntExternalLink(
      type: AntExternalLinkType.wikipedia,
      subUrl: 'Camponotus_sericeiventris',
    ),
  ],
);

const goldenSugarPveTags = [
  AntPveTierTag(
    rating: TierRating.b,
    antType: AntType.guardian,
    rowPosition: RowPosition.back,
  ),
  AntPveTierTag(
    rating: TierRating.b,
    antType: AntType.shooter,
    rowPosition: RowPosition.back,
  ),
  AntPveTierTag(
    rating: TierRating.b,
    antType: AntType.carrier,
    rowPosition: RowPosition.back,
  ),
];

const goldenSugarPvpTags = [
  AntPvpTierTag(
    rating: TierRating.d,
    antType: AntType.universal,
    rowPosition: RowPosition.back,
  ),
];
