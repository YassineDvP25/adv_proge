import 'package:advancecourse/core/networking/api_error_handler.dart';
import 'package:advancecourse/core/networking/api_result.dart';
import 'package:advancecourse/features/home/data/apis/home_apis_service.dart';
import 'package:advancecourse/features/home/data/models/specialization_response_model.dart';

class HomeRepo {

  final HomeApisService homeApisService;
  HomeRepo( this.homeApisService);
  Future<ApiResult<SpecializationsResponseModel>> getSpecialization ()async {
    try {
      final response = await homeApisService.getSpecialization();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}