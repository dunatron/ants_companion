part of '../local_ants_list.dart';

const blackKnight = Ant(
  id: 'black_knight',
  name: 'Black Knight',
  description: '',
  scientificName: '',
  type: AntType.guardian,
  role: AntRole.melee,
  tierTags: [
    ...blackKnightPveTags,
    ...blackKnightPvpTags,
  ],
);

const blackKnightPveTags = [];
const blackKnightPvpTags = [];
