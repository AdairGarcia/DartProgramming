// OPP - Object Oriented Programming
class Movil{
  String? marca;
  String? modelo;
  double? precio;

  // Constructor
  Movil(
  this.marca,
  this.modelo,
  this.precio
  );

  // Named Constructor
  Movil.Apple(
    this.modelo,
    this.precio,
    [this.marca = "Apple"]
  );

  // toString method
  String toString() => "Marca: $marca, Modelo: $modelo, Precio: $precio";

}

void main(){
  Movil m = Movil("Motorola", "Modelo 1", 5000); // Constructor 1
  print(m);

  Movil m_apple = Movil.Apple("Modelo 2", 10000); // Named Constructor
  print(m_apple);
}
