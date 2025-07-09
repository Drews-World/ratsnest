import 'package:flutter/material.dart';
import 'package:ratsnestv1/LoginScreen/home_screen.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount();
  @override
  State<CreateAccount> createState() => _CreateAccount();
}

class _CreateAccount extends State<CreateAccount> {
  final emailController = TextEditingController();
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPWController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Create Account'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Create Account',
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 300),
                child: Form(
                  child: Column(
                    children: [
                      // Email Textbox

                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 750),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            hintText: 'Enter Email',
                            prefixIcon: Icon(Icons.email_sharp),
                            border: OutlineInputBorder(),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  emailController.clear();
                                },
                                icon: Icon(Icons.clear)),
                          ),
                          onChanged: (String value) {},
                          validator: (value) {
                            return value!.isEmpty ? 'Enter an Email' : null;
                          },
                          controller: emailController,
                        ),
                      ),

                      // Username Textbox

                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 750),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Username',
                            hintText: 'Enter Username',
                            prefixIcon: Icon(Icons.person_sharp),
                            border: OutlineInputBorder(),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  userNameController.clear();
                                },
                                icon: Icon(Icons.clear)),
                          ),
                          onChanged: (String value) {},
                          validator: (value) {
                            return value!.isEmpty ? 'Enter a Username' : null;
                          },
                          controller: userNameController,
                        ),
                      ),

                      // Password Textbox

                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 750),
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Enter Password',
                            prefixIcon: Icon(Icons.password_sharp),
                            border: OutlineInputBorder(),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  passwordController.clear();
                                },
                                icon: Icon(Icons.clear)),
                          ),
                          onChanged: (String value) {},
                          validator: (value) {
                            return value!.isEmpty ? 'Renter Password' : null;
                          },
                          controller: passwordController,
                        ),
                      ),

                      // Confirm Password Textbox

                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 750),
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            labelText: 'Confirm Password',
                            hintText: 'Renter Password',
                            prefixIcon: Icon(Icons.password_sharp),
                            border: OutlineInputBorder(),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  confirmPWController.clear();
                                },
                                icon: Icon(Icons.clear)),
                          ),
                          onChanged: (String value) {},
                          validator: (value) {
                            return value!.isEmpty ? 'Enter a Password' : null;
                          },
                          controller: confirmPWController,
                        ),
                      ),

                      // Create Account Button

                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 750),
                        child: MaterialButton(
                          minWidth: double.infinity,
                          onPressed: () {
                            // Button logic to create an account

                            if (emailController.text.isNotEmpty &&
                                userNameController.text.isNotEmpty &&
                                passwordController.text.isNotEmpty &&
                                confirmPWController.text.isNotEmpty &&
                                passwordController.text ==
                                    (confirmPWController.text)) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()));
                            }
                          },
                          color: Colors.blue,
                          textColor: Colors.black,
                          child: Text('Create Account'),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
