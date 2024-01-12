import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavigationBarHomepage extends StatelessWidget {
  const BottomNavigationBarHomepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      fixedColor: Colors.black,
      showSelectedLabels: true,
      selectedLabelStyle: GoogleFonts.workSans(color: Colors.black),
      unselectedLabelStyle: GoogleFonts.workSans(color: Colors.black),
      showUnselectedLabels: true,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/Fill 1.svg'),
          label: 'Tracking',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/Activity.svg'),
          label: 'Tracking',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/Time Circle.svg'),
          label: 'History',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/Profile.svg'),
          label: 'Account',
        ),
      ],
      currentIndex: 0,

      // onTap: ,
    );
  }
}
