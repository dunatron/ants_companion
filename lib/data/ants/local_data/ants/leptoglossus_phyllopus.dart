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
);

const leptoglossusPhyllopusPveTags = [];
const leptoglossusPhyllopusPvpTags = [];
