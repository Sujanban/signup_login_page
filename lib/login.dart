import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/login.png"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 35, top: 130),
              child: const Text(
                "Welcome Back!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 33.0,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5,
                    left: 30.0,
                    right: 30.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.black12,
                        filled: true,
                        hintText: "Your Email",
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 3, color: Colors.blue),
                          borderRadius: BorderRadius.circular(35),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.black12,
                        filled: true,
                        hintText: "Your Password",
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 3, color: Colors.blue),
                          borderRadius: BorderRadius.circular(35),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Sign In",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w700),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.black45,
                          radius: 25.0,
                          child: IconButton(
                            icon: const Icon(Icons.forward),
                            color: Colors.white,
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Not a Member?", style: TextStyle(
                              fontWeight: FontWeight.bold,
                                fontSize: 20.0)),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 20.0),
                                )),
                          ],
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Forget Password?",
                              style: TextStyle(
                                  color: Colors.black54,
                                  decoration: TextDecoration.underline,
                                  fontSize: 20.0),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
