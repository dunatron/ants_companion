class AntExternalLink {
  const AntExternalLink({required this.type, required this.subUrl});

  final AntExternalLinkType type;

  final String subUrl;

  String get fullLink => switch (type) {
        AntExternalLinkType.antWiki => 'https://www.antwiki.org/wiki/$subUrl',
        AntExternalLinkType.wikipedia =>
          'https://en.wikipedia.org/wiki/$subUrl',
      };
}

enum AntExternalLinkType { antWiki, wikipedia }
