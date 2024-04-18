import 'package:app_tugas_1/pages/auth/login_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  String _userName = "";
  String _email = "";
  String _password = "";
  String _confirmPassword = "";

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
                "Daftar Akun",
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
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          gapPadding: BorderSide.strokeAlignCenter,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      labelText: "Email",
                      prefixIcon: Icon(Icons.email),
                      hintText: "Masukkan Email",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                    onChanged: (value) => {
                      setState(() {
                        _email = value;
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
                    height: 20,
                  ),
                  TextFormField(
                    style: const TextStyle(fontSize: 16),
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          gapPadding: BorderSide.strokeAlignCenter,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      labelText: "Confirm Password",
                      prefixIcon: Icon(Icons.lock_outlined),
                      hintText: "Masukkan Konfirmasi Password",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                    onChanged: (value) => {
                      setState(() {
                        _confirmPassword = value;
                      })
                    },
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  ElevatedButton(
                    onPressed: () => {
                      print("$_userName"),
                      print("$_email"),
                      print("$_password"),
                      print("$_confirmPassword"),
                    },
                    style: ButtonStyle(
                      textStyle: const MaterialStatePropertyAll(
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.lightGreen[50]),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      padding: const MaterialStatePropertyAll(
                          EdgeInsets.fromLTRB(50, 15, 50, 15)),
                    ),
                    child: const Text("Daftar"),
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
                const Text("Sudah punya akun?"),
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
                              builder: (_) => const LoginPage(),
                            ),
                          )
                        },
                    child: const Text(
                      "Masuk di sini!",
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
