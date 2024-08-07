import 'dart:io';

void main() {
  print('Hello, World!');
  zzzz();
}

void zzzz() {
  // Define the path to the .env file and l10n.yaml file
  final envFilePath = 'generate_l10n_yaml/l10n.env';
  final l10nYamlFilePath = './l10n.yaml';

  // Check if the .env file exists
  final envFile = File(envFilePath);
  if (!envFile.existsSync()) {
    print('Error: .env file not found');
    exit(1);
  }

  // Read the environment variables from the .env file
  final env = envFile.readAsLinesSync().fold<Map<String, String>>(
    {},
    (map, line) {
      final parts = line.split('=');
      if (parts.length == 2) {
        map[parts[0].trim()] = parts[1].trim();
      }
      return map;
    },
  );

  print(env['ARB_TRANSLATE_OPENAI_KEY']);

  // Define the default values if environment variables are not set
  final arbTemplate = env['ARB_TEMPLATE'] ?? 'app_en.arb';
  final outputFile = env['OUTPUT_FILE'] ?? 'app_localizations.dart';
  final outputClass = env['OUTPUT_CLASS'] ?? 'S';
  final outputName = env['OUTPUT_NAME'] ?? 'app_localizations';
  final translateApiKey = env['ARB_TRANSLATE_OPENAI_KEY'] ?? 'NOT_VALID_KEY';

  // Write the l10n.yaml file
//   final l10nFile = File(l10nYamlFilePath);
//   l10nFile.writeAsStringSync('''
// arb-dir: lib/l10n
// output-dir: lib/generated
// template-arb-file: $arbTemplate
// output-localization-file: $outputFile
// output-class: $outputClass
// output-name: $outputName
// ''');

  final l10nFile = File(l10nYamlFilePath);
  l10nFile.writeAsStringSync('''
arb-dir: lib/l10n/arb
template-arb-file: app_en.arb
output-localization-file: app_localizations.dart
nullable-getter: false
untranslated-messages-file: l10n_errors.txt
arb-translate-model-provider: open-ai
arb-translate-api-key: $translateApiKey
''');

  print('l10n.yaml file generated successfully');
}
