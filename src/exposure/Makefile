generate:
	flutter pub run build_runner watch --delete-conflicting-outputs

reviewable:
	flutter analyze
	flutter test

apk:
	flutter build apk --obfuscate --split-debug-info --split-per-abi
