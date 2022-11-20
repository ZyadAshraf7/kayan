import 'package:flutter/material.dart';
import 'package:kayan/providers/information_registiration_controller.dart';
import 'package:kayan/ui/widgets/custom_text_form_field.dart';
import 'package:kayan/ui/widgets/gradient_button.dart';
import 'package:provider/provider.dart';

class InformationRegistiration extends StatelessWidget {
  const InformationRegistiration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<InformationRegistirationController>(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 1,
        centerTitle: true,
        title: const Text(
          "تسجيل اشتراك",
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
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  Center(
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/man.jpeg",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(80.0)),
                        border: Border.all(
                          color: Colors.pink,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: CustomTextFormField(
                      hintText: "Magdy Ismail",
                      title: "الأسم",
                      textEditingController: TextEditingController(),
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    "تاريخ الميلاد",
                    style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 19,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 6),
                  Consumer<InformationRegistirationController>(
                    builder: (_, provider, __) {
                      return Directionality(
                        textDirection: TextDirection.rtl,
                        child: GestureDetector(
                          onTap: () => provider.selectDate(context),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 24).copyWith(left: 10),
                            alignment: Alignment.centerRight,
                            height: 48,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(provider.pickedDate.toString()),
                                Icon(Icons.arrow_forward_ios,color: Colors.grey.shade300,)
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    "الدولة",
                    style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 19,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 6),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 24).copyWith(left: 10),
                      alignment: Alignment.centerRight,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                  width: 25,
                                  height: 25,
                                  child: Image.asset("assets/images/egypt.png")),
                              const SizedBox(width: 14),
                              const Text("مصر")
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios,color: Colors.grey.shade300,)
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    "الجنس",
                    style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 19,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 6),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Consumer<InformationRegistirationController>(
                      builder: (_, provider, __) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap: () => provider.setMaleGender(),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 12),
                                decoration: BoxDecoration(
                                  color: provider.gender == true
                                      ? Colors.blue.withOpacity(0.2)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: 24,
                                        height: 24,
                                        child: Image.asset(
                                            "assets/images/male.png")),
                                    const SizedBox(width: 8),
                                    Text(
                                      "ذكر",
                                      style: TextStyle(
                                          color: provider.gender == true
                                              ? Colors.indigo
                                              : Colors.black,
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () => provider.setFemaleGender(),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 12),
                                decoration: BoxDecoration(
                                  color: provider.gender == false
                                      ? Colors.pink.withOpacity(0.2)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: 24,
                                        height: 24,
                                        child: Image.asset(
                                            "assets/images/female.png")),
                                    const SizedBox(width: 8),
                                    Text(
                                      "انثى",
                                      style: TextStyle(
                                          color: provider.gender == false
                                              ? Colors.pink
                                              : Colors.black,
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Center(child: GradientButton(text: "تسجيل")),
                  const Spacer(),
                  const Center(
                    child: Text(
                      "بتسجيل الدخول انت توافق على الشروط و الاحكام",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
