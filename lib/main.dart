import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ninjaid/main_model.dart';
import 'package:provider/provider.dart';

void main() => runApp(MaterialApp(
      home: NinjaCard(),
    ));

class NinjaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MainModel>(
      create: (_) => MainModel(),
      child: Scaffold(
          backgroundColor: Colors.grey[900],
          appBar: AppBar(
            title: Text('Ninja ID Card'),
            centerTitle: true,
            backgroundColor: Colors.grey[850],
            elevation: 0.0,
          ),
          body: Consumer<MainModel>(builder: (context, model, child) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 40.0, 0, 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/user.jpg'),
                      radius: 40.0,
                    ),
                  ),
                  Divider(
                    height: 90.0,
                    color: Colors.grey[800],
                  ),
                  Text(
                    'Name',
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 2.0,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Chun-li',
                    style: TextStyle(
                      color: Colors.amber[200],
                      letterSpacing: 2.0,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Text(
                    'CURRENT NINJA LEVEL',
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 2.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        '${model.level}',
                        style: TextStyle(
                          color: Colors.amber[200],
                          letterSpacing: 2.0,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 80.0,
                      ),
                      IconButton(
                        onPressed: () {
                          model.levelUp();
                        },
                        icon: Icon(Icons.exposure_plus_1),
                        color: Colors.grey[400],
                        iconSize: 35.0,
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      IconButton(
                        onPressed: () {
                          model.levelDown();
                        },
                        icon: Icon(Icons.exposure_neg_1),
                        color: Colors.grey[400],
                        iconSize: 35.0,
                      ),
                    ],
                  ),
                  SizedBox(height: 30.0),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.email,
                        color: Colors.grey[400],
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        'xxxx@xxx.com',
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 18.0,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          })),
    );
  }
}
