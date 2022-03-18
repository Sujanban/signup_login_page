import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/signup.png"), fit: BoxFit.cover)),
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 35, top: 90),
                child: const Text(
                  "Reset Password",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 33.0,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 35, top: 180),
                child: const Text(
                  "Enter the E-mail associated with your account and we will send you the instruction to reset your Password",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 20.0,
                      // fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w400),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.4,
                      left: 30.0,
                      right: 30.0),
                  child: Column(
                    children: <Widget>[
                      const TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.white10,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          hintText: "Your Email",
                          hintStyle: TextStyle(fontSize: 18.0),
                        ),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          // const Text(
                          //   "Signup  ",
                          //   style: TextStyle(
                          //       fontSize: 25.0,
                          //       color: Colors.black,
                          //       fontWeight: FontWeight.w700),
                          // ),
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
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
