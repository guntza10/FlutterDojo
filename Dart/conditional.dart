void main() {
  // Conditional Operators: ==, !=, >, <, >=, <=

  // Logical Operators: !, &&, ||

  // if else
  var age = 8;
  if (age < 5) {
    print("Stay Home");
  } else if (age >= 5 && age <= 6) {
    print('Kindergarten');
  } else if (age > 6 && age <= 17) {
    print('Grade: ${age - 5}');
  } else {
    print('College');
  }

  // switch
  var ingredient = "pasta";
  switch (ingredient) {
    case "tomatoes":
    case "pasta":
      print('Spaghetti');
      break;
    case "beans":
      print('Burritos');
      break;
    default:
      print('Water');
  }

  // ternary operator
  var canVote = (age >= 18) ? true : false;
  print('canVote: ${canVote}');
}
