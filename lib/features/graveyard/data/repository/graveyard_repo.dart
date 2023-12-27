import 'package:flutter/foundation.dart';
import 'package:startup_graveyard/features/graveyard/models/graveyard_model.dart';
import '../../../../config/app_strings.dart';
import '../../../../utils/show_toast.dart';
import '../api/graveyard_apis.dart';

abstract class GraveyardRepositoryAbstract {
  Future<List<Graveyard>> getAllGraveyard();
  Future<Graveyard> getGraveyard(String id);
}

class GraveyardRepository implements GraveyardRepositoryAbstract {
  final GraveyardServiceClient _graveyardServiceClient;

  GraveyardRepository(this._graveyardServiceClient);

  @override
  Future<List<Graveyard>> getAllGraveyard() async {
    try {
      final result = await _graveyardServiceClient.getAllGraveyard();
      if (result.data != null) {
        return result.data!;
      } else {
        ShowToast.showErrorText(text: AppStrings.unknownError);
        throw (AppStrings.unknownError);
      }
    } catch (e) {
      debugPrint(e.toString());
      if (e == 'No graveyard found') {
        rethrow;
      }
      rethrow;
    }
  }

  @override
  Future<Graveyard> getGraveyard(String id) async {
    try {
      final result = await _graveyardServiceClient.getGraveyard(id);

      if (result.data != null) {
        return result.data!;
      } else {
        ShowToast.showErrorText(text: result.message.toString());
        throw ('Something happened please try again');
      }
    } catch (e) {
      ShowToast.showErrorText(text: e.toString());
      debugPrint(e.toString());
      rethrow;
    }
  }
}
