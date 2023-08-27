import 'package:flutter/material.dart';

import '../../config/constant.dart';
import '../../widgets/heading_six.dart';

class UniverseScreen extends StatefulWidget {
  UniverseScreen({Key? key}) : super(key: key);

  @override
  State<UniverseScreen> createState() => _UniverseScreenState();
}

class _UniverseScreenState extends State<UniverseScreen> {
  final List<Map<String, String>> companies = [
    {
      'head': 'SONIA',
      'subHead': 'Tracker',
      'des': 'XSTR',
      'img': '../../assets/ic-24.PNG'
    },
    {
      'head': 'Pound',
      'subHead': 'Overnight...',
      'des': 'CSH2',
      'img': '../../assets/ic-24.PNG'
    },
    {
      'head': 'Short',
      'subHead': 'Term Bon...',
      'des': 'MINT',
      'img': '../../assets/ic-24.PNG'
    },
    {
      'head': 'Fed Rac',
      'subHead': 'Tracker',
      'des': 'FEDG',
      'img': '../../assets/ic-24.PNG'
    }
  ];
  Widget ListOfCompanies(Map<String, String> companies) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          HeadingSix(
              headingSix: "Auguest 2023",
              heaingSize: 17,
              headingColor: Constant.comTxtDark,
              headingWeight: FontWeight.w500),
          SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                  radius: 24, backgroundImage: AssetImage(companies['img']!)),
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
                                  color: Constant.comTxtDark, fontSize: 15)),
                          SizedBox(height: 6),
                          Text(companies['subHead']!,
                              style: TextStyle(
                                  color: Constant.comTxtdull, fontSize: 15)),
                        ],
                      ),
                      IconButton(
                          onPressed: null,
                          icon: Icon(Icons.arrow_forward,
                              color: Constant.comTxtPink))
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
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: HeadingSix(
                headingSix: "Activty",
                heaingSize: 28,
                headingColor: Constant.comTxtDark,
                headingWeight: FontWeight.w500),
          ),
          SizedBox(height: 32),
          Container(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.symmetric(horizontal: 8),
              itemCount: companies.length,
              itemBuilder: (context, index) {
                final listOfCom = companies[index];
                return ListOfCompanies(listOfCom);
              },
            ),
          ),
        ]);
  }
}
