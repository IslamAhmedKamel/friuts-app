import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_app/core/network/supabase_client.dart';
import 'package:fruits_app/core/observe.dart';
import 'package:fruits_app/core/utils/DI/dependins_injction.dart';
import 'package:fruits_app/root_app.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://tabpovlrgyuvqindfqqu.supabase.co',
    publishableKey: 'sb_publishable_ZkxBBE82OaG7wYlZhNzTKA_BQkkp3t1',
  );
  await GoogleSignIn.instance.initialize(
    serverClientId: 'YOUR_WEB_CLIENT_ID.apps.googleusercontent.com',
  );

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  setupLocator();
  log("******${SupabaseClientService().currentUser?.email??"مفيش حد مسجل دخول لحد دلوقتي"}");

  Bloc.observer = AppBlocObserver();
  runApp(const FruitsApp());
}
