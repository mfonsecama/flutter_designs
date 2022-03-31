import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(children: const [
      TableRow(children: [
        _SingleCard(
          name: 'General',
          icon: Icons.cast,
          color: Colors.blue,
        ),
        _SingleCard(
          name: 'Transport',
          icon: Icons.emoji_transportation,
          color: Colors.red,
        )
      ]),
      TableRow(children: [
        _SingleCard(
          name: 'General',
          icon: Icons.cast,
          color: Colors.blue,
        ),
        _SingleCard(
          name: 'Transport',
          icon: Icons.emoji_transportation,
          color: Colors.red,
        )
      ]),
      TableRow(children: [
        _SingleCard(
          name: 'General',
          icon: Icons.cast,
          color: Colors.blue,
        ),
        _SingleCard(
          name: 'Transport',
          icon: Icons.emoji_transportation,
          color: Colors.red,
        )
      ]),
      TableRow(children: [
        _SingleCard(
          name: 'General',
          icon: Icons.cast,
          color: Colors.blue,
        ),
        _SingleCard(
          name: 'Transport',
          icon: Icons.emoji_transportation,
          color: Colors.red,
        )
      ])
    ]);
  }
}

class _SingleCard extends StatelessWidget {
  final String name;
  final IconData icon;
  final Color color;

  const _SingleCard(
      {Key? key, required this.name, required this.icon, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: color,
          child: Icon(
            icon,
            size: 35,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          name,
          style: TextStyle(color: color, fontSize: 18),
        )
      ],
    ));
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: child,
          ),
        ),
      ),
    );
  }
}
