import 'package:flutter/material.dart';

import '../../config/constant.dart';
import '../../widgets/common_button.dart';
import '../../widgets/heading_six.dart';

class DetailsPage extends StatefulWidget {
  DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          // automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "",
                style: TextStyle(
                    fontSize: 18,
                    color: Constant.bgWhite,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          actions: [IconButton(onPressed: null, icon: Icon(Icons.search))]),
      body: Container(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("../../assets/fr1-1.png")),
                  HeadingSix(
                      headingSix: "Apple",
                      heaingSize: 24,
                      headingColor: Constant.comTxtDark,
                      headingWeight: FontWeight.w500),
                  HeadingSix(
                      headingSix: "\$AAPL - Iphone",
                      heaingSize: 28,
                      headingColor: Constant.comTxtDark,
                      headingWeight: FontWeight.w500),
                ],
              ),
            ),
            SizedBox(height: 32),
            HeadingSix(
                headingSix: "\£ 176.97",
                heaingSize: 22,
                headingColor: Constant.comTxtDark,
                headingWeight: FontWeight.w500),
            SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.south_west, color: Colors.red, size: 16),
                HeadingSix(
                    headingSix: "Up by \£633.80",
                    heaingSize: 14,
                    headingColor: Colors.red,
                    headingWeight: FontWeight.w500),
                HeadingSix(
                    headingSix: " in this last month",
                    heaingSize: 14,
                    headingColor: Constant.comTxtdull,
                    headingWeight: FontWeight.w500),
              ],
            ),
            SizedBox(height: 24),
            Container(
                height: 180,
                child: HeadingSix(
                  headingSix: "Graph",
                  heaingSize: 16,
                  headingColor: Constant.comTxtDark,
                  headingWeight: FontWeight.w500,
                )),
            SizedBox(height: 24),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  child: CommonButton(
                    buttonName: "Sell",
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
                SizedBox(width: 24),
                Container(
                  width: 180,
                  child: CommonButton(
                    buttonName: "Buy",
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
            SizedBox(
              height: 36.0,
            ),
            Container(
              width: double.infinity,
              child: CommonButton(
                buttonName: "Create recurring order",
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
          ],
        ),
      ),
    );
  }
}
