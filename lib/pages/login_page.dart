import 'package:flutter/material.dart';
import 'package:sign_scribe_2/components/my_button.dart';
import 'package:sign_scribe_2/components/my_textfield.dart';

class LoginPage extends StatelessWidget {



final void Function()? onTap; 

   LoginPage({super.key, required this.onTap});

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
  // login method

  void login(){}
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
                  "Welcome Back!",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
          
          const SizedBox(height: 20),
          
          
            //email 
            MyTextField(hintText: "Email", obscureText: false, controller: emailController),
            //password
          
          const SizedBox(height: 20),
          MyTextField(hintText: "Password", obscureText: true, controller: passwordController), 


            //forgot password 
            const SizedBox(height: 10), 
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontSize: 15,
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
              ],
            ),
                   
            //signin button
            const SizedBox(height: 10),

          MyButton(text:"Login", onTap: login ),

          
            //dont have an acc sign up
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Dont have an account? ",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary
                ),),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    "Register Here",
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
