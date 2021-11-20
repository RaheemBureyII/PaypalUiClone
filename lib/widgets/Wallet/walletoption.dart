import 'package:flutter/material.dart';

class WalletOption extends StatelessWidget {
  const WalletOption({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Image(
                              image: AssetImage("assets/images/iconlogo.png"),
                              width: 50,
                            ),
                            Text("Balance",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey.shade900)),
                          ],
                        ),
                        Text("\$40.00",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Text("\$40.00",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.normal)),
                    SizedBox(height: 50)
                  ]),
            ),
            Container(
              //margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Banks and cards"),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            color: Colors.blue.shade900,
                          )),
                    )
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image(
                    image: AssetImage("assets/images/creditcard.png"),
                    width: 400,
                    height: 300,
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
