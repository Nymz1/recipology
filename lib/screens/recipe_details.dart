import 'package:flutter/material.dart';
import '../class/recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetail({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  int _sliderVal = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.title),
      ),
      body: SafeArea(
        child: Column(children: <Widget>[
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Image(
              image: AssetImage(widget.recipe.imagePath),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            widget.recipe.title,
            style: const TextStyle(fontSize: 18),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(7.0),
              itemCount: widget.recipe.ingredients.length,
              itemBuilder: (BuildContext context, int index) {
                final ingredient = widget.recipe.ingredients[index];

                return Text('${ingredient.quantity * _sliderVal} '
                            '${ingredient.measure} '
                            '${ingredient.name} ');
              },
            ),
          
          ),
          
          Expanded(
            child: SingleChildScrollView(
              child: Text(widget.recipe.description,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,),
            ),
          ),
          Text('${widget.recipe.calories * _sliderVal} calories',
            style: const TextStyle(
              fontSize: 16,
            ),),
          Slider(
            min: 1,
            max: 10,
            divisions: 8,
            label: '${_sliderVal * widget.recipe.servings} servings',
            value: _sliderVal.toDouble(),
            onChanged: (newValue) {
              setState(() {
                _sliderVal = newValue.round();
              });
            },
            activeColor: Colors.green,
            inactiveColor: Colors.black,
          ),
        ],
        )
      ),
    );
  }
}