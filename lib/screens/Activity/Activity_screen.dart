import 'package:flutter/material.dart';

import '../../config/constant.dart';
import '../../widgets/heading_six.dart';

class ActivityScreen extends StatefulWidget {
  ActivityScreen({Key? key}) : super(key: key);

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
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
  final List<Map<String, String>> activtydata = [
    {
      'name': 'Withdrawal',
      'subHead': '20 Dec 2022',
      'amt': '-\£270.00',
      'img': '../../assets/withdrawal_ic.PNG',
      'category': 'Withdrawal'
    },
    {
      'name': 'Interest',
      'subHead': 'Interest - 20 Dec 2022',
      'amt': '\£0.23',
      'img': '../../assets/interest_ic.PNG',
      'category': 'Interest'
    },
    {
      'name': 'November Statement',
      'subHead': '1 Dec 2002',
      'amt': '',
      'img': '../../assets/statement_ic.PNG',
      'category': 'Statement'
    }
  ];
  final List<Map<String, String>> activtydata2 = [
    {
      'name': 'Senior',
      'subHead': 'Income - 11 Nov 2022',
      'amt': '\£270.00',
      'img': '../../assets/interest_ic.PNG',
      'category': 'Withdrawal'
    },
    {
      'name': 'Cineworld',
      'subHead': '3,471 Share - 2 Nov 2022',
      'amt': '\£0.23',
      'img': '../../assets/cine_ic.PNG',
      'category': 'Interest'
    },
    {
      'name': 'Cineworld',
      'subHead': '3,471 Share - 2 Nov 2022',
      'amt': '\£0.23',
      'img': '../../assets/cine_ic.PNG',
      'category': 'Interest'
    }
  ];

  Widget activityData(Map<String, String> activity) {
    final bool showSubHead = activity['subHead']!.isNotEmpty;
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                  radius: 20, backgroundImage: AssetImage(activity['img']!)),
              SizedBox(width: 16),
              Expanded(
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(activity['name']!,
                              style: TextStyle(
                                  color: Constant.comTxtDark, fontSize: 15)),
                          const SizedBox(height: 6),
                          Text(
                            activity['subHead']!,
                            style: TextStyle(
                                color: Constant.comTxtdull, fontSize: 15),
                          ),
                        ],
                      ),
                      activity['category'] == 'Withdrawal' ||
                              activity['category'] == 'Interest'
                          ? Text(
                              activity['amt']!,
                              style: const TextStyle(fontSize: 18.0),
                            )
                          : IconButton(
                              onPressed: null,
                              icon: Icon(Icons.arrow_forward,
                                  color: Constant.comTxtPink))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 32),
      ],
    );
  }

  Widget activityData2(Map<String, String> activity) {
    final bool showSubHead = activity['subHead']!.isNotEmpty;
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                  radius: 20, backgroundImage: AssetImage(activity['img']!)),
              SizedBox(width: 16),
              Expanded(
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(activity['name']!,
                              style: TextStyle(
                                  color: Constant.comTxtDark, fontSize: 15)),
                          const SizedBox(height: 6),
                          Visibility(
                            visible: showSubHead,
                            child: Text(
                              activity['subHead']!,
                              style: TextStyle(
                                  color: Constant.comTxtdull, fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                      activity['category'] == 'Withdrawal' ||
                              activity['category'] == 'Interest'
                          ? Text(
                              activity['amt']!,
                              style: TextStyle(fontSize: 18.0),
                            )
                          : IconButton(
                              onPressed: null,
                              icon: Icon(Icons.arrow_forward,
                                  color: Constant.comTxtPink))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 32),
      ],
    );
  }

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
                headingSix: "Activity",
                heaingSize: 28,
                headingColor: Constant.comTxtDark,
                headingWeight: FontWeight.w500),
          ),
          SizedBox(height: 32),
          Container(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.symmetric(horizontal: 8),
              itemCount: activtydata.length,
              itemBuilder: (context, index) {
                final listOfCom = activtydata[index];
                return activityData(listOfCom);
              },
            ),
          ),
          HeadingSix(
              headingSix: "November",
              heaingSize: 18,
              headingColor: Constant.comTxtDark,
              headingWeight: FontWeight.w500),
          SizedBox(height: 32),
          Container(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.symmetric(horizontal: 8),
              itemCount: activtydata2.length,
              itemBuilder: (context, index) {
                final listOfCom = activtydata2[index];
                return activityData2(listOfCom);
              },
            ),
          ),
        ]);
  }
}
