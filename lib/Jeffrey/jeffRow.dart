import 'package:flutter/material.dart';
import 'jeff.dart';

class JeffreyRow extends StatelessWidget {
  final JeffBrain jeffBrain;
  const JeffreyRow({Key? key, required this.jeffBrain}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(8.0),
        physics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        scrollDirection: Axis.horizontal,
        children: jeffBrain.jeffs.map((Jeff jb) {
          return JeffStory(
            jeff: jb,
          );
        }).toList(),
      ),
    );
  }
}

class JeffStory extends StatelessWidget {
  final Jeff jeff;
  const JeffStory({Key? key, required this.jeff}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
