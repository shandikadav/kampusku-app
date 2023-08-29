import 'package:flutter/material.dart';
import 'package:kampusku_app/pages/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //validate show password
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            const SizedBox(
              height: 100,
            ),
            Container(
              child: Center(
                  child: Image.asset(
                "assets/logo_kampusku.png",
                width: 190,
                height: 48,
              )),
            ),
            const SizedBox(
              height: 100,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 246, 246, 246),
                  labelText: 'NIM',
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 169, 169, 169)),
                  border: InputBorder.none,
                ),
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 246, 246, 246),
                  labelText: 'Password',
                  labelStyle: const TextStyle(
                      color: Color.fromARGB(255, 169, 169, 169)),
                  hintText: 'Masukkan Password',
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                      icon: Icon(_isObscure
                          ? Icons.visibility
                          : Icons.visibility_off)),
                ),
                style: const TextStyle(fontSize: 14),
                obscureText: _isObscure,
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: Text(
                  'Login',
                  style: const TextStyle(fontSize: 13),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 97, 75, 195),
                    minimumSize: const Size(335, 45)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
