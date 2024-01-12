// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:wash_wuz_app/core/utils/color_resrouces.dart';
import 'package:wash_wuz_app/core/utils/dimensions.dart';
import 'package:wash_wuz_app/features/home/presentation/widgets/bottom_navbar_homepage.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: ColorResources.BlueHomePage,
          child: ListView(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hi, Suyatno',
                                style: GoogleFonts.inter(
                                    fontSize: 22, color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset('assets/icons/RedLoc.svg'),
                                  Text(
                                    'Welcome to WashWuz',
                                    style: GoogleFonts.inter(
                                        fontSize: 14, color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Icon(Icons.notifications_active, color: Colors.white),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: GoogleFonts.inter(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: ColorResources.WhiteBackground,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Categories',
                        style: GoogleFonts.mulish(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomCategories(
                            categories: "All",
                          ),
                          CustomCategories(
                            categories: "Cuci Kering",
                          ),
                          CustomCategories(
                            categories: "Cuci Setrika",
                          ),
                          CustomCategories(
                            categories: "Setrika",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Popular Laundry',
                            style: GoogleFonts.mulish(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'See All',
                                style: GoogleFonts.mulish(),
                              )),
                        ],
                      ),
                      CardContainer(
                        name: 'Mari Laundry',
                        image: 'assets/images/LAUNDRY1.jpeg',
                        distance: '0.2 Km Away',
                        address: 'Jl. Pleburan Gang 1 no.666 ',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CardContainer(
                        name: 'Bagus Laundry',
                        image: 'assets/images/LAUNDRY2.jpeg',
                        distance: '1.2 Km Away',
                        address: 'Jl. Indraprasta no.666 Semarang',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CardContainer(
                        name: 'Ajeng Laundry',
                        image: 'assets/images/LAUNDRY3.jpeg',
                        distance: '3.9 Km Away',
                        address: 'Jl. Majapahit no.666 Semarang',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CardContainer(
                        name: 'Hanif Laundry',
                        image: 'assets/images/LAUNDRY4.jpeg',
                        distance: '4.1 Km Away',
                        address: 'Jl. Pedurungan no.66 Gang Pancur',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarHomepage(),
    );
  }
}

class CardContainer extends StatelessWidget {
  final String name;
  final String address;
  final String distance;
  final String image;
  const CardContainer({
    Key? key,
    required this.name,
    required this.address,
    required this.distance,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorResources.WhiteBackground,
        border: Border.all(
          color: ColorResources.GreyText.withOpacity(0.7),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              width: 100,
              height: 100,
              child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  child: Image.asset(
                    // 'assets/images/LAUNDRY1.jpeg',
                    image,
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  // 'Mari Laundry',
                  name,
                  style: GoogleFonts.mulish(
                    fontSize: Dimensions.fontSizeLarge,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  // 'Jl. Indraprasta no.666 Gang Gacor',
                  address,
                  style: GoogleFonts.mulish(
                    fontSize: Dimensions.fontSizeDefault,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  // '0.2 Km Away',\
                  distance,
                  style: GoogleFonts.mulish(
                    fontSize: Dimensions.fontSizeSmall,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomCategories extends StatelessWidget {
  final String categories;
  const CustomCategories({
    Key? key,
    required this.categories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ColorResources.GreyBackground,
            // borderRadius: BorderRadius.circular(10),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(categories),
      ],
    );
  }
}
