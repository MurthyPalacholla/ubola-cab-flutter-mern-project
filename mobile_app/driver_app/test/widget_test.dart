import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:driver_app/view/SplashScreen.dart';
import 'package:driver_app/Config/AllImages.dart';

void main() {
  testWidgets('SplashScreen UI Test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: SplashScreen(),
    ));

    expect(find.byType(SplashScreen), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);
    expect(find.image(AssetImage(AllImages.logoImage)), findsOneWidget);
  });
}
