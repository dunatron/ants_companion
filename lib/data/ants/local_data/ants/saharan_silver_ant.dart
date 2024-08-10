part of '../local_ants_list.dart';

const saharanSilverAnt = Ant(
  id: 'saharan_silver_ant',
  name: 'Saharan Silver Ant',
  description: '',
  scientificName: 'Cataglyphis bombycina',
  type: AntType.guardian,
  role: AntRole.melee,
  tierTags: [
    ...saharanSilverAntPveTags,
    ...saharanSilverAntPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: 'Cataglyphis bombycina',
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

const saharanSilverAntPveTags = [];

const List<AntPvpTierTag> saharanSilverAntPvpTags = [
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.shooter,
    rowPosition: RowPosition.middle,
    reason: '',
  ),
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.shooter,
    rowPosition: RowPosition.back,
    reason: '',
  ),
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.gss,
    rowPosition: RowPosition.middle,
    reason: '',
  ),
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.gss,
    rowPosition: RowPosition.back,
    reason: '',
  ),
];
