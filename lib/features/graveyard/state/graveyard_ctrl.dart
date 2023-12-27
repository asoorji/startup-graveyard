import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../state/di_provider.dart';
import '../data/api/graveyard_apis.dart';
import '../data/repository/graveyard_repo.dart';

final graveyardRemoteDataSourceProvider =
    Provider<GraveyardServiceClient>((ref) {
  final dio = ref.watch(dioProvider);
  final getDio = dio.getDio();

  return GraveyardServiceClient(getDio);
});

final graveyardRepositoryProvider = Provider<GraveyardRepository>((ref) {
  final appService = ref.watch(graveyardRemoteDataSourceProvider);
  return GraveyardRepository(appService);
});
