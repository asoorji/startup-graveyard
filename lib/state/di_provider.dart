import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../data/dio_factory/dio_factory.dart';
import '../features/graveyard/data/api/graveyard_apis.dart';
import '../features/graveyard/data/repository/graveyard_repo.dart';
import 'app_prefs.dart';

final appPreferencesProvider = Provider<AppPreferences>((ref) {
  final pref = ref.watch(sharedPreferencesProvider);
  return AppPreferences(pref);
});

final dioProvider = Provider<DioFactory>((ref) {
  final appPref = ref.watch(appPreferencesProvider);
  return DioFactory(appPref);
});

final sharedPreferencesProvider =
    Provider<SharedPreferences>(((ref) => throw UnimplementedError()));
