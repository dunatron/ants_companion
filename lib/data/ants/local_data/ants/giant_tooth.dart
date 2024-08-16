part of '../local_ants_list.dart';

const giantTooth = Ant(
    id: 'giant_tooth',
    name: 'Giant Tooth',
    description: '',
    scientificName: 'Odontomachus coquereli',
    type: AntType.universal,
    role: AntRole.support,
    tierTags: [
      ...giantToothPveTags,
      ...giantToothPvpTags,
    ],
    scientificClassification: AntScientificClassification(
      species: ScientificSpecies.odontomachusCoquereli,
      phylum: ScientificPhylum.arthropoda,
      subphylum: null, // missing
      classification: ScientificClassification.insecta,
      order: ScientificOrder.hymenoptera,
      infraorder: null,
      family: ScientificFamily.formicidae,
      subfamily: ScientificSubfamily.ponerinae,
      tribe: ScientificTribe.ponerini,
      genus: ScientificGenus.odontomachus,
    ),
    externalLinks: [
      AntExternalLink(
        type: AntExternalLinkType.antWiki,
        subUrl: 'Odontomachus_coquereli',
      ),
    ]);

const giantToothPveTags = [
  AntPveTierTag(
    rating: TierRating.b,
    antType: AntType.universal,
    rowPosition: RowPosition.front,
    reason: notTheWorstB,
  ),
];
const giantToothPvpTags = [
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.universal,
    rowPosition: RowPosition.front,
    reason: '',
  ),
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.universal,
    rowPosition: RowPosition.middle,
    reason: '',
  ),
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.gss,
    rowPosition: RowPosition.front,
    reason: '',
  ),
];
