import 'package:flutter/material.dart';

class MySignup extends StatefulWidget {
  const MySignup({Key? key}) : super(key: key);

  @override
  State<MySignup> createState() => _MySignupState();
}

class _MySignupState extends State<MySignup> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/signup.png"), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 35, top: 130),
                child: const Text(
                  "Create Account",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 33.0,
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.35,
                      left: 30.0,
                      right: 30.0),
                  child: Column(
                    children: <Widget>[
                      const TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.white10,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            hintText: "Enter Username"),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.white10,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            hintText: "Enter Email"),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.white10,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            hintText: "Enter Password"),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.white10,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            hintText: "Confirm Password"),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Signup",
                            style: TextStyle(
                                fontSize: 30.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.black45,
                            radius: 25.0,
                            child: IconButton(
                              icon: const Icon(Icons.forward),
                              color: Colors.white,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      Column(
                        children: <Widget>[
                          const Text("Already have an Account?",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0)),
                          const SizedBox(
                            height: 10,
                          ),
                          TextButton(
                              style: TextButton.styleFrom(
                                  padding: const EdgeInsets.only(
                                      left: 20, top: 10, right: 20, bottom: 10),
                                  backgroundColor: Colors.black45),
                              onPressed: () {},
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.white),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
