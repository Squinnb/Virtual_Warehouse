import 'package:flutter/material.dart';
import 'JeffItemScreen.dart';
import 'jeff_data.dart';

class JeffItem extends StatelessWidget {
  final Jeff jeff;
  JeffItem({required this.jeff});

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
                ),
              ),
            ],
          ),
        ), // Inkwell gives parent onTap behavior
      ),
    );
  }
}

class JeffGrid extends StatelessWidget {
  final JeffBrain jeffBrain;
  const JeffGrid({Key? key, required this.jeffBrain}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      crossAxisSpacing: 5.0,
      primary: false,
      padding: EdgeInsets.all(10.0),
      children: jeffBrain.jeffs.map((Jeff jb) {
        return JeffItem(jeff: jb);
      }).toList(),
    );
  }
}
