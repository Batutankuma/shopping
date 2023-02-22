// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping/controllers/favorite_ctr.dart';

import 'package:shopping/main.dart';
import 'package:shopping/models/product_models.dart';

Product product = Product(
      1,
      "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
      109.95,
      "vie",
      "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
      "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg");

void main() {
  test('add favorite',(){
    final controller = FavotireController();
    controller.changeName();
    expect(controller.name.value,'name3');
  });
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });

}


