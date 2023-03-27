import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tarea2/main.dart';

void main() {
  testWidgets('Test SignInScreen and navigation to ContactScreen',
      (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the SignInScreen is displayed with "Sign In" AppBar title.
    expect(find.text('Sign In'), findsOneWidget);

    // Find the 'Iniciar sesión' button and tap it.
    final signInButton = find.widgetWithText(ElevatedButton, 'Iniciar sesión');
    await tester.tap(signInButton);
    await tester.pumpAndSettle();

    // Verify that the ContactScreen is displayed with "Contact Details" AppBar title.
    expect(find.text('Contact Details'), findsOneWidget);
  });
}
