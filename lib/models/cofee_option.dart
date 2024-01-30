import 'package:flutter/material.dart';
import 'package:lightcofee/models/cofee.dart';

class CofeeOption extends ChangeNotifier {
  final List<Cofee> _cofeeOption = [
    Cofee(
        imagePath: "assets/image/cofee_latte.jpg",
        name: "قهوه سیاه",
        price: "25000",
        rating: 4.5,
        shortDescription: "برای افراد کلاسیک"),
    Cofee(
        imagePath: "assets/image/cofee_latte.jpg",
        name: "لته",
        price: "25000",
        rating: 4.5,
        shortDescription: "مناسب عصر پاییز"),
    Cofee(
        imagePath: "assets/image/cofee_latte.jpg",
        name: "اسپرسو",
        price: "25000",
        rating: 4.5,
        shortDescription: "تلخ و انرژی بخش"),
  ];

  List<Cofee> _userCart = [];
  List<Cofee> get cofeeShop => _cofeeOption;
  List<Cofee> get userCart => _userCart;

  void AddToCart(Cofee cofee) {
    _userCart.add(cofee);
    notifyListeners();
  }

  void RemoveFromCart(Cofee cofee) {
    _userCart.remove(cofee);
    notifyListeners();
  }
}
