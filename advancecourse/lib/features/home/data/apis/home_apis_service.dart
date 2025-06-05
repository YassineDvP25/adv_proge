import 'package:advancecourse/core/networking/api_constants.dart';
import 'package:advancecourse/features/home/data/apis/home_api_constance.dart';
import 'package:advancecourse/features/home/data/models/specialization_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'home_apis_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class HomeApisService {
    factory HomeApisService(Dio dio ,  {String baseUrl, ParseErrorLogger errorLogger}) = _HomeApisService;

  @GET(HomeApiConstance.specializationEP)
  Future<SpecializationsResponseModel> getSpecialization();
}