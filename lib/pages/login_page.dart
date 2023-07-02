import 'package:flutter/material.dart';
import 'package:quacks/constants/colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: QuacksColors.FINAL_BACKGROUND_COLOR,
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 30,
            ),
            Text("quacks.",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline,
                  fontSize: 50,
                )),
            SizedBox(
              height: 300,
            ),
            LoginForm(),
          ]),
        ));
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formState = GlobalKey<FormState>();

  late String enteredUsername;
  late String enteredPassword;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formState,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            // Username Field
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Username...',
                  contentPadding: EdgeInsets.all(20.0)),
              validator: validateUserInput,
              onSaved: (newValue) => {enteredUsername = newValue!},
            ),

            const SizedBox(height: 20),

            // Password Field
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Password...',
                  contentPadding: EdgeInsets.all(20.0)),
              validator: validateUserInput,
              onSaved: (newValue) => {enteredPassword = newValue!},
            ),

            const SizedBox(height: 25),

            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () {
                    if (_formState.currentState!.validate()) {
                      _formState.currentState!.save();
                      // API CALL...
                      Navigator.pushNamed(context, '/home');
                    }
                  },
                  child: const Text("Login.")),
              const SizedBox(width: 20),
              ElevatedButton(
                  onPressed: () {
                    if (_formState.currentState!.validate()) {
                      _formState.currentState!.save();
                      // API CALL...
                      Navigator.pushNamed(context, '/home');
                    }
                  },
                  child: const Text("Sign Up."))
            ]),
          ]),
        ));
  }
}

String? validateUserInput(value) {
  if (value == null || value.isEmpty) {
    return "Enter Password";
  }
  return null;
}
