void main() {
  // Set คือ Collection ของ Object ที่ Unique
  Set set1 = Set();
  set1.add(10);
  set1.add(13);
  print(set1);

  // Set add multiple value at once
  Set set2 = Set.from([1, 2, 3]);
  print(set2);
  for (var x in set2) {
    print(x);
  }
}
