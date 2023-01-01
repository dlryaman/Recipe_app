import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'colors.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        backgroundColor: Colors.orangeAccent,

        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                child:  Image(image: AssetImage("assets/img.png"))
            ),
            Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Username'
                )
                ),
              Container(
                decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(35),
                padding: const EdgeInsets.all(10),
                 child: TextField(
                controller: nameController,
                   labelText: 'Nickname',
                ),
              ),
            ),
            Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Password',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '*******',
                ),
              ),
            ),
            Row(
              children: <Widget>[
                const Text('Forgot to'),
                TextButton(
                  child: const Text(
                    'Password',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            Container(
                alignment: Alignment.bottomCenter,
                height: 50,
                padding: const EdgeInsets.fromLTRB(5, 0, 0, 10),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Dont have an account yet?'),
                SizedBox(height: 55),
                TextButton(
                  child:const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {}
                  //signup screen
                    )
              ],

            ),
            ]

        )

        );

  }
}



