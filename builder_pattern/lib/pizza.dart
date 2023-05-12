enum PizzaSauce {
  none,
  tomato,
  garlic,
  hot,
  mild,
}

enum PizzaSize {
  small,
  medium,
  large,
  extraLarge,
}

enum PizzaCrust {
  classic,
  deepDish,
  panBaked,
  cross,
  newYork,
}

class Pizza {
  late final PizzaSize _size;
  late final PizzaSauce _sauce;
  late final PizzaCrust _crust;
  final List<String> _toppings = [];
  late final String _notes;
  late final String _name;
  late final double _price;

  PizzaSize get pizzaSize => _size;
  PizzaSauce get pizzaSauce => _sauce;
  PizzaCrust get pizzaCrust => _crust;
  String get toppings => _stringifiedToppings();
  String get notes => _notes;
  double get price => _price;

  void addTopping(String topping) {
    _toppings.add(topping);
  }

  void setSauce(PizzaSauce sauce) {
    _sauce = sauce;
  }

  void setSize(PizzaSize size) {
    _size = size;
  }

  void setCrust(PizzaCrust crust) {
    _crust = crust;
  }

  void setName(String name) {
    _name = name;
  }

  void addNotes(String notes) {
    _notes = notes;
  }

  void setPrice(double price) {
    _price = price;
  }

  /// simple toppings list formatter
  ///
  String _stringifiedToppings() {
    var stringToppings = _toppings.join(", ");
    var lastComma = stringToppings.lastIndexOf(",");
    var replacement =
        ",".allMatches(stringToppings).length > 1 ? ", and " : " and";

    return stringToppings.replaceRange(lastComma, lastComma + 1, replacement);
  }

  @override
  String toString() {
    return "A delicious $_name pizza with ${_crust.toString().split(".")[1]} crust covered in ${_stringifiedToppings()}";
  }
}
