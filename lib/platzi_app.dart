  import 'package:flutter/material.dart';


import 'app/app_cubit/app_cubit.dart';
import 'app/env.dart';
import 'core/local_data/pref_keys.dart';
import 'core/local_data/shared_pref.dart';

         class AppPlatzi extends StatelessWidget {
           const AppPlatzi({super.key});

           @override
           Widget build(BuildContext context) {
             return MaterialApp(
               home: Scaffold(
                 body: Center(child: Text("home")),
               ),
             );
           }
         }
         
