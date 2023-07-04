import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:tugas_project_uas/home.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  //status username dan password kosong
  bool? isUsernameEmpty;
  bool? isPasswordEmpty;

  @override
  void initState() {
    isUsernameEmpty = false;
    isPasswordEmpty = false;

    super.initState();
  }

  Widget build(BuildContext context) {
    final judul = Text('Login',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.blue));

    final email = TextFormField(
      controller: usernameController,
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'esibutar@gmail.coml',
        errorText: isUsernameEmpty == true ? 'Username harus diisi' : null,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      controller: passwordController,
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'yourpassword',
        errorText: isPasswordEmpty == true ? 'Kata sandi harus diisi' : null,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            //validasi jika username dan password empty maka tampilan error
            if (usernameController.text.isEmpty) {
              setState(() {
                isUsernameEmpty = true;
              });
            }
            if (passwordController.text.isEmpty) {
              setState(() {
                isPasswordEmpty = true;
              });
            }
            //jika tidak ada kesalahan navigasi ke halaman home
            else {
              setState(() {
                isUsernameEmpty = false;
                isPasswordEmpty = false;
              });
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                //passing data ke another screen
                return Screen_Home();
              }));
            }
          },
          color: Colors.blue,
          child: Text('Log In', style: TextStyle(color: Colors.white)),
        ),
      ),
    );
    final iconbawah = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.facebook,
          color: const Color.fromARGB(255, 10, 103, 180),
          size: 30,
        ),
        Padding(padding: EdgeInsets.only(right: 5)),
        Image.asset(
          'assets/google.png',
          width: 23,
          height: 25,
        ),
        Padding(padding: EdgeInsets.only(right: 5)),
        Icon(
          Icons.email,
          color: Colors.red,
          size: 30,
        ),
      ],
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(left: 50.0, right: 50.0, top: 150),
          children: <Widget>[
            judul,
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            iconbawah
          ],
        ),
      ),
    );
  }
}
