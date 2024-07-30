part of '../local_ants_list.dart';

const procryptocerusAdlerzi = Ant(
  id: 'procryptocerus_adlerzi',
  name: 'Procryptocerus Adlerzi',
  description: '',
  type: AntType.guardian,
  role: AntRole.melee,
  tierTags: [
    ...procryptocerusAdlerziPveTags,
    ...procryptocerusAdlerziPvpTags,
  ],
);

const procryptocerusAdlerziPveTags = [
  AntPveTierTag(
    rating: TierRating.f,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason: terribleForPveF,
  ),
];

const procryptocerusAdlerziPvpTags = [
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason:
        'One of the meatiest of all ants. Of course this is an S tier front liner for PVP',
  ),
];
