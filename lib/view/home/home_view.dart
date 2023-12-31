import 'package:flutter/material.dart';

import '../../common/color_extension.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController txtSearch = TextEditingController();

  List exclusiveOfferArr = [
    {
      "name": "Organic Bananas",
      "icon": "assets/img/banana.png",
      "qty": "7",
      "unit": "pcs, Prices",
      "price": "\$1.99",
    },
    {
      "name": "Red Apple",
      "icon": "aassets/img/bell_pepper_red.png",
      "qty": "1",
      "unit": "kg, Prices",
      "price": "\$4.99",
    },
  ];

  List bestSellingArr = [
    {
      "name": "Bell Pepper Red",
      "icon": "",
      "qty": "1",
      "unit": "kg, Prices",
      "price": "\$2.99",
    },
    {
      "name": "Ginger",
      "icon": "",
      "qty": "250",
      "unit": "gm, Prices",
      "price": "\$3.99"
    }
  ];

  List groceriesArr = [
    {
      "name": "Pulses",
      "icon": "assets/img/pulses.png",
      "color": Color(0xff8A44C)
    },
    {
      "name": "Rice",
      "icon": "assets/img/rice.png",
      "color": Color(0xff538175),
    },
  ];

  List listArr = [
    {
      "name": "Beef Bone",
      "icon": "assets/img/beef_bone.png",
      "qty": "1",
      "unit": "kg, Prices",
      "price": "\$4.99",
    },
    {
      "name": "Broiler Chicken",
      "icon": "assets/img/broiler_chicken.png",
      "qty": "1",
      "unit": "kg, Prices",
      "price": "\$4.99",
    },
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/img/color_logo.png',
                    width: 25,
                  ),
                ],
              ),
              const SizedBox(
                height: 4.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/img/location.png',
                    width: 16,
                    height: 16,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Indonseia, Soppeng',
                    style: TextStyle(
                      color: TColor.darkGray,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 52,
                  decoration: BoxDecoration(
                    color: const Color(0xffF2F3F2),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  alignment: Alignment.center,
                  child: TextField(
                    controller: txtSearch,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 16,
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Image.asset(
                          "assets/img/search.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: "Search",
                      hintStyle: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.maxFinite,
                  height: 115,
                  decoration: BoxDecoration(
                    color: const Color(0xffF2F3F2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/img/banner_top.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
