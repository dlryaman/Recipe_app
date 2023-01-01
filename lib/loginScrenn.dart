import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class LoginScrenn extends StatefulWidget {

  @override
  State<LoginScrenn> createState() => _LoginScrennState();
}

Widget buildEmail()  {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Email Adress',
        style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold

        )
      ),
      SizedBox(height: 5),
      Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0,2)
            )
          ]
        ),
        height: 60,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.black87

          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top:14),
            hintText: '@hotmail.com',
            hintStyle: TextStyle(
              color: Colors.black38
            )
          ),
        ),
      )
    ],
  );
}

Widget buildPassword()  {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
          'Password',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,

          )
      ),
      SizedBox(height: 10),
      Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0,2)
              )
            ]
        ),
        height: 60,
        child: TextField(
          obscureText: true,
          style: TextStyle(
              color: Colors.black87

          ),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top:14),
              hintText: '********',
              hintStyle: TextStyle(
                  color: Colors.black38
              )
          ),
        ),
      )
    ],
  );
}




class _LoginScrennState extends State<LoginScrenn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.topRight,
                        colors: [
                          Color(0xfffcf3c0),
                          Color(0xfffde38e),
                          Color(0xfffed45d),
                          Color(0xffffc837),
                        ]
                    )
                ),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 100
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Recipe',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 90),
                      buildEmail(),
                      SizedBox(height: 5),
                      buildPassword(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  }






