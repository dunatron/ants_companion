part of '../local_ants_list.dart';

const giantTooth = Ant(
    id: 'giant_tooth',
    name: 'Giant Tooth',
    scientificName: 'Odontomachus coquereli',
    species: ScientificSpecies.odontomachusCoquereli,
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
  ),
];
const giantToothPvpTags = [
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.universal,
    rowPosition: RowPosition.front,
  ),
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.universal,
    rowPosition: RowPosition.middle,
  ),
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.gss,
    rowPosition: RowPosition.front,
  ),
];
