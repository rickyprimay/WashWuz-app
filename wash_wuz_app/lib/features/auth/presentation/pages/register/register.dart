import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wash_wuz_app/core/utils/color_resrouces.dart';
import 'package:wash_wuz_app/core/utils/dimensions.dart';
import 'package:wash_wuz_app/core/utils/images.dart';
import 'package:wash_wuz_app/features/auth/presentation/pages/login/login.dart';
import 'package:wash_wuz_app/features/auth/presentation/widgets/custom_auth_text_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: ColorResources.GreyBackground,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Image.asset(ImagesPath.logoForRegister),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: ColorResources.WhiteBackground,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        children: [
                          Spacer(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Register",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.workSans(
                                fontSize: Dimensions.fontSizeLarge,
                              ),
                            ),
                          ),
                          const CustomAuthTextField(
                            text: "Nama",
                          ),
                          const CustomAuthTextField(
                            text: "Email",
                          ),
                          TextField(
                            decoration: InputDecoration(
                              label: Text(
                                "Password",
                                style: GoogleFonts.workSans(
                                  fontSize: Dimensions.fontSizeDefault,
                                ),
                              ),
                              //
                            ),
                          ),
                          const CustomAuthTextField(
                            text: "Nomor Telepon",
                          ),
                          const CustomAuthTextField(
                            text: "Alamat",
                          ),
                          const Spacer(),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: 55,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: ColorResources.BlueButton,
                              ),
                              onPressed: () {},
                              child: Text(
                                "Register",
                                style: GoogleFonts.workSans(
                                  fontSize: Dimensions.fontSizeDefault,
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Have an account?',
                                style: GoogleFonts.workSans(),
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                  foregroundColor: ColorResources.BlueAuth,
                                ),
                                child: Text(
                                  'Login',
                                  style: GoogleFonts.workSans(),
                                ),
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const LoginPage()));
                                },
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
