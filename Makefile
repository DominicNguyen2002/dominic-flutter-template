clean: 
	@echo "$ Cleaning the project"
	@rm -rf pubspec.lock
	@flutter clean && flutter pub get
get:
	flutter pub get
format:
	dart format .
lint:
	dart analyze
runner: 
	dart run build_runner build
pod:
	pod install --project-directory=ios
production:
	flutter run --flavor production --target lib/main_production.dart
develop:
	flutter run --flavor develop --target lib/main.dart
staging:
	flutter run --flavor staging --target lib/main_staging.dart
run test:
	flutter test test/main_test.dart
