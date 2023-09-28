import 'package:flutter/material.dart';
import '../class/recipe.dart';


Widget buildRecipeCard(Recipe recipe) {
  return Card(
    elevation: 2.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10)
    ),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Image(image: AssetImage(recipe.imagePath)),
          const SizedBox(
            height: 3.0,
          ),
          Text(
            recipe.title,
            style: const TextStyle(
              fontSize: 10.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'Palatino',
            ),
          ),
        ]
      ),
    )
  );
}