import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool onch = false;
  List name = [
    'Bank of Baroda',
    'State Bank of India',
    'Canara Bank',
    'Central Bank of India',
    'Indian Bank',
    'Union Bank of India',
    'Axis Bank Ltd.',
    'HDFC Bank Ltd',
    'ICICI Bank Ltd.',
    'Kotak Mahindra Bank Ltd.'
  ];
  List logo = [
    'assets/images/bob.jpg',
    'assets/images/SBI-Logo.png',
    'assets/images/canara-bank-logo.png',
    'assets/images/central-bank.png',
    'assets/images/Indian-Bank-Logo.png',
    'assets/images/union-bank-of-india-logo.png',
    'assets/images/axis-bank-logo.jpg',
    'assets/images/hdfc.jpg',
    'assets/images/899890-icici-bank-logo.jpg',
    'assets/images/kotak-mahindra-bank-0-logo.jpg',
  ];
  List num = [
    '1800 258 44 55',
    '1800 11 2211',
    '1800 425 0018',
    '022 61648786',
    '1800 425 00 000',
    '1800 22 22 44',
    '22 24252525',
    '1800 202 6161',
    '1800 1080',
    '44 20 7977 6900'
  ];
  List link = [
    'https://www.bankofbaroda.in',
    'https://www.onlinesbi.sbi',
    'https://canarabank.com',
    'https://www.centralbankofindia.co.in/en',
    'https://www.indianbank.in',
    'https://www.unionbankofindia.co.in',
    'https://www.axisbank.com/',
    'https://www.hdfcbank.com/',
    'https://www.icicibank.com/',
    'https://www.kotak.com/en/home.html'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade800,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade800,
          title: Text("Bank details"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: name.length,
          itemBuilder: (context, index) {
            return Box(logo[index], name[index], link[index], num[index]);
          },
        ),
      ),
    );
  }

  Widget Box(String a, String b, String c, String d) {
    return ExpansionTile(
      collapsedTextColor: Colors.white,
      textColor: Colors.white,
      childrenPadding: EdgeInsets.all(10),
      onExpansionChanged: (value) {
        setState(() {
          onch = value;
        });
      },
      leading: (onch == false)
          ? Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('$a'),
                  fit: BoxFit.cover
                ),
              ),
            )
          : Container(width: 30,height: 30,),
      title: Text('$b'),
      trailing: Container(
        width: 50,
      ),
      children: [
        Container(
          height: 190,
          width: double.infinity,
          color: Colors.grey.shade800,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){
                  setState(() {
                    showDialog(context: context, builder: (context) {
                      return AlertDialog(
                        insetPadding: EdgeInsets.all(0),
                        content: Image.asset('$a'),
                      );
                    },);
                  });
                },
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('$a'),
                      fit: BoxFit.cover
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "$b",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Web :",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  InkWell(
                    onTap: () async{
                      await launchUrl(Uri.parse("$c"));
                    },
                    child: Text(
                      " $c",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Toll free :",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  InkWell(
                    onTap: () async{
                      await launchUrl(Uri.parse("tel:$d"));
                    },
                    child: Text(
                      " +91 $d",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
