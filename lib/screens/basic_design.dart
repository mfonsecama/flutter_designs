import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const FadeInImage(
              placeholder: AssetImage('assets/landscape.jpg'),
              image: AssetImage('assets/landscape.jpg')),
          const Title(),
          const Buttons(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tellus tortor, laoreet eget finibus et, luctus non nisi. Sed elementum nisl nec feugiat tristique. Mauris et purus vitae tortor euismod semper in non mauris. Ut non ante nisi. Nullam non metus eget lectus ornare imperdiet sit amet at augue. Fusce in rhoncus lacus. Nam lobortis erat in est porttitor, id sollicitudin lorem cursus. Proin est dui, euismod eu luctus semper, posuere non lacus. Duis iaculis feugiat ipsum, et convallis purus hendrerit a. Vivamus massa sem, lacinia ac ipsum a, scelerisque imperdiet orci.'),
          )
        ],
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          IconTextColumn(
            icon: Icons.call,
            text: 'Call',
          ),
          IconTextColumn(
            icon: Icons.alt_route,
            text: 'Route',
          ),
          IconTextColumn(
            icon: Icons.share,
            text: 'Share',
          ),
        ],
      ),
    );
  }
}

class IconTextColumn extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconTextColumn({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue),
        const SizedBox(
          height: 2,
        ),
        Text(
          text.toUpperCase(),
          style: const TextStyle(color: Colors.blue, fontSize: 12),
        )
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Pradera de Heidi',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(color: Colors.black45),
                ),
              ],
            ),
          ),
          Expanded(child: Container()),
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: Row(
              children: const [
                Icon(
                  Icons.star,
                  color: Colors.red,
                ),
                Text('41')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
