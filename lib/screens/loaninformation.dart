// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoanInformation extends StatefulWidget {
  const LoanInformation({super.key});

  @override
  State<LoanInformation> createState() => _LoanInformationState();
}

class _LoanInformationState extends State<LoanInformation> {
  final List<String> loans = <String>[
    'Current loans',
    'Subsidy',
    'Banks Loans '
  ];
  final List<String> loansSub = <String>[
    'Loan information',
    'Click on  to start',
    'thats provides loans ',
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 160,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 21, 77, 50),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
              ),
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: (() {
                    Navigator.pop(context, true);
                  }),
                  icon: Icon(Icons.arrow_back),
                  color: Colors.white,
                ),
                SizedBox(
                  width: 90,
                ),
                Text(
                  'Loan Information',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Positioned(
            top: 120,
            left: 15,
            right: 1,
            child: SizedBox(
              height: height - 225,
              width: width,
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: loans.length,
                  itemBuilder: (BuildContext context, index) {
                    return Card(
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      elevation: 5,
                      child: ListTile(
                        title: Text(
                          loans[index],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(loansSub[index]),
                        trailing: Icon(
                          Icons.arrow_forward_ios_rounded,
                        ),
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
