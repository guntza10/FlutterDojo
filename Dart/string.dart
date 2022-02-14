void main() {
  var age = 24;
  var s1 = "I am a Hero ${age}";
  print(s1);

  // string multiple line
  var s2 = """
  I am
  Multiple
  line
  55555
  """;
  print(s2);

  // get first character in string
  print(s1[0]); // get character in string with index
  print(s1.indexOf('am')); // get index in string from searching for first

  // concat string
  var s3 = " and I like cats";
  var s4 = s1 + s3;
  print(s4);

  // check empty or not
  print('isEmpty: ${s4.isEmpty}');
  print('isNotEmpty: ${s4.isNotEmpty}');

  // length string
  print('Length: ${s4.length}');

  // Numerous escape character
  // \n : Newline
  // \t : Tab
  // \" : Escape "
  // \' : Escape '
  // \\ : Escape \ (Backslashes)
  print("I\nam\tmultiline");

  // raw string
  print(r"Newline : \n");

  // uppercase,lowercase
  print("${s4.toUpperCase()}");
  print("${s4.toLowerCase()}");

  // contain string return true if contain or false if not contain
  print("I am here".contains("am"));
  // startWith the string part return bool
  print("I am here".startsWith("I"));
  // endWith the string part return bool
  print("I am here".endsWith("here"));
  // substring(start,end) => start ที่ index ที่เท่าไรและ end ที่ index ที่เท่าไร(โดยที่ไม่รวม end index)
  print(s4.substring(13, 17));
  // replace part string
  var s5 = "To Know or Note to Know";
  var s6 = s5.replaceAll(RegExp('Know'),
      'Be'); // replaceAll(pattern,replace) => pattern (RegExp), replace ด้วย string อะไร
  print(s6);

  // convert string t array
  var as4 = s4.split(' ');
  print(as4);

  // remove white space หน้า,หลัง ออกจาก string
  print("     Stuff      ".trim());
}
