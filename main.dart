import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red,
              title: const Text('Login'),
            ),
            drawer: const Drawer(backgroundColor: Colors.black),
            body: Align(
              alignment: Alignment.center,
              child: SizedBox(
                  width: 150,
                  height: 150,
                  child: Column(children: [
                    const TextField(
                      decoration: InputDecoration(labelText: 'E-mail'),
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ),
                    const TextField(
                      decoration: InputDecoration(labelText: 'Senha'),
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ),
                    ElevatedButton(
                        onPressed: () {}, child: const Text('Entrar')),
                  ])),
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: 'Minha conta'),
              ],
            )));
  }
}
