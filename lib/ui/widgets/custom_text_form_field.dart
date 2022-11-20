import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final String title;
  final TextEditingController? textEditingController;

  const CustomTextFormField({Key? key,
    required this.hintText,
    required this.title,
    required this.textEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: TextStyle(color: Colors.grey.shade400,fontSize: 19,fontWeight: FontWeight.w600),),
        const SizedBox(height: 6),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextFormField(
            controller: textEditingController,
            decoration: InputDecoration(
              hintStyle: const TextStyle(
                  fontSize: 15
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal:20 ,vertical: 5),
              border: InputBorder.none,
              errorBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: hintText,
              //suffixIconColor: AppTheme.midGreyColor,
            ),
          ),
        ),
      ],
    );
  }
}