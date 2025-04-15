import 'package:catalog_app/practice%20Directory/HomePrac.dart';
import 'package:catalog_app/screens/HomeScreen.dart';
import 'package:flutter/material.dart';

class loginPrac extends StatefulWidget {
  const loginPrac({super.key});

  @override
  State<loginPrac> createState() => _loginPracState();
}

class _loginPracState extends State<loginPrac> {

  TextEditingController nameCon = TextEditingController();
  final _formKey = GlobalKey<FormState>(); //Global<State>;
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
            children: [
            Image.asset("assets/Assets/images/login.png"),

        Text('wellcome $nameCon'),

        TextFormField(key: _formKey,
          controller: nameCon,
          decoration: InputDecoration(
              labelText: " please Enter Usename"
          ),
          validator: (anyValue) {
            if (anyValue!.isEmpty) {
              return 'please enter username';
            } else {
              return null;
            }
          },
        ),

        SizedBox(height: 30,),

        TextFormField(
          decoration: InputDecoration(
              labelText: "Please Enter Password "
          ),

          validator: (anyValue) {
            if (anyValue!.isEmpty) {
              return 'please Enter password ';
            }
            if (anyValue!.length < 6) {
              return "passwod must be greater than six digit";
            } else {
              return null;
            }
          },
        ),
        ElevatedButton(onPressed: ()  { if(_formKey.currentState!.validate())
          {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Homeprac(),));
          }
        }, child: Row(
            children: [
            Text('login'),
          Icon(Icons.login),
          ],
        ))],
    )
    ,
    );
  }
}
