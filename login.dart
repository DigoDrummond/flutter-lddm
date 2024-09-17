import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Controladores de texto para os campos
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  // Variáveis para o estado da página
  bool _isObscured = true;
  double _fontSize = 16;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 91, 44, 122),
        title: const Text('Sign-in'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Email input
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                    labelStyle: TextStyle(fontSize: _fontSize),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(fontSize: _fontSize),
                ),
                const SizedBox(height: 20),

                // Password input com exibição/ocultação
                TextField(
                  controller: _senhaController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(fontSize: _fontSize),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscured ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscured = !_isObscured;
                        });
                      },
                    ),
                  ),
                  obscureText: _isObscured,
                  style: TextStyle(fontSize: _fontSize),
                ),
                const SizedBox(height: 20),

                // Slider para controlar o tamanho da fonte
                Text('Font Size: ${_fontSize.toStringAsFixed(0)}',
                    style: TextStyle(fontSize: _fontSize)),
                Slider(
                  value: _fontSize,
                  min: 12.0,
                  max: 24.0,
                  divisions: 6,
                  label: _fontSize.toStringAsFixed(0),
                  onChanged: (double newValue) {
                    setState(() {
                      _fontSize = newValue;
                    });
                  },
                ),
                const SizedBox(height: 20),

                // Login button
                ElevatedButton(
                  onPressed: () {
                    // Lógica de login
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 91, 44, 122),
                    foregroundColor: Colors.white,
                    minimumSize: const Size.fromHeight(50),
                  ),
                  child: const Text('Sign-in'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
