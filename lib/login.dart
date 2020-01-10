import 'package:flutter/material.dart';

class Login extends StatelessWidget {

  void validateUser(String user){
    if(user.contains('@'))
    {
      print('Valid email!');
    }
    print('User is: $user');
  }

  void validatePasswordFormat(String password){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Column(children: <Widget>[
          TextField(
            onSubmitted: validateUser, 
            decoration: const InputDecoration(hintText: 'User'),
          ),
          TextField(
            onSubmitted: validatePasswordFormat, 
            decoration: const InputDecoration(hintText: 'Password'),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Login!'),
          ),
        ],) 
      ),
    );
  }
}