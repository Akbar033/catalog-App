import 'package:catalog_app/utility/routes.dart';
import 'package:catalog_app/widgets/CustomAppbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //final TextEditingController  nameField = TextEditingController();
  bool ChangeButton = false;

  //String? name;
  String name = "";
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        ChangeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeroute);
      setState(() {
        ChangeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Scaffold(
        appBar: CustomAppBar(),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(children: [
              Image.asset(
                'Assets/images/login.png',
                height: 200,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Wellcome $name',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 60,),
                child: TextFormField(
                  onChanged: (anyValue) {
                    name = anyValue;
                    setState(() {});
                  },

                  // both work
                  /* onChanged: (value) {
                    name = value;
                    setState(() {});
                  },*/
                  decoration: InputDecoration(
                    labelText: ' User name',
                  ),
                  validator: (anyValue) {
                    if (anyValue!.isEmpty) {
                      return "please enter yout username";
                    } else
                      return null;
                  },
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black87),
                ),
              ), //SizedBox(height: 0,),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 60),
                child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password cant be empty';
                      } else if (value!.length < 6) {
                        return 'password should be atleast 6 digit';
                      }
                      return null;
                    },
                    decoration:
                        InputDecoration(labelText: ' Enter your password'),
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black87)),
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () => moveToHome(context),
                child: AnimatedContainer(
                  child: ChangeButton
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Text(
                          'Login',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                  alignment: Alignment.center,
                  duration: Duration(seconds: 1),
                  height: 40,
                  width: ChangeButton ? 60 : 150,
                  decoration: BoxDecoration(
                      // shape: ChangeButton ? BoxShape.circle : BoxShape.rectangle,
                      borderRadius:
                          BorderRadius.circular(ChangeButton ? 180 : 8),
                      color: Colors.deepPurpleAccent),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

// syntax
// (Condition ) ? statment1  : statment 2
// (condition)? Icon ( Ions.done ) : text (' Login button')
