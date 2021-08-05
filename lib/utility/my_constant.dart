//ไฟล์ทีำทการเก็บค่าคงที่ของฉัน
import 'package:flutter/material.dart';

class MyConstant{

//General
  static String appName='Khuntuu';

//Route
  static String routeAuthen = '/authen';
  static String routeCreateAccount = '/createAccount';
  static String routeUserProfile = '/user_profile';
  static String routeUserManage = '/user_manage';
  static String routeUserMap = '/user_map';
  static String routeUserBank = '/user_bank';
  static String routeNotification = '/Notification';
  static String routeUserConfirm= '/user_confirm';
  static String routeFinished = '/finished';
  static String routeDriverRegister= '/driver_register';
  static String routeDriverProfile= '/driver_profile';
  static String routeDriverMap= '/driver_map';

  //Image
  static String image1 = 'images/Image1.png';

  //Color
  static Color primary = Color(0xff3f51b5);
  static Color dark = Color(0xff000000);
  static Color light = Color(0xff757de8);
  static Color font1 = Color(0xff9ea7aa);
  //Style
  //ตัวใหญ่
  TextStyle h1Style()=>TextStyle( 
      fontSize: 24,
      color: dark,
      fontWeight: FontWeight.bold,  
  );
  //หัวข้อ
  TextStyle h2Style()=>TextStyle( 
      fontSize: 18,
      color: dark,
      fontWeight: FontWeight.w700,  
  );
  //Body
  TextStyle h3Style()=>TextStyle( 
      fontSize: 14,
      color: dark,
      fontWeight: FontWeight.normal,  
  );
    TextStyle h4Style()=>TextStyle( 
      fontSize: 30,
      color: font1,
      fontWeight: FontWeight.bold,  
  );

  ButtonStyle myButtonStyle () => ElevatedButton.styleFrom(
              primary: MyConstant.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
          );
}