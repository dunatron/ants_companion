import 'dart:io';

void main() {
  generateL10nYaml();
}

void generateL10nYaml() {
  const envFilePath = 'generate_l10n_yaml/l10n.env';
  const l10nYamlFilePath = './l10n.yaml';

  final envFile = File(envFilePath);
  if (!envFile.existsSync()) {
    print('Error: l10n.env file not found');
    exit(1);
  }

  // create a map from env variables
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

  for (var key in env.keys) {
    print('$key: ${env[key]}');
  }

  // Define the default values if environment variables are not set
  final arbGeminiKey = env['ARB_GEMINI_KEY'] ?? 'ARB_GEMINI_KEY_UNDEFINED';

  // add this line too if using Open ai model
  // arb-translate-model-provider: open-ai

  final l10nFile = File(l10nYamlFilePath);
  l10nFile.writeAsStringSync('''
arb-dir: lib/l10n/arb
template-arb-file: app_en.arb
output-localization-file: app_localizations.dart
nullable-getter: false
untranslated-messages-file: l10n_errors.txt
arb-translate-api-key: $arbGeminiKey
''');

  print('l10n.yaml file generated successfully');
}
