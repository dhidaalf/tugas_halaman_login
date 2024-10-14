import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xFF6BF6C3),
          Color(0xFF3D79F8),
        ],
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _page(),
      ),
    );
  }

  Widget _page() {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.all(32.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 80),
            _icon(),
            const SizedBox(height: 30),
            _extraText(),
            const SizedBox(height: 50),
            _inputField("Username", usernameController),
            const SizedBox(height: 20),
            _inputField("Password", passwordController, isPassword: true),
            const SizedBox(height: 50),
            _loginBtn(),
            const SizedBox(height: 20),
            _forgotPass(),
            const SizedBox(height: 50),
            _buildSocialLogins(),
            const SizedBox(height: 50),
            _bottomWidget()
          ],
        ),
      ),
    ));
  }

  Widget _icon() {
    return Image.asset(
      'assets/icon/logo.png',
      width: 177,
      height: 109,
      fit: BoxFit.contain,
    );
  }

  Widget _extraText() {
    return const Text(
      "Learn Graphic and UI/UX designing in Hindi for free with live projects.",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 16, color: Colors.white),
    );
  }

  Widget _inputField(String hintText, TextEditingController controller,
      {isPassword = false}) {
    var border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(color: Color(0xFF6CC5DE)));

    return TextField(
      style: const TextStyle(color: Colors.white),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
        fillColor: Color(0xFF6CC5DE),
        filled: true,
        enabledBorder: border,
        focusedBorder: border,
      ),
      obscureText: isPassword,
    );
  }

  Widget _loginBtn() {
    return ElevatedButton(
      onPressed: () {
        debugPrint("Username : " + usernameController.text);
        debugPrint("Password : " + passwordController.text);
      },
      child: const SizedBox(
          width: double.infinity,
          child: Text(
            "Login",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          )),
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue,
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
    );
  }

  Widget _forgotPass() {
    return Align(
      alignment: Alignment.centerRight,
      child: const Text(
        "Forgot Password ?",
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }

  Widget _buildSocialLogins() {
    return Column(
      children: [
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset("assets/images/gmail.png"),
                iconSize: 60,
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset("assets/images/facebook.png"),
                iconSize: 60,
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset("assets/images/twitter.png"),
                iconSize: 60,
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _bottomWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          "Don't have an account ?",
          style: TextStyle(color: Colors.white),
        ),
        Text(" Register now",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
      ],
    );
  }
}