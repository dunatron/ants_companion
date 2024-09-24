- [Flutter flavors, App Icons etc](https://www.youtube.com/watch?v=Vhm1Cv2uPko)

## Running a flavor

```bash
flutter run --flavor development
```

```bash
flutter run --flavor development -t lib/main_development.dart
```

```bash
flutter run --flavor production -t lib/main_production.dart
```

## Release android flavor

```bash
flutter build appbundle --flavor production
```

```bash
flutter build appbundle --flavor production --target lib/main_production.dart
```
