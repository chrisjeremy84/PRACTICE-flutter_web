import 'package:flutter/material.dart';

class LoginUI extends StatelessWidget {
  const LoginUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///Adding  the following  variables
    ///1. form
    ///2. text field
    ///3. textediting controller

    final _formKey = GlobalKey<FormState>();
    final TextEditingController username = new TextEditingController();
    final TextEditingController password = new TextEditingController();

    //Username TextForm Field
    final TextFormField usText = TextFormField(
      controller: username,
      style: TextStyle(color: Colors.black, fontSize: 16),
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Please enter your email!");
        }
        // reg expression for email validation
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-z0-9.-]+.[a-z]").hasMatch(value)) {
          return ("Please Enter a valid email");
        }
        return null;
      },
      onSaved: (value) {
        username.text = value!;
      },
    );

    //Password Textform field
    final TextFormField passwordText = TextFormField(
      controller: password,
      style: TextStyle(color: Colors.black, fontSize: 16),
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          hintStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text(
            'Login',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(5),
          color: Colors.blueAccent.shade200,
          child: Column(children: <Widget>[
            //ADD UI
          ]),
        ));
  }
}

///To do:
///-> Style Textfield  and  configure background
///-> Add place holder
///-> Listen  to the form state
///-> Test validator
