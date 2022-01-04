import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'jeffData.dart';

class JeffItem extends StatelessWidget {
  final Jeff jeff;
  JeffItem(this.jeff);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: jeff.id,
      child: Card(
        clipBehavior: Clip.antiAlias,
        color: jeff.color,
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => JeffItemScreen(
                  jeff: jeff,
                ),
              ),
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 3,
                child: SizedBox(
                  child: Image.asset(
                    'Images/bezos.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Center(
                    child: Text(
                      jeff.name,
                      style: TextStyle(
                        height: 1.5,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.fade,
                      softWrap: false,
                    ),
                  )),
            ],
          ),
        ), // Inkwell gives parent onTap behavior
      ),
    );
  }
}

class JeffItemScreen extends StatelessWidget {
  final Jeff jeff;
  JeffItemScreen({Key? key, required this.jeff}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    JeffBrain jeffData = Provider.of<JeffBrain>(context);
    print(jeff.color);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Hero(
            tag: jeff.id,
            child: Image.asset(
              'Images/bezos.png',
              width: 100,
            ),
          ),
          Center(
            child: Text(
              'Jeffrey Points: ${jeffData.jeffreyPoints}',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'FiraSans',
                fontSize: 25.0,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 5,
                child: IconButton(
                  iconSize: 50,
                  onPressed: () {
                    print('Jeff Points going up');
                    jeffData.increasePoints();
                  },
                  icon: Icon(
                    Icons.trending_up,
                    color: Colors.lightGreenAccent,
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: IconButton(
                  iconSize: 50,
                  onPressed: () {
                    print('There goes my Jeff Points...');
                    jeffData.decreasePoints();
                  },
                  icon: Icon(
                    Icons.trending_down,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: jeff.color,
    );
  }
}
