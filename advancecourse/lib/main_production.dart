import 'package:advancecourse/core/di/dependency_injection.dart';
import 'package:advancecourse/core/helpers/constants.dart';
import 'package:advancecourse/core/helpers/extentions.dart';
import 'package:advancecourse/core/helpers/shared_pref_helper.dart';
import 'package:advancecourse/core/routing/app_router.dart';
import 'package:advancecourse/doc_app.dart';
import 'package:flutter/widgets.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  setUpGetIt();
    await checkIfLoggedInUser();

  runApp(DocApp(approuter: AppRouter()));
}

checkIfLoggedInUser() async {
  String? userToken = await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if(userToken.isNullOrEmpty()){
    isLogeedInUser = false;
  }else{
    isLogeedInUser = true;
  }
}
