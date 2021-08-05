import 'package:flutter/material.dart';
import 'package:khuntuu/States/Notification.dart';
import 'package:khuntuu/States/driver_map.dart';
import 'package:khuntuu/States/driver_profile.dart';
import 'package:khuntuu/States/driver_register.dart';
import 'package:khuntuu/States/finished.dart';
import 'package:khuntuu/States/loggin_in.dart';
import 'package:khuntuu/States/sign_in.dart';
import 'package:khuntuu/States/user_banking.dart';
import 'package:khuntuu/States/user_confirm.dart';
import 'package:khuntuu/States/user_manage.dart';
import 'package:khuntuu/States/user_map.dart';
import 'package:khuntuu/States/user_profile.dart';
import 'package:khuntuu/utility/my_constant.dart';

final Map<String , WidgetBuilder> map = {
  '/authen':(BuildContext context)=>Authen(),
  '/loggin_in' :(BuildContext context)=>CreateAccount(),
  'user_profile' :(BuildContext context)=>UserProfile(),
  'user_manage' :(BuildContext context)=>UserManage(),
  'user_map' :(BuildContext context)=>UserMap(),
  'user_bank' :(BuildContext context)=>UserBank(),
  'Notification' :(BuildContext context)=>Notifications(),
  'user_confirm' :(BuildContext context)=>UserConfirm(),
  'finished' :(BuildContext context)=>Finished(),
  'driver_register' :(BuildContext context)=>DriverRegister(),
  'driver_profile' :(BuildContext context)=>DriverProfile(),
  'driver_map' :(BuildContext context)=>DriverMap(),
};

String? initialRoute;

void main(){
  initialRoute = MyConstant.routeAuthen;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MyConstant.appName,
      routes: map,
      initialRoute:initialRoute,

    );
  }
}