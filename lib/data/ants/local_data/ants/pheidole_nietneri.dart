part of '../local_ants_list.dart';

const pheidoleNietneri = Ant(
  id: AntId.pheidoleNietneri,
  name: 'Pheidole Nietneri',
  scientificName: 'Pheidole Nietneri',
  species: ScientificSpecies.pheidoleNietneri,
  type: AntType.guardian,
  role: AntRole.melee,
  tierTags: [
    ...pheidoleNietneriPveTags,
    ...pheidoleNietneriPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.pheidoleNietneri,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.myrmicinae,
    tribe: ScientificTribe.attini,
    genus: ScientificGenus.pheidole,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Pheidole_nietneri',
    ),
    AntExternalLink(
      type: AntExternalLinkType.wikipedia,
      subUrl: 'Pheidole_nietneri',
    ),
  ],
);

const pheidoleNietneriPveTags = [
  AntPveTierTag(
    rating: TierRating.d,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
  ),
];

const pheidoleNietneriPvpTags = [
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
  ),
];
