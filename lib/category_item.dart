import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;

  const CategoryItem({@required this.title, @required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Text(
        this.title,
        style: Theme.of(context).textTheme.title,
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [this.color.withOpacity(0.7), this.color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(15.0)),
    );
  }
}
