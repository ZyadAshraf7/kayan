import 'package:flutter/material.dart';

import 'information_registiration_Screen.dart';

class PhoneLoginScreen extends StatelessWidget {
  const PhoneLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        title: const Text(
          "Login",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
          hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(
                        width: 70,
                        height: 80,
                        child: Image.asset("assets/images/logo.png")),
                    const Text(
                      "Login / Create new account",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Please enter your phone number\nto get a validation key",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                  height: 25,
                                  width: 25,
                                  child: Image.asset("assets/images/egypt.png")),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text("+20")
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  fillColor: Colors.white,
                                  focusedBorder: InputBorder.none,
                                  hintText: "Enter yout phone number",
                                  hintStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade400)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25,),
                    const Text(
                      "Tap next to recieve an SMS confirmation message\nand data rates may apply",
                      style: TextStyle(
                          fontSize: 18
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const InformationRegistiration()));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            gradient: const LinearGradient(
                              colors: [
                                Colors.pink,
                                Colors.amber,
                              ],
                              stops: [0.55, 1.5],
                            )),
                        child: const Text(
                          "Next",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      "By continuing, you agree to our terms",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],

      ),
    );
  }
}
