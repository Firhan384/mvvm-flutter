import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool valueCheck = false;
  bool isHidePassword = true;

  @override
  Widget build(BuildContext context) {
    double appTopHeight = MediaQuery.of(context).padding.top;
    double appBarHeight = AppBar().preferredSize.height;

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(height: (appTopHeight + appBarHeight)),
            // title
            const Text('Login',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(height: 10),
            const Text(
                'By signing in you are agreeing our Term and privacy policy',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                )),
            const SizedBox(height: 40),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email Address',
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              obscureText: isHidePassword,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: 'Password',
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isHidePassword = !isHidePassword;
                      });
                    },
                    icon: Icon(isHidePassword
                        ? Icons.visibility
                        : Icons.visibility_off),
                  )),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: valueCheck, onChanged: (val) {
                      setState(() {
                        valueCheck = !valueCheck;
                      });
                    }),
                    const Text('Remember Password')
                  ],
                ),
                const Text('Forget Password')
              ],
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  elevation: 2,
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: Colors.blueAccent),
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
