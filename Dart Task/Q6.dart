class Rectangle {
  double width;
  double height;
  double area;
  Rectangle(this.width, this.height) {
    area = width * height;
  }
  void setWidth(double newWidth) {
    width = newWidth;
    area = width * height;
  }
  void setHeight(double newHeight) {
    height = newHeight;
    area = width * height;
  }
  @override
  String toString() {
    return 'Rectangle{width: $width, height: $height, area: $area}';
  }
}
void main() {
  Rectangle rect1 = Rectangle(4, 5);
  Rectangle rect2 = Rectangle(3, 6);
  print(rect1); 
  print(rect2);  
  rect1.setWidth(6);
  rect1.setHeight(8);
  print(rect1); 
}