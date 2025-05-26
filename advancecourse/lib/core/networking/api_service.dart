import 'package:advancecourse/core/networking/api_constants.dart';
import 'package:advancecourse/features/login/data/models/login_request_body.dart';
import 'package:advancecourse/features/login/data/models/login_response_body.dart';
import 'package:advancecourse/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:advancecourse/features/sign_up/data/models/sign_up_response_body.dart';
import 'package:retrofit/error_logger.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl, ParseErrorLogger errorLogger}) =
      _ApiService;




  //! Login
  @POST(ApiConstants.loginEndpoint)
  Future<LoginResponseBody> login(@Body() LoginRequestBody loginRequestBody);

  //! Sign Up
    @POST(ApiConstants.signUpEndpoint)
  Future<SignUpResponseBody> signUp(@Body() SignUpRequestBody signUpRequestBody);
     
}

 

  // @POST(ApiConstannts.registerEndpoint)
  // Future<RegisterResponse> register(@Body() RegisterRequest registerRequest);

  // @GET(ApiConstannts.fetchUserEndpoint)
  // Future<UserResponse> fetchUser();

  // @PUT(ApiConstannts.updateUserEndpoint)
  // Future<UpdateUserResponse> updateUser(@Body() UpdateUserRequest updateUserRequest);

  // @DELETE(ApiConstannts.deleteUserEndpoint)
  // Future<DeleteUserResponse> deleteUser();

  // @GET(ApiConstannts.fetchPostsEndpoint)
  // Future<List<PostResponse>> fetchPosts();

  // @POST(ApiConstannts.createPostEndpoint)
  // Future<CreatePostResponse> createPost(@Body() CreatePostRequest createPostRequest);

  // @PUT(ApiConstannts.updatePostEndpoint)
  // Future<UpdatePostResponse> updatePost(@Body() UpdatePostRequest updatePostRequest);

  // @DELETE(ApiConstannts.deletePostEndpoint)
  // Future<DeletePostResponse> deletePost();

  // @GET(ApiConstannts.fetchCommentsEndpoint)
  // Future<List<CommentResponse>> fetchComments();

  // @POST(ApiConstannts.createCommentEndpoint)
  // Future<CreateCommentResponse> createComment(@Body() CreateCommentRequest createCommentRequest);

  // @PUT(ApiConstannts.updateCommentEndpoint)