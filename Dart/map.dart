import 'dart:math';

void main() {
  // create Map<key,value>
  Map<String, int> m1 = Map<String, int>(); // empty map
  print(m1);

  var heroes = {"Superman": "Clark Kent", "Batman": "Bruce Wayne"};
  heroes["Flash"] = "Barry Allen"; // add another new map data
  print(heroes);
  // check map is empty or not
  print('Empty : ${heroes.isEmpty}');
  print('NotEmpty : ${heroes.isNotEmpty}');
  // Length map
  print('Length : ${heroes.length}');
  // access key map
  heroes.keys.forEach((key) => print(key));
  // access value map
  heroes.values.forEach((val) => print(val));
  // add multiple value
  heroes.addAll({"Lex Luther": "Lex Luther", "Loki": "Loki"});
  // remove map
  heroes.remove('Lex Luther');
  // clear map
  heroes.clear();
  print(heroes);
}
