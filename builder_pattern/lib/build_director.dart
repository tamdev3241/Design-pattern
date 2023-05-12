import 'pizza.dart';
import 'pizza_builder.dart';

/// Our Pizza Director which will coordinate the building of
/// different pizzas
///
class PizzaDirector {
  late PizzaBuilder _pizzaBuilder;

  void setPizzaBuilder(PizzaBuilder pizzaBuilder) {
    _pizzaBuilder = pizzaBuilder;
  }

  Pizza getPizza() => _pizzaBuilder.getPizza();

  void makePizza() {
    _pizzaBuilder.createPizza();
    _pizzaBuilder.buildCrust();
    _pizzaBuilder.buildSauce();
    _pizzaBuilder.buildToppings();
  }
}
