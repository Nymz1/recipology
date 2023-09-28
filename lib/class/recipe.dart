

class Recipe {
  String title;
  String imagePath;
  String description;
  int servings;
  double calories;
  List<Ingredient> ingredients;

  Recipe(
    this.title,
    this.imagePath,
    this.servings,
    this.calories,
    this.ingredients,
    this.description,
  );
  

//tutaj wstawie liste przepisów
 static List<Recipe> samples = [
    Recipe(
      'Spaghetti and Meatballs',
      'images/spaghetti-and-meatballs.jpg',
      4,
      97.3,
      [
        Ingredient(1,'box','spaghetti'),
        Ingredient(4, '', 'frozen meatballs'),
        Ingredient(0.5, 'jar', 'sauce'),
      ],
      'Bacon ipsum dolor amet sausage ham hock ground round spare ribs pork belly bacon t-bone filet mignon rump tongue strip steak burgdoggen corned beef brisket. Jerky alcatra pork belly, tenderloin chuck ham prosciutto short ribs sausage. Short ribs spare ribs shankle, leberkas picanha salami pork drumstick turkey bresaola capicola chicken. Chislic brisket salami turkey turducken tri-tip shank. Capicola boudin tongue ham hock pastrami cupim. Pork loin pork belly kevin tail. Short ribs tri-tip pork chop, kielbasa jerky chicken frankfurter alcatra venison porchetta cow tenderloin. Bacon ipsum dolor amet sausage ham hock ground round spare ribs pork belly bacon t-bone filet mignon rump tongue strip steak burgdoggen corned beef brisket. Jerky alcatra pork belly, tenderloin chuck ham prosciutto short ribs sausage. Short ribs spare ribs shankle, leberkas picanha salami pork drumstick turkey bresaola capicola chicken. Chislic brisket salami turkey turducken tri-tip shank. Capicola boudin tongue ham hock pastrami cupim. Pork loin pork belly kevin tail. Short ribs tri-tip pork chop, kielbasa jerky chicken frankfurter alcatra venison porchetta cow tenderloin.',
    ),

    Recipe(
      'Tomato Soup',
      'images/Tomato-Soup.jpg',
      2,
      29.6,
      [
        Ingredient(1, 'can', 'tomato soup'),
      ],
      'Bacon ipsum dolor amet sausage ham hock ground round spare ribs pork belly bacon t-bone filet mignon rump tongue strip steak burgdoggen corned beef brisket. Jerky alcatra pork belly, tenderloin chuck ham prosciutto short ribs sausage. Short ribs spare ribs shankle, leberkas picanha salami pork drumstick turkey bresaola capicola chicken. Chislic brisket salami turkey turducken tri-tip shank. Capicola boudin tongue ham hock pastrami cupim. Pork loin pork belly kevin tail. Short ribs tri-tip pork chop, kielbasa jerky chicken frankfurter alcatra venison porchetta cow tenderloin.',
    ),

    Recipe(
      'Grilled Cheese',
      'images/Grilled-Cheese.jpg',
      1,
      250,
      [
        Ingredient(2, 'slices', 'cheese'),
        Ingredient(2, 'slices', 'bread'),
      ],
      'Bacon ipsum dolor amet sausage ham hock ground round spare ribs pork belly bacon t-bone filet mignon rump tongue strip steak burgdoggen corned beef brisket. Jerky alcatra pork belly, tenderloin chuck ham prosciutto short ribs sausage. Short ribs spare ribs shankle, leberkas picanha salami pork drumstick turkey bresaola capicola chicken. Chislic brisket salami turkey turducken tri-tip shank. Capicola boudin tongue ham hock pastrami cupim. Pork loin pork belly kevin tail. Short ribs tri-tip pork chop, kielbasa jerky chicken frankfurter alcatra venison porchetta cow tenderloin.',
    ),

    Recipe(
      'Chocolate Chip Cookie',
      'images/Chocolate-Chip-Cookies.jpg',
      24,
      68,
      [
        Ingredient(4, 'cups', 'flour',),
        Ingredient(2, 'cups', 'sugar',),
        Ingredient(0.5, 'cups', 'chocolate chips',),
      ],
      'Bacon ipsum dolor amet sausage ham hock ground round spare ribs pork belly bacon t-bone filet mignon rump tongue strip steak burgdoggen corned beef brisket. Jerky alcatra pork belly, tenderloin chuck ham prosciutto short ribs sausage. Short ribs spare ribs shankle, leberkas picanha salami pork drumstick turkey bresaola capicola chicken. Chislic brisket salami turkey turducken tri-tip shank. Capicola boudin tongue ham hock pastrami cupim. Pork loin pork belly kevin tail. Short ribs tri-tip pork chop, kielbasa jerky chicken frankfurter alcatra venison porchetta cow tenderloin.',
    ),

    Recipe(
      'Taco Salad',
      'images/Taco-Salad.jpg',
      1,
      141,
      [
        Ingredient(4, 'oz', 'nachos',),
        Ingredient(3, 'oz', 'taco meat',),
        Ingredient(0.5, 'cup', 'cheese',),
        Ingredient(0.25, 'cup', 'chopped tomatoes',),
      ],
      'Bacon ipsum dolor amet sausage ham hock ground round spare ribs pork belly bacon t-bone filet mignon rump tongue strip steak burgdoggen corned beef brisket. Jerky alcatra pork belly, tenderloin chuck ham prosciutto short ribs sausage. Short ribs spare ribs shankle, leberkas picanha salami pork drumstick turkey bresaola capicola chicken. Chislic brisket salami turkey turducken tri-tip shank. Capicola boudin tongue ham hock pastrami cupim. Pork loin pork belly kevin tail. Short ribs tri-tip pork chop, kielbasa jerky chicken frankfurter alcatra venison porchetta cow tenderloin.',
    ),

    Recipe(
      'Hawaiian Pizza',
      'images/hawaiian-pizza.jpg',
      4,
      307,
      [
        Ingredient(1, 'item', 'pizza',),
        Ingredient(1, 'cup', 'pineapple',),
        Ingredient(8, 'oz', 'ham',),
      ],
      'Bacon ipsum dolor amet sausage ham hock ground round spare ribs pork belly bacon t-bone filet mignon rump tongue strip steak burgdoggen corned beef brisket. Jerky alcatra pork belly, tenderloin chuck ham prosciutto short ribs sausage. Short ribs spare ribs shankle, leberkas picanha salami pork drumstick turkey bresaola capicola chicken. Chislic brisket salami turkey turducken tri-tip shank. Capicola boudin tongue ham hock pastrami cupim. Pork loin pork belly kevin tail. Short ribs tri-tip pork chop, kielbasa jerky chicken frankfurter alcatra venison porchetta cow tenderloin.',
    ),

    Recipe(
      'Hot Dog',
      'images/hot-dog.jpeg',
      4,
      150,
      [
        Ingredient(1, 'pack', 'wieners',),
        Ingredient(1, 'pack', 'hot dog buns',),
        Ingredient(1, 'bottle', 'mustard',),
      ],
      'Bacon ipsum dolor amet sausage ham hock ground round spare ribs pork belly bacon t-bone filet mignon rump tongue strip steak burgdoggen corned beef brisket. Jerky alcatra pork belly, tenderloin chuck ham prosciutto short ribs sausage. Short ribs spare ribs shankle, leberkas picanha salami pork drumstick turkey bresaola capicola chicken. Chislic brisket salami turkey turducken tri-tip shank. Capicola boudin tongue ham hock pastrami cupim. Pork loin pork belly kevin tail. Short ribs tri-tip pork chop, kielbasa jerky chicken frankfurter alcatra venison porchetta cow tenderloin.',
    ),
  ];



}


class Ingredient{
  double quantity;
  String measure;
  String name;

  Ingredient(
    this.quantity,
    this.measure,
    this.name,
  );
}