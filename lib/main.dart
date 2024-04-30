import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:platzi/platzi_app.dart';

import 'app/env.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await EnvVariable.instance.init(
      envType: EnvTypeEnum.development, envTypeEnum: EnvTypeEnum.development);
  runApp(AppPlatzi());
}
