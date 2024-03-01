import 'dart:math';
class Circle {
  double radius;
  double diameter;
  double area;
  Circle(this.radius) {
    diameter = 2 * radius;
    area = pi * pow(radius, 2);
  }
  void setRadius(double newRadius) {
    radius = newRadius;
    diameter = 2 * radius;
    area = pi * pow(radius, 2);
  }
  @override
  String toString() {
    return 'Circle{radius: $radius, diameter: $diameter, area: $area}';
  }
}
void main() {
  Circle circle1 = Circle(5);
  Circle circle2 = Circle(3);
  print(circle1); 
  print(circle2); 
  circle1.setRadius(10);
  print(circle1); 
}