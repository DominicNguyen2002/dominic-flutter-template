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
