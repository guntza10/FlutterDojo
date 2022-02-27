// custom throw exception
void CheckAge(int a) {
  if (a < 1) {
    throw FormatException(); // throw exception
  }
}

void main() {
  // exceptions คือวิธี handle catch error เพื่อไม่ให้ program crash
  var eNum = 1;
  try {
    print("Zero Devide ${eNum / 0}");
  } catch (error) {
    print("error: ${error}");
  } finally {
    print("I always execute");
  }

  try {
    int a1 = 0;
    CheckAge(a1);
  } catch (error) {
    print(error);
  }
  // สามารถกำหนด exception เฉพาะเจาะจงได้
  // on IntegerDivisionByZeroException catch (e) {};
}
