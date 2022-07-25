import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget 
{
  const LoginScreen({Key? key}) : super(key: key);

  @override
  createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> with ValidationMixin
{
  final formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  @override
  
  Widget build(context) 
  {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column (
          children: [
            emailField(),
            passwordField(),
            Container(margin: const EdgeInsets.only(bottom: 25.0),),
            submitButton(),
        ],) 
      ),
    );
  }

  Widget emailField () 
  {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        icon: Icon(Icons.email),
        labelText: 'Email',
        hintText: 'example@gmail.com',
      ),
      validator: validateEmail,
      onSaved: (value) => email = value.toString(),
    );
  }
  
  Widget passwordField () 
  {
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
        icon: Icon(Icons.password),
        labelText: 'Password',
        hintText: 'password',
      ),
      validator: validatePassword,
      onSaved: (value) => password = value.toString(),
    );
  }

  Widget submitButton () 
  {
    return ElevatedButton(
      onPressed: () 
      {
        if(formKey.currentState!.validate()) 
        {
          formKey.currentState!.save();
          print('Time to send $email and ${password.hashCode} to an API');
        }
      }, 
      //style: ElevatedButton.styleFrom(primary: Colors.blueGrey,),
      child: const Text('Log In')
      );
  }

}