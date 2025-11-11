import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "week5",
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text("My Hobby"),
        ),
        body: Padding(
          padding: EdgeInsets.all(40),
          child: Column(  
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.green[600],
                ),
                padding: EdgeInsets.all(20),
                //width: 500,
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        // Padding(
                        //   padding: EdgeInsets.all(20)
                        // ),
                        Icon(
                          Icons.favorite,
                          color: Colors.pink,
                          size: 24.0,
                        ),
                        SizedBox(width: 30),
                        Text(
                          " Favorite",
                          style: TextStyle(
                            color: Colors.white
                          ),
                        )
                      ],
                  ),
                ),
              )
            ],
          ),
        ),
      )
    )

  );
}

