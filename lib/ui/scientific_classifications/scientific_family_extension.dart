import 'package:ants_companion/domain/scientific_classifications/models/scientific_family.dart';

extension ScientificFamilyTranslationExtensions on ScientificFamily {
  String get description => switch (this) {
        ScientificFamily.mutillidae =>
          'The Mutillidae are a family of more than 7,000 species of wasps '
              'whose wingless females resemble large, hairy ants. '
              'Their common name velvet ant refers to their resemblance to an '
              'ant, and their dense pile of hair, which most often is bright '
              'scarlet or orange, but may also be black, white, silver, or '
              'gold. Their bright colors serve as aposematic signals. '
              'They are known for their extremely painful stings, '
              '(the sting of the species Dasymutilla klugii rated a 3 on '
              'the Schmidt pain index and lasts up to 30 minutes), and '
              'has resulted in the common name "cow killer" or "cow ant" '
              'being applied to the species Dasymutilla occidentalis. '
              'However, mutillids are not aggressive and sting only in '
              'defense. In addition, the actual toxicity of their venom is '
              'much lower than that of honey bees or harvester ants. '
              'Unlike true ants, they are solitary, and lack complex social '
              'systems.',
        ScientificFamily.salticidae => 'Description ToDo',
        ScientificFamily.formicidae => 'Description ToDo',
        ScientificFamily.thomisidae => 'Description ToDo',
      };
}
