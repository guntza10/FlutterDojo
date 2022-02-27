import 'dart:math';

class Shape {
  double height = 0;
  double width = 0;
  String unit = "cms";
  // static คือเป็น value ของ class ไม่ว่า value ของ object ที่สร้างจาก class จะมีการเปลี่ยนแปลง แต่ static ยังเป็นค่าเดิมตลอดไม่เปลี่ยน
  static int num_shapes = 0;

  // constructure เอาไว้กำหนดค่าเริ่มต้นให้ class

  // แบบที่ 1 กำหนดค่าเริ่มต้นแบบตายตัว
  Shape() {
    // this keyword เป็นการ ref ถึง property ของ class นี้
    this.height = 0;
    this.width = 0;
    // access static value
    Shape.num_shapes++;
  }

  // name constructure
  Shape.fromLength(double length) {
    this.height = length;
    this.width = length;
    Shape.num_shapes++;
  }
  Shape.fromWH(double height, double width) {
    this.height = height;
    this.width = width;
    Shape.num_shapes++;
  }

  // getter => ใช้ในการ access และนำ data ที่เป็น private ออกมา display โดยไม่ได้ access data private นั้นโดยตรงแต่ทำผ่าน getter
  String get shape_height {
    return '${height} ${unit}';
  }

  String get shape_width {
    return '${width} ${unit}';
  }

  static is_number(String s) {
    return double.tryParse(s) != null;
  }

  // setter => เป็นการ set value ให้กับ private property ที่เราไม่ต้องการให้ภายนอก access การเซ็ตค่าได้โดยตรง โดยจะ set value ก็ทำผ่าน setter
  void set shape_height(String h) {
    if (Shape.is_number(h)) {
      this.height = double.parse(h);
    }
  }

  void set shape_width(String w) {
    if (Shape.is_number(w)) {
      this.width = double.parse(w);
    }
  }

  double area() {
    return width * height;
  }
}

class Shape2 {
  double heigth = 0;
  double width = 0;
  String unit = "cms";
  static int num_shapes = 0;

  // constructure เอาไว้กำหนดค่าเริ่มต้นให้ class
  // แบบที่ 2 กำหนดค่าเริ่มต้นเองตอน instance
  Shape2(height, width) {
    this.heigth = height;
    this.width = width;
    ;
  }
}

// inheritance => จะได้คุณสมบัตทุกอย่างจาก parent class ที่ inherit มาทั้ง property,function(method)
class Circle extends Shape {
  // ถ้าต้องการ implement logic ให้กับ method ที่มีอยู่แล้วให้ใส่ @override
  @override
  double area() {
    if (this.width != 0) {
      return pi * pow(this.width / 2, 2);
    } else if (this.height != 0) {
      return pi * pow(this.height / 2, 2);
    } else {
      return 0;
    }
  }

  // ถ้าอยากใช้ method,property ของ parent class ให้ใช้ super keyword เช่น super.area()
  // ถ้าต้องการใช้ superclass constructor ที่จะ set ทุกอย่างตาม parent class
  Circle() : super() {} // Circle() : super();
  // สามารถเรียกใช้ name constructure ของ parent class ได้
  Circle.fromLength(double l) : super.fromLength(l);
  Circle.fromWH(double h, double w) : super.fromWH(h, w);
}

void main() {
  var sq1 = Shape();
  var sq2 = Shape.fromLength(3.0);
  var sq3 = Shape.fromWH(3.0, 4.0);
  print("Square 3 Area : ${sq3.area()}");

  var circ = Circle.fromLength(4);
  print("Circle Area : ${circ.area()}");
}
