import 'package:app_tugas_1/pages/auth/regis_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  String _userName = "";
  String _password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      body: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                "Selamat Datang di Aplikasi Todo List",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                "Masuk Akun",
                style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple[800]),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    style: const TextStyle(fontSize: 16),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          gapPadding: BorderSide.strokeAlignCenter,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      labelText: "Username",
                      prefixIcon: Icon(Icons.person),
                      hintText: "Masukkan Username",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                    onChanged: (value) => {
                      setState(() {
                        _userName = value;
                      })
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    style: const TextStyle(fontSize: 16),
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          gapPadding: BorderSide.strokeAlignCenter,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock),
                      hintText: "Masukkan Password",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                    onChanged: (value) => {
                      setState(() {
                        _password = value;
                      })
                    },
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  ElevatedButton(
                    onPressed: () => {
                      print("$_userName"),
                      print("$_password"),
                    },
                    style: ButtonStyle(
                      textStyle: const MaterialStatePropertyAll(
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.lightBlue[50]),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      padding: const MaterialStatePropertyAll(
                          EdgeInsets.fromLTRB(50, 15, 50, 15)),
                    ),
                    child: const Text("Masuk"),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Belum punya akun?"),
                TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(
                        Colors.lightBlue[600],
                      ),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const RegisterPage(),
                            ),
                          )
                        },
                    child: const Text(
                      "Daftar sekarang!",
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
