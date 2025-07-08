import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword();
  @override
  State<ForgotPassword> createState() => _ForgotPassword();
}

class _ForgotPassword extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Forgot Password'),
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
                          onPressed: () {
                            /*
                            if (emailController.text.isNotEmpty &&
                                passwordController.text.isNotEmpty) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()));
                            }
                            */
                          },
                          color: Colors.blue,
                          textColor: Colors.black,
                          child: Text('Login'),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ForgotPassword()));
                          },
                          style: TextButton.styleFrom(
                              overlayColor: Colors.transparent),
                          child: Text('Forgot Password',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.black)))
                      /*
                      MaterialButton(
                        minWidth: double.infinity,
                        color: Colors.transparent,
                        highlightColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        elevation: 0,
                        highlightElevation: 0,
                        hoverElevation: 0,
                        onPressed: () {
                          //Navigator.push(context, MaterialPageRoute(builder: context => ForgotPassword()));
                        },
                        textColor: Colors.black,
                        child: Text('Forgot Password',
                            style: TextStyle(
                                decoration: TextDecoration.underline)),
                      )
                      */
                      /*
                      TextButton(child: RichText(text: TextSpan(text: 'Login')) onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: context => ForgotPassword()));
                      }) 
                      */
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
