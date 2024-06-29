class MealsModel{
  final int id;
  final String title;
  final String category;
  final String mealTime;
  final String url;
  final List<String> ingredients;
  final List<String> steps;
  MealsModel({
    required this.id,
    required this.title,
    required this.category,
    required this.mealTime,
    required this.url,
    required this.ingredients,
    required this.steps,
});

}