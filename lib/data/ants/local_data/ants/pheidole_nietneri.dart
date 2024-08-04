part of '../local_ants_list.dart';

const pheidoleNietneri = Ant(
  id: 'pheidole_nietneri',
  name: 'Pheidole Nietneri',
  description: 'Pheidole nietneri',
  scientificName: '',
  type: AntType.guardian,
  role: AntRole.melee,
  tierTags: [
    ...pheidoleNietneriPveTags,
    ...pheidoleNietneriPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: 'Pheidole nietneri',
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
    rating: TierRating.f,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason: terribleForPveF,
  ),
];

const pheidoleNietneriPvpTags = [
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason: 'One of the best guardian front liners',
  ),
];
