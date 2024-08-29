part of '../local_ants_list.dart';

const saharanSilverAnt = Ant(
  id: AntId.saharanSilverAnt,
  name: 'Saharan Silver Ant',
  scientificName: 'Cataglyphis bombycina',
  species: ScientificSpecies.cataglyphisBombycina,
  type: AntType.guardian,
  role: AntRole.melee,
  tierTags: [
    ...saharanSilverAntPveTags,
    ...saharanSilverAntPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.cataglyphisBombycina,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.formicinae,
    tribe: ScientificTribe.formicini,
    genus: ScientificGenus.cataglyphis,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Cataglyphis_bombycina',
    ),
  ],
);

const saharanSilverAntPveTags = [
  AntPveTierTag(
    rating: TierRating.s,
    rowPosition: RowPosition.back,
    antType: AntType.shooter,
  )
];

const List<AntPvpTierTag> saharanSilverAntPvpTags = [
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.shooter,
    rowPosition: RowPosition.middle,
  ),
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.shooter,
    rowPosition: RowPosition.back,
  ),
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.gss,
    rowPosition: RowPosition.middle,
  ),
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.gss,
    rowPosition: RowPosition.back,
  ),
];
