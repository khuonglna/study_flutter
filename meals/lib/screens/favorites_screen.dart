import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  
  final List<Meal> favoriteMeals;

  FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty){
    return Center(
      child: Text('You have no favorites yet'),
    );
    }
    else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            curColor: Theme.of(context).primaryColor,
            id: favoriteMeals[index].id,
            complexity: favoriteMeals[index].complexity,
            duration: favoriteMeals[index].duration,
            imageUrl: favoriteMeals[index].imageUrl,
            affordability: favoriteMeals[index].affordability,
            title: favoriteMeals[index].title,
          );
        },
        itemCount: favoriteMeals.length,
      );
    }
  }
}
