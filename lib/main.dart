import 'package:ar_app/Views/login_view.dart';
import 'package:ar_app/Views/sign_up_view.dart';
import 'package:ar_app/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';

void main() {
  runApp(const ArApp());
}

class ArApp extends StatefulWidget {
  const ArApp({super.key});

  @override
  State<ArApp> createState() => _ArAppState();
  static _ArAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_ArAppState>()!;
}
// In your Flutter project (e.g., main.dart)
const MethodChannel _channel = MethodChannel('ar_flutter_channel');


void setLocale(BuildContext context, Locale newLocale) {
  _ArAppState? state = context.findAncestorStateOfType<_ArAppState>();
  state!.setLocale(newLocale);
  {}
}

bool isLight(BuildContext context) {
  if (Theme.of(context).brightness == Brightness.light) {
    return true;
  }
  return false;
}

class _ArAppState extends State<ArApp> {
  ThemeMode _themeMode = ThemeMode.system;
  Locale? _locale;
  setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LoginPage.id: (context) => const LoginPage(),
        SignUpPage.id: (context) => const SignUpPage(),
        CurvedNavigationBarWidget.id:(context) => const CurvedNavigationBarWidget(),
      },
      locale: _locale,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      themeMode: _themeMode,
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: 'loginPage',
    );
  }

  changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }
}
