import 'package:flutter/material.dart';
import 'package:sellbeta_demo/Shared/customtextField.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      color: Colors.grey.withOpacity(0.4),
      child: ListView(
        children: [
          Row(
            children: [
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(16.0),
                  padding: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Icon(Icons.arrow_back_ios,
                      color: Colors.black, size: 20.0)),
              Text('Sign In',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500)),
            ],
          ),
          CustomTextFeild1(
            margin: EdgeInsets.all(16.0),
            readOnly: false,
            hintName: 'Enter Email ID',
            obscureText: false,
          ),
          CustomTextFeild1(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            readOnly: false,
            hintName: 'Enter Password',
            obscureText: true,
            maxLines: 1,
          ),
          SizedBox(height: 16.0),
          Container(
              alignment: Alignment.center,
              height: 50.0,
              color: Colors.orange,
              margin: EdgeInsets.all(16.0),
              child: Text('Log In',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
          SizedBox(height: 16.0),
          Text('Forgot Password ?',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500)),
          SizedBox(height: 16.0),
          Container(
            width: size.width - 16.0,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    color: Colors.black,
                    height: 1.0,
                    width: size.width * 0.32,
                  ),
                  Text('Or',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500)),
                  Container(
                    color: Colors.black,
                    height: 1.0,
                    width: size.width * 0.3,
                  )
                ]),
          ),
          SizedBox(height: 16.0),
          Container(
              alignment: Alignment.center,
              height: 50.0,
              color: Colors.red,
              margin: EdgeInsets.all(16.0),
              child: Text('Connect with Google',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
          Container(
              alignment: Alignment.center,
              height: 50.0,
              color: Colors.blue,
              margin: EdgeInsets.all(16.0),
              child: Text('Connect with Facebook',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500)))
        ],
      ),
    ));
  }
}
