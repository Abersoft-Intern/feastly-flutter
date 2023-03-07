import 'package:flutter/material.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginPageState createState() => new _LoginPageState();
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text(
        'Login',
      ),
    );
  }
}

class _LoginPageState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('images/Profil.png'),
      ),
    );

    final righ = TextButton(
      child: Icon(
        Icons.arrow_right_alt,
        color: Colors.black54,
      ),
      onPressed: () {},
    );

    final hello = TextButton(
      child: Text(
        'Hello',
        textAlign: TextAlign.left,
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );

    final sign = TextButton(
      child: Text(
        'Sign into your account.',
        textAlign: TextAlign.left,
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: '@gmail.com',
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.email_outlined,
          color: Colors.green,
        ),
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: 'password',
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.lock,
          color: Colors.green,
        ),
         suffixIcon: Icon(
           Icons.visibility_off,
           color: Colors.black,
         ),
        hintText: 'Password',
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
            //Navigator.of(context).pushNamed(home);
          },
          color: Colors.lightBlueAccent,
          child: Text('Sign in', style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    final or = TextButton(
      child: Text(
        'Or Sign in using Social Media',
        textAlign: TextAlign.right,
        style: TextStyle(color: Colors.black),
      ),
      onPressed: () {},
    );


    var click;
    return Scaffold(

      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            Container(
              child: new DecoratedBox(
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage("images/bg_burge.webp"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),

            const Image(
              alignment: Alignment(1.0, -82.17),
              image: NetworkImage('https://static.vecteezy.com/system/resources/previews/013/167/062/original/burger-3d-illustration-free-png.png'
              ),height: 341,
              width: 424,
            ),
            righ,
            const SizedBox(height: 30,),
            const Text("Hello",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight:FontWeight.bold
              ),),
            const SizedBox(height: 10,),
            const Text("Sign into your account.",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),),
            const SizedBox(height: 20,),
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            Padding(
              padding:const EdgeInsets.fromLTRB(20, 0, 30, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: click,
                    child:const Text("Forget Password",
                      style: TextStyle(
                          color: Colors.deepOrange
                      ),
                    ),
                  )
                ],
              ),
            ),
            loginButton,
            or,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: click,
                    icon: const Icon(Icons.facebook,color: Colors.blue)
                ),
                IconButton(
                    onPressed: click,
                    icon: const Icon(Icons.apple,color: Colors.redAccent,)
                ),
                IconButton(
                    onPressed: click,
                    icon: const Icon(Icons.apple,color: Colors.redAccent,)
                ),

              ],
            )


          ],
        ),
      ),
    );
  }
}
