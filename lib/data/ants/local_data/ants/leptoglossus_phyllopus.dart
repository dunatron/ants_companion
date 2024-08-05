part of '../local_ants_list.dart';

const leptoglossusPhyllopus = Ant(
  id: 'leptoglossus_phyllopus',
  name: 'Leptoglossus Phyllopus',
  description: '',
  scientificName: 'Leptoglossus Phyllopus',
  type: AntType.carrier,
  role: AntRole.support,
  tierTags: [
    ...leptoglossusPhyllopusPveTags,
    ...leptoglossusPhyllopusPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: 'Leptoglossus Phyllopus',
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hemiptera,
    // subOrder: Heteroptera
    infraorder: null,
    family: ScientificFamily.coreidae,
    subfamily: null,
    tribe: null,
    genus: ScientificGenus.leptoglossus,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.wikipedia,
      subUrl: 'Leptoglossus_phyllopus',
    ),
  ],
);

const leptoglossusPhyllopusPveTags = [];
const leptoglossusPhyllopusPvpTags = [];
