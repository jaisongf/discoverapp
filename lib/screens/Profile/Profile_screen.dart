import 'package:flutter/material.dart';

import '../../config/constant.dart';
import '../../widgets/border_bottom.dart';
import '../../widgets/common-textfield.dart';
import '../../widgets/common_button.dart';
import '../../widgets/heading_six.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: HeadingSix(
              headingSix: "Account",
              heaingSize: 28,
              headingColor: Constant.comTxtDark,
              headingWeight: FontWeight.w500),
        ),
        SizedBox(height: 20),
        BorderBottom(bordeSize: 5, bottomColor: Constant.comTxtdullDu),
        SizedBox(height: 32),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HeadingSix(
                  headingSix: "\£ 2..96",
                  heaingSize: 24,
                  headingColor: Constant.comTxtDark,
                  headingWeight: FontWeight.w500),
              SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeadingSix(
                      headingSix: "Available to invest",
                      heaingSize: 14,
                      headingColor: Constant.comTxtdull,
                      headingWeight: FontWeight.w500),
                  HeadingSix(
                      headingSix: "View breakdown",
                      heaingSize: 14,
                      headingColor: Constant.comTxtPink,
                      headingWeight: FontWeight.w500),
                ],
              ),
              SizedBox(height: 32),
              BorderBottom(bordeSize: 1, bottomColor: Constant.comTxtdullDu11),
            ],
          ),
        ),
        SizedBox(height: 32),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HeadingSix(
                  headingSix: "Linked bank account",
                  heaingSize: 20,
                  headingColor: Constant.comTxtDark,
                  headingWeight: FontWeight.w500),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/ic-22.png", width: 30, height: 30),
                  SizedBox(width: 16),
                  HeadingSix(
                      headingSix: "... 8968",
                      heaingSize: 16,
                      headingColor: Constant.comTxtDark,
                      headingWeight: FontWeight.w500),
                ],
              ),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/ic-23.png", width: 30, height: 30),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            HeadingSix(
                                headingSix: "Direct Debit",
                                heaingSize: 16,
                                headingColor: Constant.comTxtDark,
                                headingWeight: FontWeight.w500),
                            HeadingSix(
                                headingSix: "Set up",
                                heaingSize: 14,
                                headingColor: Constant.comTxtPink,
                                headingWeight: FontWeight.w500),
                          ],
                        ),
                        SizedBox(height: 6),
                        HeadingSix(
                            headingSix:
                                "Set up a Direct debit from your Lloyds account for hassle-free deposits",
                            heaingSize: 14,
                            headingColor: Constant.comTxtdull,
                            headingWeight: FontWeight.w500),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32),
              Container(
                width: double.infinity,
                child: CommonButton(
                  buttonName: "Withdraw",
                  buttonColor: Constant.comTxtdullDu13,
                  buttonNameColor: Constant.comTxt4,
                  buttonHeight: 54,
                  buttonRadiusTL: 40.0,
                  buttonRadiusBL: 40.0,
                  buttonBorder: Colors.transparent,
                  buttonFunction: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: double.infinity,
                child: CommonButton(
                  buttonName: "Top up",
                  buttonColor: Constant.comTxt4,
                  buttonNameColor: Constant.comTxtdullDu13,
                  buttonHeight: 54,
                  buttonRadiusTL: 40.0,
                  buttonRadiusBL: 40.0,
                  buttonBorder: Colors.transparent,
                  buttonFunction: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
