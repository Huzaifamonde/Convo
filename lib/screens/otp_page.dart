import 'package:convo1/routes.dart';
import 'package:flutter/material.dart';

class OTPCard extends StatefulWidget {
  const OTPCard({Key? key}) : super(key: key);

  @override
  State<OTPCard> createState() => _OTPCardState();
}

class _OTPCardState extends State<OTPCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 246, 252),
      body: SafeArea(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 5),
              child: IconButton(
                  icon: new Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context, true);
                  }),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    "verification",
                    style: TextStyle(
                        color: Color.fromARGB(
                            255, 160, 159, 166)), //rgb(160,159,166)
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text("We sent you an SMS code",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                          color: Color.fromARGB(255, 56, 56, 74))),
                  Row(
                    children: [
                      Text(
                        "On number:",
                        style: TextStyle(
                          color: Color.fromARGB(255, 121, 121, 133),
                          fontSize: 13,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "+91 (900) 000 0000",
                          style: TextStyle(
                              color: Color.fromARGB(255, 114, 111, 187),
                              fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 75,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            width: 40,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(20, 17, 116, .3),
                                    blurRadius: 20,
                                    offset: Offset(0, 10),
                                  )
                                ]),
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  hintText: "6",
                                  hintStyle: TextStyle(
                                      color: Color.fromARGB(255, 195, 186, 186),
                                      fontSize: 22),
                                  border: InputBorder.none),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Container(
                            width: 30,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(20, 17, 116, .3),
                                    blurRadius: 20,
                                    offset: Offset(0, 10),
                                  )
                                ]),
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  hintText: "0",
                                  hintStyle: TextStyle(
                                      color: Color.fromARGB(255, 195, 186, 186),
                                      fontSize: 22),
                                  border: InputBorder.none),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Container(
                            width: 30,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(20, 17, 116, .3),
                                    blurRadius: 20,
                                    offset: Offset(0, 10),
                                  )
                                ]),
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  hintText: "0",
                                  hintStyle: TextStyle(
                                      color: Color.fromARGB(255, 195, 186, 186),
                                      fontSize: 22),
                                  border: InputBorder.none),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Container(
                            width: 30,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(20, 17, 116, .3),
                                    blurRadius: 20,
                                    offset: Offset(0, 10),
                                  )
                                ]),
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  hintText: "0",
                                  hintStyle: TextStyle(
                                      color: Color.fromARGB(255, 195, 186, 186),
                                      fontSize: 22),
                                  border: InputBorder.none),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Container(
                decoration: BoxDecoration(),
                child: Center(
                  child: TextButton(
                    child: Text(
                      "Code not received?",
                      style: TextStyle(
                          color: Color.fromARGB(255, 114, 111, 187),
                          fontSize: 13),
                    ),
                    onPressed: () {},
                  ),
                )),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 35, 35, 59),
                    borderRadius: BorderRadius.circular(50)),
                child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoute.homePage);
                    },
                    icon: Icon(Icons.check)),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
