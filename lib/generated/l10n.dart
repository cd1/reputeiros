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

  /// `Reputeiros`
  String get title {
    return Intl.message(
      'Reputeiros',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Presidential candidates`
  String get candidatesGridTitle {
    return Intl.message(
      'Presidential candidates',
      name: 'candidatesGridTitle',
      desc: '',
      args: [],
    );
  }

  /// `There are no news about this candidate.`
  String get noCandidateNewsMessage {
    return Intl.message(
      'There are no news about this candidate.',
      name: 'noCandidateNewsMessage',
      desc: '',
      args: [],
    );
  }

  /// `-`
  String get noApprovalLevelValue {
    return Intl.message(
      '-',
      name: 'noApprovalLevelValue',
      desc: '',
      args: [],
    );
  }

  /// `Party: {party}`
  String candidatePartyInfo(Object party) {
    return Intl.message(
      'Party: $party',
      name: 'candidatePartyInfo',
      desc: '',
      args: [party],
    );
  }

  /// `Approval level: {level}`
  String candidateApprovalLevelInfo(Object level) {
    return Intl.message(
      'Approval level: $level',
      name: 'candidateApprovalLevelInfo',
      desc: '',
      args: [level],
    );
  }

  /// `Couldn't open the news link.`
  String get openNewsUrlError {
    return Intl.message(
      'Couldn\'t open the news link.',
      name: 'openNewsUrlError',
      desc: '',
      args: [],
    );
  }

  /// `Like`
  String get likeButtonTooltip {
    return Intl.message(
      'Like',
      name: 'likeButtonTooltip',
      desc: '',
      args: [],
    );
  }

  /// `Dislike`
  String get dislikeButtonTooltip {
    return Intl.message(
      'Dislike',
      name: 'dislikeButtonTooltip',
      desc: '',
      args: [],
    );
  }

  /// `Comments ({count})`
  String commentsButtonText(Object count) {
    return Intl.message(
      'Comments ($count)',
      name: 'commentsButtonText',
      desc: '',
      args: [count],
    );
  }

  /// `Report fake`
  String get reportFakeTooltip {
    return Intl.message(
      'Report fake',
      name: 'reportFakeTooltip',
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
      Locale.fromSubtags(languageCode: 'pt'),
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
