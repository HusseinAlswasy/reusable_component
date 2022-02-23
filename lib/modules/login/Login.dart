import 'package:flutter/material.dart';

import '../../shared/componentes/componentes.dart';

class LoginScreen extends StatefulWidget {

      LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();
  bool isPass=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Center(
          child: Text(
            'LOGIN',
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key:formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              const Center(
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              deafultFormFeild(
                label:'Email',
                hint: 'Email',
                prefix:Icons.email,
                email: emailController,
                onSbmite: (v){
                  print(v);
                },
                type:TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 20.0,
              ),
              deafultFormFeild(
                isPass: isPass,
                SuffixPressed: (){
                 setState(() {
                   isPass = !isPass;
                 });
                },
                label:'password',
                hint: 'password',
                prefix:Icons.lock,
                sufix:isPass?Icons.visibility:Icons.visibility_off,
                email: passwordController,
                onSbmite: (v){
                  print(v);
                },
                type:TextInputType.visiblePassword,
              ),
              const SizedBox(
                height: 20.0,
              ),
              deafultButton(
                  text: 'Login',
                function: (){
                    if(formKey.currentState!.validate()){
                      print(emailController.text);
                      print(passwordController.text);
                    }
                }
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'You Already have a account?',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
