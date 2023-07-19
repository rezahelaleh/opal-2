import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:localstorage/localstorage.dart';
import 'package:get_storage/get_storage.dart';
import 'app.dart';

Future<void> main() async {



  await GetStorage.init();

  final box = GetStorage();
  // box.remove('splash');
  final opatan = box.read('splash');
  if( opatan == null ){
    box.write('splash', true);
  }
  // box.write('splash', true);


  
  runApp(const MyApp());
}



