import 'package:flutter/material.dart';

import '../../config/constant.dart';
import '../../widgets/common-textfield.dart';
import '../../widgets/heading_six.dart';

class PortfolioScreen extends StatefulWidget {
  PortfolioScreen({Key? key}) : super(key: key);

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  final List<Map<String, String>> companies = [
    {
      'head': 'SONIA',
      'subHead': 'Tracker',
      'des': 'XSTR',
      'img': '../../assets/fr1-1.PNG'
    },
    {
      'head': 'Pound',
      'subHead': 'Overnight...',
      'des': 'CSH2',
      'img': '../../assets/fr1-2.PNG'
    },
    {
      'head': 'Short',
      'subHead': 'Term Bon...',
      'des': 'MINT',
      'img': '../../assets/fr1-3.PNG'
    },
    {
      'head': 'Fed Rac',
      'subHead': 'Tracker',
      'des': 'FEDG',
      'img': '../../assets/fr1-4.PNG'
    }
  ];
  final List<Map<String, String>> companiesTwo = [
    {
      'head': 'SONIA',
      'subHead': 'Tracker',
      'des': 'XSTR',
      'img': '../../assets/fr2-1.PNG'
    },
    {
      'head': 'Pound',
      'subHead': 'Overnight...',
      'des': 'CSH2',
      'img': '../../assets/fr2-2.PNG'
    },
    {
      'head': 'Short',
      'subHead': 'Term Bon...',
      'des': 'MINT',
      'img': '../../assets/fr2-3.PNG'
    },
    {
      'head': 'Fed Rac',
      'subHead': 'Tracker',
      'des': 'FEDG',
      'img': '../../assets/fr2-4.PNG'
    }
  ];
  final List<Map<String, String>> companiesThree = [
    {
      'head': 'SONIA',
      'subHead': 'Tracker',
      'des': 'XSTR',
      'img': '../../assets/fr3-1.PNG'
    },
    {
      'head': 'Pound',
      'subHead': 'Overnight...',
      'des': 'CSH2',
      'img': '../../assets/fr3-2.PNG'
    },
    {
      'head': 'Short',
      'subHead': 'Term Bon...',
      'des': 'MINT',
      'img': '../../assets/fr3-3.PNG'
    },
    {
      'head': 'Fed Rac',
      'subHead': 'Tracker',
      'des': 'FEDG',
      'img': '../../assets/fr3-4.PNG'
    }
  ];
  Widget ListOfCompanies(Map<String, String> companies) {
    return Container(
      width: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
              radius: 30, backgroundImage: AssetImage(companies['img']!)),
          SizedBox(height: 6),
          Text(companies['head']!,
              style: TextStyle(color: Constant.comTxtDark, fontSize: 15)),
          SizedBox(height: 6),
          Text(companies['subHead']!,
              style: TextStyle(color: Constant.comTxtDark, fontSize: 15)),
          SizedBox(height: 6),
          Text(companies['des']!,
              style: TextStyle(color: Constant.comTxtdull, fontSize: 14)),
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
          Container(
            height: 140,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 8),
              itemCount: companies.length,
              itemBuilder: (context, index) {
                final listOfCom = companies[index];
                return ListOfCompanies(listOfCom);
              },
            ),
          ),
          const SizedBox(height: 18.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HeadingSix(
                  headingSix: "AI an robotics",
                  heaingSize: 18,
                  headingColor: Constant.comTxtDark,
                  headingWeight: FontWeight.w500),
              HeadingSix(
                  headingSix: "Sell All",
                  heaingSize: 14,
                  headingColor: Constant.comTxtPink,
                  headingWeight: FontWeight.w500),
            ],
          ),
          const SizedBox(height: 16.0),
          Container(
            height: 140,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 8),
              itemCount: companiesTwo.length,
              itemBuilder: (context, index) {
                final listOfCom = companiesTwo[index];
                return ListOfCompanies(listOfCom);
              },
            ),
          ),
          const SizedBox(height: 18.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HeadingSix(
                  headingSix: "Over-the-counter (OTC) stocks",
                  heaingSize: 18,
                  headingColor: Constant.comTxtDark,
                  headingWeight: FontWeight.w500),
              HeadingSix(
                  headingSix: "Sell All",
                  heaingSize: 14,
                  headingColor: Constant.comTxtPink,
                  headingWeight: FontWeight.w500),
            ],
          ),
          const SizedBox(height: 16.0),
          Container(
            height: 140,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 8),
              itemCount: companiesThree.length,
              itemBuilder: (context, index) {
                final listOfCom = companiesThree[index];
                return ListOfCompanies(listOfCom);
              },
            ),
          ),
        ]);
  }
}
