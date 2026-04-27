import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controller = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Center(
        child: SizedBox(
          height: 400,
          width: 300,
          child: Card(
            color: const Color.fromARGB(93, 13, 67, 134),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("LOGIN"),
                    ],
                  ),
                  Form(
                    child: Column(
                      children: [
                        TextFormField(
                          controller: controller,
                          keyboardType: TextInputType.numberWithOptions(
                            decimal: true,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                            ),
                            hintText: "Enter Email",
                            labelText: "Email",
                            prefixIcon: Icon(Icons.mail),
                          ),
                        ),

                        SizedBox(height: 20),
                        TextFormField(
                          controller: passwordController, 
                          obscureText: true, // hides password text
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                            ),
                            hintText: "Enter Password",
                            labelText: "Password",
                            prefixIcon: Icon(Icons.lock),
                          ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed:(){}, 
                          child: Text("login"),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}