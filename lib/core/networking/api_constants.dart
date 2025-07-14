class ApiConstants {

  static const String baseUrl = 'https://vcare.integration25.com/api/';


  // Endpoints
  static const String loginEndpoint = '/auth/login';
  static const String signUpEndpoint = '/auth/register';
  static const String fetchUserEndpoint = '/user/profile';
  static const String updateUserEndpoint = '/user/update';
  static const String deleteUserEndpoint = '/user/delete';
  static const String fetchPostsEndpoint = '/posts';
  static const String createPostEndpoint = '/posts/create';
  static const String updatePostEndpoint = '/posts/update';
  static const String deletePostEndpoint = '/posts/delete';
  static const String fetchCommentsEndpoint = '/comments';
  static const String createCommentEndpoint = '/comments/create';
  static const String updateCommentEndpoint = '/comments/update';
  static const String deleteCommentEndpoint = '/comments/delete';
}

class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "default Error";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}