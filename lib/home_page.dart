import 'package:flutter/material.dart';
import 'package:untitled_ui/search.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> names = [
    "Chair",
    "Large Chair",
    "New Chair",
    "Chair",
    "Large Chair",
    "New Chair",
    "Chair",
    "Large Chair",
    "New Chair",
    "Chair",
  ];
  List<String> subtitle = [
    r"$500",
    r"$400",
    r"$540",
    r"$500",
    r"$400",
    r"$540",
    r"$500",
    r"$400",
    r"$500",
  ];
  List a = [
    "https://i.pinimg.com/564x/98/80/48/988048edd482a682e527b9d8c3b0cb10.jpg",
    "https://i.pinimg.com/564x/48/5c/b4/485cb4b2e9ab7948c2ee9a5b412b4961.jpg",
    "https://i.pinimg.com/564x/f2/f2/84/f2f28409ad636e467655167071ce85a3.jpg",
    "https://i.pinimg.com/564x/3c/ad/32/3cad32c1e3ee16f8821572acec9e46a4.jpg",
    "https://i.pinimg.com/564x/e9/89/46/e98946278d0ad0b2304f8db58b1b8735.jpg",
    "https://i.pinimg.com/564x/58/74/0d/58740d63f20ff3db65cc8d06b60dc1b1.jpg",
    "https://i.pinimg.com/564x/cc/59/91/cc599159f777678c63c804c26d0241eb.jpg",
    "https://i.pinimg.com/564x/2f/f7/08/2ff708ea83f022dc9559ae66de28dcd3.jpg",
    "https://i.pinimg.com/564x/17/e5/3f/17e53f6ecbd365b67652c3f70585ffc6.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          title: Text(
            'Best Furniture',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          actions: [
            ImageIcon(
              AssetImage("assets/images/js.png"),
              color: Colors.black,
            ),
          ],
          backgroundColor: Color(0xFFECF2F4),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Search(),
              ListView.builder(
                itemCount: a.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext ctx, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 10,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFDBDEDF),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Image.network(a[index]),
                                ),
                              ],
                            ),
                          ),
                          ListTile(
                            title: Text(
                              names[index],
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            subtitle: Text(
                              subtitle[index],
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            trailing: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFDBDEDF),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ImageIcon(
                                AssetImage("assets/images/shopping.png"),
                                color: Colors.red,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
