import 'package:flutter/material.dart';

import '../../config/constant.dart';
import '../../widgets/common-textfield.dart';
import '../../widgets/heading_six.dart';
import '../detailPage/detail.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<Map<String, String>> companies = [
    {
      'head': 'SONIA',
      // 'subHead': 'Tracker',
      'des': 'XSTR',
      'img': '../../assets/fr1-1.PNG'
    },
    {
      'head': 'Pound',
      // 'subHead': 'Overnight...',
      'des': 'CSH2',
      'img': '../../assets/fr1-2.PNG'
    },
    {
      'head': 'Short',
      // 'subHead': 'Term Bon...',
      'des': 'MINT',
      'img': '../../assets/fr1-3.PNG'
    },
    {
      'head': 'Fed Rac',
      // 'subHead': 'Tracker',
      'des': 'FEDG',
      'img': '../../assets/fr1-4.PNG'
    }
  ];
  final List<Map<String, String>> companiesTwo = [
    {
      'head': 'SONIA',
      // 'subHead': 'Tracker',
      'des': 'XSTR',
      'img': '../../assets/fr2-1.PNG'
    },
    {
      'head': 'Pound',
      // 'subHead': 'Overnight...',
      'des': 'CSH2',
      'img': '../../assets/fr2-2.PNG'
    },
    {
      'head': 'Short',
      // 'subHead': 'Term Bon...',
      'des': 'MINT',
      'img': '../../assets/fr2-3.PNG'
    },
    {
      'head': 'Fed Rac',
      // 'subHead': 'Tracker',
      'des': 'FEDG',
      'img': '../../assets/fr2-4.PNG'
    }
  ];
  final List<Map<String, String>> companiesThree = [
    {
      'head': 'SONIA',
      // 'subHead': 'Tracker',
      'des': 'XSTR',
      'img': '../../assets/fr3-1.PNG'
    },
    {
      'head': 'Pound',
      // 'subHead': 'Overnight...',
      'des': 'CSH2',
      'img': '../../assets/fr3-2.PNG'
    },
    {
      'head': 'Short',
      // 'subHead': 'Term Bon...',
      'des': 'MINT',
      'img': '../../assets/fr3-3.PNG'
    },
    {
      'head': 'Fed Rac',
      // 'subHead': 'Tracker',
      'des': 'FEDG',
      'img': '../../assets/fr3-4.PNG'
    }
  ];
  final List<Map<String, String>> sectorTitle = [
    {
      'icon': 'ebbc', // Unicode code point for factory icon
      'iconColor': 'FF664AA1',
      'Bgcolor': 'FFE3D7FD',
      'textColor': 'FF664AA1',
      'name': 'Industries'
    },
    {
      'icon': 'ea62', // Unicode code point for nightlife icon
      'iconColor': 'FFF1A86B',
      'Bgcolor': 'FFFEF1E8',
      'textColor': 'FFF1A86B',
      'name': 'Food & drink'
    },
    {
      'icon': 'f805', // Unicode code point for stethoscope icon
      'iconColor': 'FFB95575',
      'Bgcolor': 'FFFDDFE7',
      'textColor': 'FFB95575',
      'name': 'Health'
    }
  ];

  Widget ListOfCompanies(Map<String, String> companies) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: Colors.transparent,
          padding: EdgeInsets.all(0)),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailsPage()),
        );
      },
      child: Container(
        color: Colors.white,
        width: 100,
        padding: EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
                radius: 30, backgroundImage: AssetImage(companies['img']!)),
            SizedBox(height: 6),
            Text(companies['head']!,
                style: TextStyle(color: Constant.comTxtDark, fontSize: 15)),
            // SizedBox(height: 6),
            // Text(companies['subHead']!,
            //     style: TextStyle(color: Constant.comTxtDark, fontSize: 15)),
            SizedBox(height: 6),
            Text(companies['des']!,
                style: TextStyle(color: Constant.comTxtdull, fontSize: 14)),
          ],
        ),
      ),
    );
  }

  Widget SectorWidget(Map<String, String> nameList) {
    return Container(
      margin: const EdgeInsets.only(right: 16.0),
      padding: const EdgeInsets.all(16.0),
      width: 130,
      decoration: BoxDecoration(
        color: Color(int.parse(nameList['Bgcolor']!, radix: 16)),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            IconData(int.parse(nameList['icon']!, radix: 16),
                fontFamily: 'MaterialIcons'),
            color: Color(int.parse(nameList['iconColor']!, radix: 16)),
          ),
          Text(nameList['name']!,
              style: TextStyle(
                  color: Color(int.parse(nameList['iconColor']!, radix: 16)))),
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
              height: 40.0,
              child: CommonTextFormField(
                  labeltxt: "Search",
                  labeltxtColor: Constant.textFormFieldColor,
                  labeltxtSize: Constant.textFormFieldSize,
                  labeltxtFontWeight: Constant.textFormFieldSizeFontW,
                  focuBorColor: Constant.textFormFocuBorCol,
                  focuBorWid: Constant.textFormFocuBorWid,
                  enaBorColor: Constant.textFormEnaBorCol,
                  enaBorWid: Constant.textFormEnaBorWid,
                  borderRadiusTL: 8,
                  borderRadiusBR: 8,
                  contentPadHor: Constant.textFormcontentPadHor,
                  contentPadHVer: Constant.textFormcontentPadHVer,
                  keyborType: TextInputType.text,
                  enabled: true,
                  dropdownIcon: false,
                  textFormBG: Constant.bgWhite,
                  prefixIc: "../../assets/search_ic.svg"
                  // controllerTxt: _bdoController,
                  )),
          const SizedBox(height: 18.0),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            HeadingSix(
                headingSix: "Sector",
                heaingSize: 18,
                headingColor: Constant.comTxtDark,
                headingWeight: FontWeight.w500)
          ]),
          const SizedBox(height: 18.0),
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(right: 8, bottom: 8),
              itemCount: sectorTitle.length,
              itemBuilder: (context, index) {
                final listOfCom = sectorTitle[index];
                return SectorWidget(listOfCom);
              },
            ),
          ),
          const SizedBox(height: 18.0),
          HeadingSix(
              headingSix: "Header",
              heaingSize: 18,
              headingColor: Constant.comTxtDark,
              headingWeight: FontWeight.w500),
          const SizedBox(height: 18.0),
          Container(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 0),
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
            height: 120,
            color: Colors.white,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
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
