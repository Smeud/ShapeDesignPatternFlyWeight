import 'dart:math';
// Factory function on top level
//Shape shapeFactory(String type){
//  if(type == 'circle') return Circle(2);
//  if(type == 'square') return Square(2);
//  throw 'Can\'t create $type';
//}
abstract class Shape {
  // Factory Constructeur
  factory Shape(String type) {
    if (type == 'circle') return Circle(2);
    if (type == 'square') return Square(2);
    throw 'Can\'t create $type';  
  }
  // Getter
  num get area;
}

class Circle implements Shape {
  // Variable
  final num radius;
  // Constructeur
  Circle(this.radius);
  // Circle class implementation abstract getter function
  num get area => pi * pow(radius, 2);
}

//class CircleMock implements Circle {
//  num area;
//  num radius;
// }

class Square implements Shape {
  // Variable
  final num side;
  // Constructeur
  Square(this.side);
  // Square class implementation abstract getter function
  num get area => pow(side, 2);
}

// Classe principale
void main() {
  try{
    //final circle = Shape('circle');
    //final square = Shape('square');
    //final triangle = Shape('triangle');
	  print(Shape('circle').area);
    print(Shape('square').area);
    print(Shape('triangle').area);
    } catch(e){
      print(e);
    }
  
}
