import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/graveyard_model.dart';
import 'graveyard_ctrl.dart';

final getAllGraveyardProvider =
    FutureProvider.autoDispose<List<Graveyard>>((ref) async {
  final data = ref.read(graveyardRepositoryProvider);

  final graves = await data.getAllGraveyard();
  return graves;
});

final getGraveyard =
    FutureProvider.family.autoDispose<Graveyard, String>((ref, id) async {
  final data = ref.read(graveyardRepositoryProvider);
  final grave = await data.getGraveyard(id);
  return grave;
});
