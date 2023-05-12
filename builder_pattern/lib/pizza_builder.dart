import 'pizza.dart';
import 'package:flutter/material.dart';

/// abtract builder of pizzas
///
abstract class PizzaBuilder {
  /// What we create
  ///
  @protected
  late Pizza pizza;

  /// The name of the pizza this builder will create
  ///
  @protected
  late String name;

  /// Bussines function
  ///
  /// starter of the workflow: creates the pizza instance
  ///
  void createPizza() {
    pizza = Pizza();
    pizza.setName(name);
  }

  Pizza getPizza() => pizza;

  void setPizzaPrice(double price) {
    pizza.setPrice(price);
  }

  void setSize(PizzaSize size) {
    pizza.setSize(size);
  }

  void addNotes(String notes) {
    pizza.addNotes(notes);
  }

  /// abtract bussines methods that will need to be implement by all
  /// concrete builders
  ///
  void buildSauce();
  void buildToppings();
  void buildCrust();
}
