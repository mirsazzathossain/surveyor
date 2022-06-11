import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:surveyor/utils/colors.dart';
import 'package:surveyor/widgets/header_text.dart';

import '../widgets/regular_text.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          child: Container(
            margin: EdgeInsets.only(top: 60, bottom: 15),
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              image: DecorationImage(
                                image: AssetImage('assets/images/profile.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.0)),
                              border: Border.all(
                                color: AppColors.primaryColor,
                                width: 2.0,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                HeaderText(
                                  text: 'John Doe',
                                  color: AppColors.primaryColor,
                                  fontSize: 18,
                                ),
                                RegularText(
                                    text: '@johndoe', color: Colors.black54),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    width: 45,
                    height: 45,
                    child: Icon(Icons.search, color: Colors.white),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
