part of '../local_ants_list.dart';

const bloodGiant = Ant(
  id: 'blood_giant',
  name: 'Blood Giant',
  scientificName: 'Nomamyrmex esenbeckii',
  species: Species.ant,
  description: 'Distributed in the American continent, from the southern '
      'United States to the Amazon rainforest.\n'
      'They are one of the most widely distributed army ants in the world.\n'
      'They are fierce and powerful and often attack other ant nests.',
  type: AntType.carrier,
  role: AntRole.support,
  tierTags: [
    ...bloodGiantPveTags,
    ...bloodGiantPvpTags,
  ],
);

const bloodGiantPveTags = [
  AntPveTierTag(
    rating: TierRating.f,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
    reason: terribleForPveF,
  ),
];
const bloodGiantPvpTags = [
  AntPvpTierTag(
    rating: TierRating.c,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
    reason: betterOptionsAvailableC,
  ),
];
