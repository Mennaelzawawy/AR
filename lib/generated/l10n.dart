// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Categories`
  String get Categories_name {
    return Intl.message(
      'Categories',
      name: 'Categories_name',
      desc: '',
      args: [],
    );
  }

  /// `Popular Items`
  String get Popular_items_name {
    return Intl.message(
      'Popular Items',
      name: 'Popular_items_name',
      desc: '',
      args: [],
    );
  }

  /// `Seller`
  String get Seller {
    return Intl.message(
      'Seller',
      name: 'Seller',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get Description {
    return Intl.message(
      'Description',
      name: 'Description',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get Price_name {
    return Intl.message(
      'Price',
      name: 'Price_name',
      desc: '',
      args: [],
    );
  }

  /// `Add to Cart`
  String get Add_to_cart {
    return Intl.message(
      'Add to Cart',
      name: 'Add_to_cart',
      desc: '',
      args: [],
    );
  }

  /// `Show in 3D`
  String get Show_in_3D {
    return Intl.message(
      'Show in 3D',
      name: 'Show_in_3D',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get Acc {
    return Intl.message(
      'Account',
      name: 'Acc',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get Dark_Mode {
    return Intl.message(
      'Dark Mode',
      name: 'Dark_Mode',
      desc: '',
      args: [],
    );
  }

  /// `Help`
  String get Help {
    return Intl.message(
      'Help',
      name: 'Help',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get Lang {
    return Intl.message(
      'Language',
      name: 'Lang',
      desc: '',
      args: [],
    );
  }

  /// `Bed`
  String get bed {
    return Intl.message(
      'Bed',
      name: 'bed',
      desc: '',
      args: [],
    );
  }

  /// `Carprts`
  String get carpet {
    return Intl.message(
      'Carprts',
      name: 'carpet',
      desc: '',
      args: [],
    );
  }

  /// `Chair`
  String get chair {
    return Intl.message(
      'Chair',
      name: 'chair',
      desc: '',
      args: [],
    );
  }

  /// `Curtain`
  String get curtain {
    return Intl.message(
      'Curtain',
      name: 'curtain',
      desc: '',
      args: [],
    );
  }

  /// `Lighting`
  String get lighting {
    return Intl.message(
      'Lighting',
      name: 'lighting',
      desc: '',
      args: [],
    );
  }

  /// `Mirror`
  String get mirror {
    return Intl.message(
      'Mirror',
      name: 'mirror',
      desc: '',
      args: [],
    );
  }

  /// `Tables`
  String get table {
    return Intl.message(
      'Tables',
      name: 'table',
      desc: '',
      args: [],
    );
  }

  /// `wardrobe`
  String get wardrobe {
    return Intl.message(
      'wardrobe',
      name: 'wardrobe',
      desc: '',
      args: [],
    );
  }

  /// `Search for inspirations`
  String get search {
    return Intl.message(
      'Search for inspirations',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Done!`
  String get success_tit {
    return Intl.message(
      'Done!',
      name: 'success_tit',
      desc: '',
      args: [],
    );
  }

  /// `Your item successfully added to the cart!`
  String get success_mes {
    return Intl.message(
      'Your item successfully added to the cart!',
      name: 'success_mes',
      desc: '',
      args: [],
    );
  }

  /// `Damieture`
  String get Damieture {
    return Intl.message(
      'Damieture',
      name: 'Damieture',
      desc: '',
      args: [],
    );
  }

  /// `Green chair`
  String get green_ch {
    return Intl.message(
      'Green chair',
      name: 'green_ch',
      desc: '',
      args: [],
    );
  }

  /// `Orange chair`
  String get orange_ch {
    return Intl.message(
      'Orange chair',
      name: 'orange_ch',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get full_name {
    return Intl.message(
      'Full Name',
      name: 'full_name',
      desc: '',
      args: [],
    );
  }

  /// `E-Mail`
  String get e_mail {
    return Intl.message(
      'E-Mail',
      name: 'e_mail',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get Phone_number {
    return Intl.message(
      'Phone number',
      name: 'Phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get Password {
    return Intl.message(
      'Password',
      name: 'Password',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get login {
    return Intl.message(
      'Log in',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get signup {
    return Intl.message(
      'Sign up',
      name: 'signup',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
