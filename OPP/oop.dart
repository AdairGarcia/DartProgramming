// OPP - Object Oriented Programming
class Movil{
  String? marca; // optional variable (it can be null)
  String? modelo; // optional variable (it can be null)
  double? precio; // optional variable (it can be null)

  // Constructor default
  Movil(this.marca, this.modelo, this.precio);


  // Constructor specific
  Movil.specific({
  this.marca,
  this.modelo,
  this.precio
  });

  // Named Constructor
  Movil.Apple(
    this.modelo,
    this.precio,
    [this.marca = "Apple"]
  );

  // Named Constructor
  Movil.voidConstructor(
    {this.marca = "Marca", this.modelo = "Modelo", this.precio = 0}
  );

  // Named Constructor
  Movil.nullConstructor();

  // toString method
  String toString() =>  "Marca: $marca, Modelo: $modelo, Precio: $precio";
  
  
}

void main(){
  Movil m = Movil("Motorola", "Modelo 1", 5000); // Constructor 1
  print(m);

  Movil m_apple = Movil.Apple("Modelo 2", 10000); // Named Constructor
  print(m_apple);

  Movil m_2 = Movil.voidConstructor(); // Named Constructor
  print(m_2);

  Movil m_3 = Movil.specific(marca: "Samsung", modelo: "Modelo 3", precio: 7000); 
  print(m_3);// Constructor specific

  Movil m_4 = Movil.nullConstructor(); // Constructor null
  print(m_4);
}
