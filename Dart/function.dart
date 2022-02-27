import 'dart:math';

int get_sum(n1, n2) {
  return n1 + n2;
}

// define default parameter
int get_sum2(n1, {n2: 0}) {
  return n1 + n2;
}

// arrow function
int get_sum3(n1, n2) => n1 + n2;

int get_sum4(List vals) {
  return vals.reduce((a, b) => a + b);
}

List next_2(n1) {
  return [n1 + 1, n1 + 2];
}

// custom function
Function mult_by(n1) {
  int inner_func(x) {
    return x * n1;
  }

  return inner_func;
}

// anonymous function
bool Function(int) is_even = (int x) => x % 2 == 0;

// recursive function
int fib(int n1) {
  if (n1 <= 1) {
    return 1;
  } else {
    return fib(n1 - 1) + fib(n1 - 2);
  }
}

void main() {
  print("5+4 = ${get_sum(5, 4)}");
  print("5+4 = ${get_sum2(5)}");
  print("5+4 = ${get_sum2(5, n2: 4)}");
  print("5+4 = ${get_sum3(5, 4)}");
  print("Sum = ${get_sum4([1, 2, 3])}");
  next_2(4).forEach((val) => print(val));
  print("3 * 5 = ${mult_by(3)(5)}");
  print("202 Even? ${is_even(202)}");
  print("Fib4 = ${fib(4)}");
}
