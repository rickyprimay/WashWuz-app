import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wash_wuz_app/core/utils/dimensions.dart';

class CustomAuthTextField extends StatelessWidget {
  final String text;
  const CustomAuthTextField({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        label: Text(
          text,
          style: GoogleFonts.workSans(
            fontSize: Dimensions.fontSizeDefault,
          ),
        ),
      ),
    );
  }
}
