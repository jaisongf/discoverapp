import 'package:flutter/material.dart';

import '../../config/constant.dart';
import '../../widgets/coomon_label.dart';
import '../../widgets/heading_six.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final List<Map<String, String>> companies = [
    {
      'head': 'SONIA',
      'subHead': '£CINE * 2565 Shares',
      'des': 'XSTR',
      'img': '../../assets/fr2-3.PNG'
    },
    {
      'head': 'Pound',
      'subHead': 'CINE * 2456 Shares',
      'des': 'CSH2',
      'img': '../../assets/fr3-2.PNG'
    },
    {
      'head': 'Short',
      'subHead': '£CINE * 2565 Shares',
      'des': 'MINT',
      'img': '../../assets/fr2-2.PNG'
    },
    {
      'head': 'Fed Rac',
      'subHead': '£CINE * 2565 Shares',
      'des': 'FEDG',
      'img': '../../assets/fr2-4.PNG'
    }
  ];
  Widget ListOfCompanies(Map<String, String> companies) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                  radius: 20, backgroundImage: AssetImage(companies['img']!)),
              SizedBox(width: 16),
              Expanded(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(companies['head']!,
                              style: TextStyle(
                                  color: Constant.comTxtDark, fontSize: 16)),
                          SizedBox(height: 3),
                          Text(companies['subHead']!,
                              style: TextStyle(
                                  color: Constant.comTxtdull, fontSize: 13)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          HeadingSix(
                              headingSix: "\£ 907.42",
                              heaingSize: 14,
                              headingColor: Constant.comTxtDark,
                              headingWeight: FontWeight.w500),
                          SizedBox(height: 3),
                          HeadingSix(
                              headingSix: "+0.05%",
                              heaingSize: 13,
                              headingColor: Constant.comTxtGreen,
                              headingWeight: FontWeight.w500),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 24)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12, right: 12),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeadingSix(
                    headingSix: "Portfolio",
                    heaingSize: 28,
                    headingColor: Constant.comTxtDark,
                    headingWeight: FontWeight.w500),
                CommonLabel(
                    bgColor: Color(0xFF4E84FF),
                    name: "Free Share",
                    fontColor: Colors.white,
                    labelRadiusSmall: 9,
                    icondata: Icons.currency_pound,
                    iconColor: Colors.white,
                    iconSize: 16),
              ],
            ),
            SizedBox(height: 24),
            HeadingSix(
                headingSix: "\£ 8,603.87",
                heaingSize: 28,
                headingColor: Constant.comTxtDark,
                headingWeight: FontWeight.w500),
            SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.north_east, color: Constant.comTxtGreen, size: 16),
                HeadingSix(
                    headingSix: "Up by \£633.80",
                    heaingSize: 14,
                    headingColor: Constant.comTxtGreen,
                    headingWeight: FontWeight.w500),
                HeadingSix(
                    headingSix: " Since you began investing",
                    heaingSize: 14,
                    headingColor: Constant.comTxtdull,
                    headingWeight: FontWeight.w500),
              ],
            ),
            SizedBox(height: 24),
            Container(
                height: 240,
                child: HeadingSix(
                  headingSix: "Graph",
                  heaingSize: 16,
                  headingColor: Constant.comTxtDark,
                  headingWeight: FontWeight.w500,
                )),
            SizedBox(height: 24),
            HeadingSix(
                headingSix: "Inverstments",
                heaingSize: 18,
                headingColor: Constant.comTxtDark,
                headingWeight: FontWeight.w500),
            SizedBox(height: 18),
            Container(
                child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.symmetric(horizontal: 8),
              itemCount: companies.length,
              itemBuilder: (context, index) {
                final listOfCom = companies[index];
                return ListOfCompanies(listOfCom);
              },
            )),
          ]),
    );
  }
}
