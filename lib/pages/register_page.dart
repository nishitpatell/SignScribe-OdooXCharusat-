import 'package:flutter/material.dart';
import 'package:sign_scribe_2/components/my_button.dart';
import 'package:sign_scribe_2/components/my_textfield.dart';

class RegisterPage extends StatelessWidget {

  final void Function()? onTap;
   RegisterPage({super.key, required this.onTap});

final TextEditingController emailController = TextEditingController();
final TextEditingController usernameController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
final TextEditingController confirmController = TextEditingController();



  // register method

  void register(){}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          
              //logo
              Image.asset(
                'lib/images/SignScribe.png', 
                height: 200, 
                width: 200),
          
          
                const SizedBox(height: 20),
                Text(
                  "Welcome to Sign Scribe!",
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
          
          const SizedBox(height: 20),
          
          
            //email 
            MyTextField(hintText: "Email", obscureText: false, controller: emailController),
                      
            //username 
            const SizedBox(height: 20,),
            MyTextField(hintText: "Username", obscureText: false, controller: usernameController),

            //password
          const SizedBox(height: 20),
          MyTextField(hintText: "Password", obscureText: true, controller: passwordController), 
          
          //confirm password
          const SizedBox(height: 20),
          MyTextField(hintText: "Confirm Password", obscureText: true, controller: confirmController), 

                   
            //register button
            const SizedBox(height: 10),

          MyButton(text:"Register", onTap: register ),

          
            //dont have an acc sign up
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account? ",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary
                ),),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    "Login Here",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )
                  ),
                )
              ],
            )
          
          
          
            ],
          
          
                    ),
        )
      )
    );
  }
}
