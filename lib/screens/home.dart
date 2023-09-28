import 'package:flutter/material.dart';
import '../class/recipe.dart';
import '../widgets/recipe_card.dart';
import '../screens/recipe_details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Recipology')),
      ),
      body: SafeArea(
       child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: Recipe.samples.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                return RecipeDetail(recipe: Recipe.samples[index]);
              },
                ),
              );
            },
            child: buildRecipeCard(Recipe.samples[index]),
          );
        },
        ),
      ), 
      );
    
  }
}