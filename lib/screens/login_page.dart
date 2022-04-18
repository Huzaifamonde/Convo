import 'package:convo1/routes.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 246, 252),
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 5),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon:const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  )),
            ),
            Container(
                margin:const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                   const Text(
                      "welcome",
                      style:
                          TextStyle(color: Color.fromARGB(255, 160, 159, 166)),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const Text("Fill the form to become our guest",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                            color: Color.fromARGB(255, 56, 56, 74))),
                   const SizedBox(
                      height: 100,
                    ),
                    Center(
                      child: Container(
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color:const Color.fromARGB(255, 247, 246, 252),
                              boxShadow: [
                               BoxShadow(
                                  color:  Color.fromARGB(75, 30, 25, 170),
                                  blurRadius: 20,
                                  offset: Offset(0, 10),
                                )
                              ]),
                          child: Stack(
                            children: [
                              InternationalPhoneNumberInput(
                                onInputChanged: (value) {},
                                cursorColor: Colors.black,
                                inputDecoration: const InputDecoration(
                                    contentPadding:
                                        EdgeInsets.only(bottom: 15, left: 0),
                                    border: InputBorder.none,
                                    hintText: '(900) 000 0000',
                                    hintStyle:  TextStyle(
                                        color:
                                            Color.fromARGB(255, 150, 145, 145),
                                        fontSize: 16)),
                              ),
                              Positioned(
                                  left: 90,
                                  top: 8,
                                  bottom: 8,
                                  child: Container(
                                      height: 40,
                                      width: 1,
                                      color: Colors.black.withOpacity(0.13)))
                            ],
                          )),
                    ),
                    SizedBox(height: 120),
                    Center(
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 35, 35, 59),
                                borderRadius: BorderRadius.circular(50)),
                            child: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, MyRoute.otpCard);
                              },
                              icon: const Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const Text(
                            "Next",
                            style: TextStyle(
                                color: Color.fromARGB(255, 68, 68, 70)),
                          )
                        ],
                      ),
                    )
                  ],
                ))
          ],
        )));
  }
}
