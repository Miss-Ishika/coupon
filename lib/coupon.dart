import 'package:flutter/material.dart';

class Coupon extends StatelessWidget {
  const Coupon({Key? key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> all = [
      {'code': 'A001', 'name': 'Get 50% off', 'desc': 'yyyyyyyyyy'},
      {'code': 'A002', 'name': 'Get 20% off', 'desc': 'yyyyyyyyyy'},
      {'code': 'A003', 'name': 'Get 5% off', 'desc': 'yyyyyyyyyy'},
      {'code': 'A004', 'name': 'Flat 20%', 'desc': 'yyyyyyyyyy'},
      {'code': 'A005', 'name': 'Flat Rs. 100 off', 'desc': 'yyyyyyyyyy'},
      {'code': 'A006', 'name': 'Flat Rs. 150 off', 'desc': 'yyyyyyyyyy'},
      {'code': 'A007', 'name': 'Get 50% + 50% discount', 'desc': 'yyyyyyyyyy'},
      {'code': 'A008', 'name': '25% off', 'desc': 'yyyyyyyyyy'},
    ];

    // List<Map<String, dynamic>> search = [];

    // void initState() {
    //   search = all;
    //   super.initState();
    // }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            'Coupons',
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
          ),
        ),
        leading: InkWell(
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(children: [
        TextField(
          decoration:
              InputDecoration(hintText: 'Code', suffixIcon: Icon(Icons.search)),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
            height: 60,
            width: double.infinity,
            color: Colors.grey,
            child: Center(
              child: Text(
                'Available Coupons',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 213, 218, 213)),
              ),
            )),
        SizedBox(
          height: 20,
        ),
        Expanded(
            child: ListView.builder(
                itemBuilder: (context, index) => Card(
                      key: ValueKey(all[index]['code']),
                      color: Colors.white,
                      elevation: 4,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: ListTile(
                          title: Row(children: [
                            Column(
                              children: [
                                Text(
                                  all[index]['name'],
                                ),
                                SizedBox(
                                  height: 10,
                                )
                              ],
                            )
                          ]),
                          subtitle: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    all[index]['desc'],
                                  ),
                                  Divider(
                                    indent: 20,
                                    endIndent: 20,
                                    color: Colors.black,
                                    thickness: 10,
                                  ),
                                  Container(
                                    child: Center(
                                        child: Text(
                                      all[index]['code'],
                                    )),
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 247, 250, 247),
                                        border: Border.all(
                                            width: 2, color: Colors.green)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          trailing: InkWell(
                            onTap: () {},
                            child: Text(
                              'Apply',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20),
                            ),
                          )),
                    )))
      ]),
      backgroundColor: Color.fromARGB(255, 210, 213, 210),
    );
  }
}
