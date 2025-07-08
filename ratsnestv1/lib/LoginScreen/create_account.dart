import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount();
  @override
  State<CreateAccount> createState() => _CreateAccount();
}

class _CreateAccount extends State<CreateAccount> {
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
                'Login',
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
                                  //emailController.clear();
                                },
                                icon: Icon(Icons.clear)),
                          ),
                          onChanged: (String value) {},
                          validator: (value) {
                            return value!.isEmpty ? 'Enter an Email' : null;
                          },
                          //controller: emailController,
                        ),
                      ),
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
                                  //passwordController.clear();
                                },
                                icon: Icon(Icons.clear)),
                          ),
                          onChanged: (String value) {},
                          validator: (value) {
                            return value!.isEmpty ? 'Enter a Password' : null;
                          },
                          //controller: passwordController,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 750),
                        child: MaterialButton(
                          minWidth: double.infinity,
                          onPressed: () {},
                          color: Colors.blue,
                          textColor: Colors.black,
                          child: Text('Login'),
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              overlayColor: Colors.transparent),
                          child: Text('Forgot Password',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.black)))
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
