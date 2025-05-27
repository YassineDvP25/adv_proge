import 'package:advancecourse/core/di/dependency_injection.dart';
import 'package:advancecourse/core/routing/app_router.dart';
import 'package:advancecourse/doc_app.dart';
import 'package:flutter/widgets.dart';

void main() {
  

  setUpGetIt();
  runApp(DocApp(approuter: AppRouter()));
}
