import 'package:flutter/material.dart';
import 'package:khuntuu/utility/my_constant.dart';
import 'package:khuntuu/widgets/show_image.dart';
import 'package:khuntuu/widgets/show_title.dart';

class Authen extends StatefulWidget {
  const Authen({Key? key}) : super(key: key);

  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  bool statusRedEye = true;

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(
              FocusScopeNode()), //ต้องการเอาคีบอร์ดลง หรือหมายถึง ออกจากโฟกัส
          behavior: HitTestBehavior.opaque,
          child: ListView(
            children: [
              buildImage(size),
              buildAppName(),
              greeting(),
              buildUser(size),
              buildPassword(size),
              buildLogin(size),
              buildAccount(),
            ],
          ),
        ),
      ),
    );
  }

  Row greeting() {
    return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(margin: EdgeInsets.symmetric(vertical: 16),
                  child: ShowTitle(
                    title: "Welcome!!",
                    textStyle: MyConstant().h1Style(),
                  ),
                ),
              ],
            );
  }

  Row buildAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShowTitle(
            title: "Do not have an account?",
            textStyle: MyConstant().h3Style()),
        TextButton(
          onPressed: () =>
              Navigator.pushNamed(context, MyConstant.routeCreateAccount),
          child: Text('Create Account'), //text ที่คลิกได้
        ),
      ],
    );
  }

  Row buildLogin(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(
              vertical: 16), //ต้องการให้ button ห่างทั้งด้านบนด้านล่าง
          width: size * 0.6,
          child: ElevatedButton(
            style: MyConstant().myButtonStyle(),
            onPressed: () {},
            child: Text('Login'),
          ),
        ),
      ],
    );
  }

  Row buildUser(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16),
          width: size * 0.7,
          child: TextFormField(
            decoration: InputDecoration(
              labelStyle: MyConstant().h3Style(),
              labelText: 'User Name',
              prefixIcon: Icon(
                Icons.account_circle,
                color: MyConstant.dark,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyConstant.dark),
                borderRadius: BorderRadius.circular(30),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyConstant.font1),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row buildPassword(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16),
          width: size * 0.7,
          child: TextFormField(
            obscureText: statusRedEye,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    statusRedEye = !statusRedEye;
                  });
                },
                icon: statusRedEye
                    ? Icon(
                        Icons.remove_red_eye_outlined,
                        color: MyConstant.dark,
                      )
                    : Icon(
                        Icons.remove_red_eye,
                        color: MyConstant.dark,
                      ),
              ),
              labelStyle: MyConstant().h3Style(),
              labelText: 'Password',
              prefixIcon: Icon(
                Icons.lock_outline,
                color: MyConstant.dark,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyConstant.dark),
                borderRadius: BorderRadius.circular(30),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyConstant.font1),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row buildAppName() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShowTitle(
          title: MyConstant.appName,
          textStyle: MyConstant().h2Style(),
        ),
      ],
    );
  }

  Row buildImage(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(width: size * 0.6, child: ShowImage(path: MyConstant.image1)),
      ],
    );
  }
}
