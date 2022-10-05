import 'package:flutter/material.dart';
import 'groceries.dart';
import 'detail_belanja.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'List Belanjaan',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final Groceries data = groceryList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return detail(data: data);
              }));
            },
            child: Container(
              padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
              child: Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.green,
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Image.network(
                      data.productImageUrls[0],
                      width: 200,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      data.name,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      data.storeName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      data.price,
                      style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green.shade700,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: groceryList.length,
      ),
    );
  }
}
