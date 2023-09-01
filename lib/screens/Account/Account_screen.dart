import 'package:flutter/material.dart';

import '../../config/constant.dart';
import '../../widgets/border_bottom.dart';
import '../../widgets/common-textfield.dart';
import '../../widgets/common_button.dart';
import '../../widgets/coomon_label.dart';
import '../../widgets/heading_six.dart';

class AccountScreen extends StatefulWidget {
  AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey.shade400,
          foregroundColor: Constant.bgWhite,
          child: const Text('VS'),
        ),
        Center(
          child: HeadingSix(
              headingSix: "Veera Srinivasulu",
              heaingSize: 24,
              headingColor: Constant.comTxtDark,
              headingWeight: FontWeight.w500),
        ),
        SizedBox(height: 8),
        Center(
          child: Container(
            margin: EdgeInsets.only(left: 60, right: 60),
            child: CommonLabel(
                name: 'Freetrade user #143430',
                fontSize: 14.0,
                fontColor: Colors.white,
                bgColor: Color(0xFFF8628D),
                labelRadiusBig: 20,
                labelRadiusSmall: 20,
                paddingTop: 4,
                paddingBottom: 4),
          ),
        ),
        SizedBox(height: 8),
        Center(
          child: Container(
            width: 100,
            margin: EdgeInsets.only(left: 60, right: 60),
            child: CommonLabel(
                name: 'Standard',
                fontSize: 14.0,
                fontColor: Colors.white,
                bgColor: Color(0xFFF8628D),
                labelRadiusBig: 20,
                labelRadiusSmall: 20,
                paddingTop: 4,
                paddingBottom: 4),
          ),
        ),
        SizedBox(height: 16),
        Align(
          alignment: Alignment.bottomLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeadingSix(
                  headingSix: "Address",
                  heaingSize: 15,
                  headingColor: Colors.grey.shade400,
                  headingWeight: FontWeight.w500),
              SizedBox(height: 4),
              Container(
                width: 200,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeadingSix(
                          headingSix:
                              "112 Gemini Park Manor Way Borehamwood WD6 1BZ Hertfordshire",
                          heaingSize: 14,
                          headingColor: Constant.drakGC,
                          headingWeight: FontWeight.w500),
                    ]),
              ),
              SizedBox(height: 16),
              HeadingSix(
                  headingSix: "Email",
                  heaingSize: 15,
                  headingColor: Colors.grey.shade400,
                  headingWeight: FontWeight.w500),
              SizedBox(height: 4),
              HeadingSix(
                  headingSix: "veerasn@gmail.com",
                  heaingSize: 14,
                  headingColor: Constant.drakGC,
                  headingWeight: FontWeight.w500),
            ],
          ),
        ),
        // BorderBottom(bordeSize: 5, bottomColor: Constant.comTxtdullDu),
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
