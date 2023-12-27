import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:startup_graveyard/features/graveyard/models/graveyard_model.dart';

import '../../../../config/constants.dart';

part 'graveyard_apis.g.dart';

//strings
const String api = '/startupgraveyard';

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class GraveyardServiceClient {
  factory GraveyardServiceClient(Dio dio, {String baseUrl}) =
      _GraveyardServiceClient;

  @GET(api)
  Future<GraveyardListModelResponse> getAllGraveyard();

  @GET('$api/{id}')
  Future<GraveyardModelResponse> getGraveyard(
    @Path("id") String id,
  );
}
