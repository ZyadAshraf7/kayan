import 'package:flutter/material.dart';
import 'package:kayan/ui/screens/information_registiration_Screen.dart';

class EmailLoginScreen extends StatelessWidget {
  const EmailLoginScreen({Key? key}) : super(key: key);

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
          "تسجيل الدخول",
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
                      "تسجيل الدخول بالمعرف",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "يرجى ادخال الاي دي الخاص بك في كيان شات",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        color: Colors.white,
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              fillColor: Colors.white,
                              focusedBorder: InputBorder.none,
                              prefixIcon: Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(40)),
                                child: const Icon(
                                  Icons.phone_android,
                                  color: Colors.white,
                                ),
                              ),
                              hintText: "الرجاء ادخال رقم المعرف الخاص بك",
                              hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey.shade400)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        color: Colors.white,
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              fillColor: Colors.white,
                              focusedBorder: InputBorder.none,
                              prefixIcon: Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(40)),
                                child: const Icon(
                                  Icons.lock,
                                  color: Colors.white,
                                ),
                              ),
                              hintText: "الرجاء ادخال الرقم السري",
                              hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey.shade400)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30,),
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
                          "تسجيل",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      "بتسجيل الدخول انت توافق على الشروط و الاحكام",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],

      ),
    );
  }
}
