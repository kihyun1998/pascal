# pascal
## Project Structure

```
pascal/
├── lib/
    ├── core/
    │   ├── localization/
    │   │   ├── generated/
    │   │   │   └── l10n.dart
    │   │   ├── l10n/
    │   │   │   ├── intl_en.arb
    │   │   │   └── intl_ko.arb
    │   │   ├── pages/
    │   │   │   └── locale_test_page.dart
    │   │   └── provider/
    │   │   │   ├── l10n_provider.dart
    │   │   │   └── locale_provider.dart
    │   └── theme/
    │   │   ├── foundation/
    │   │       ├── app_color.dart
    │   │       ├── app_font.dart
    │   │       ├── app_mode.dart
    │   │       └── app_theme.dart
    │   │   ├── pages/
    │   │       └── theme_test_page.dart
    │   │   ├── providers/
    │   │       └── theme_provider.dart
    │   │   ├── resources/
    │   │       ├── font.dart
    │   │       └── palette.dart
    │   │   └── theme/
    │   │       ├── dark_theme.dart
    │   │       └── light_theme.dart
    └── main.dart
└── CODE.md
```

## CODE.md
```md
# pascal
## Project Structure

```
pascal/
├── lib/
    ├── core/
    │   ├── localization/
    │   │   ├── generated/
    │   │   │   ├── intl/
    │   │   │   │   ├── messages_all.dart
    │   │   │   │   ├── messages_en.dart
    │   │   │   │   └── messages_ko.dart
    │   │   │   └── l10n.dart
    │   │   ├── l10n/
    │   │   │   ├── intl_en.arb
    │   │   │   └── intl_ko.arb
    │   │   ├── pages/
    │   │   │   └── locale_test_page.dart
    │   │   └── provider/
    │   │   │   ├── l10n_provider.dart
    │   │   │   └── locale_provider.dart
    │   └── theme/
    │   │   ├── foundation/
    │   │       ├── app_color.dart
    │   │       ├── app_font.dart
    │   │       ├── app_mode.dart
    │   │       └── app_theme.dart
    │   │   ├── pages/
    │   │       └── theme_test_page.dart
    │   │   ├── providers/
    │   │       └── theme_provider.dart
    │   │   ├── resources/
    │   │       ├── font.dart
    │   │       └── palette.dart
    │   │   └── theme/
    │   │       ├── dark_theme.dart
    │   │       └── light_theme.dart
    └── main.dart
└── CODE.md
```

## CODE.md
```md
# pascal
## Project Structure

```
pascal/
└── lib/
    ├── core/
        ├── localization/
        │   ├── generated/
        │   │   ├── intl/
        │   │   │   ├── messages_all.dart
        │   │   │   ├── messages_en.dart
        │   │   │   └── messages_ko.dart
        │   │   └── l10n.dart
        │   ├── l10n/
        │   │   ├── intl_en.arb
        │   │   └── intl_ko.arb
        │   ├── pages/
        │   │   └── locale_test_page.dart
        │   └── provider/
        │   │   ├── l10n_provider.dart
        │   │   ├── l10n_provider.g.dart
        │   │   ├── locale_provider.dart
        │   │   └── locale_provider.g.dart
        └── theme/
        │   ├── foundation/
        │       ├── app_color.dart
        │       ├── app_font.dart
        │       ├── app_mode.dart
        │       └── app_theme.dart
        │   ├── pages/
        │       └── theme_test_page.dart
        │   ├── providers/
        │       ├── theme_provider.dart
        │       └── theme_provider.g.dart
        │   ├── resources/
        │       ├── font.dart
        │       └── palette.dart
        │   └── theme/
        │       ├── dark_theme.dart
        │       └── light_theme.dart
    └── main.dart
```

## lib/core/localization/generated/intl/messages_all.dart
```dart
// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that looks up messages for specific locales by
// delegating to the appropriate library.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:implementation_imports, file_names, unnecessary_new
// ignore_for_file:unnecessary_brace_in_string_interps, directives_ordering
// ignore_for_file:argument_type_not_assignable, invalid_assignment
// ignore_for_file:prefer_single_quotes, prefer_generic_function_type_aliases
// ignore_for_file:comment_references

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';
import 'package:intl/src/intl_helpers.dart';

import 'messages_en.dart' as messages_en;
import 'messages_ko.dart' as messages_ko;

typedef Future<dynamic> LibraryLoader();
Map<String, LibraryLoader> _deferredLibraries = {
  'en': () => new SynchronousFuture(null),
  'ko': () => new SynchronousFuture(null),
};

MessageLookupByLibrary? _findExact(String localeName) {
  switch (localeName) {
    case 'en':
      return messages_en.messages;
    case 'ko':
      return messages_ko.messages;
    default:
      return null;
  }
}

/// User programs should call this before using [localeName] for messages.
Future<bool> initializeMessages(String localeName) {
  var availableLocale = Intl.verifiedLocale(
      localeName, (locale) => _deferredLibraries[locale] != null,
      onFailure: (_) => null);
  if (availableLocale == null) {
    return new SynchronousFuture(false);
  }
  var lib = _deferredLibraries[availableLocale];
  lib == null ? new SynchronousFuture(false) : lib();
  initializeInternalMessageLookup(() => new CompositeMessageLookup());
  messageLookup.addLocale(availableLocale, _findGeneratedMessagesFor);
  return new SynchronousFuture(true);
}

bool _messagesExistFor(String locale) {
  try {
    return _findExact(locale) != null;
  } catch (e) {
    return false;
  }
}

MessageLookupByLibrary? _findGeneratedMessagesFor(String locale) {
  var actualLocale =
      Intl.verifiedLocale(locale, _messagesExistFor, onFailure: (_) => null);
  if (actualLocale == null) return null;
  return _findExact(actualLocale);
}

```
## lib/core/localization/generated/intl/messages_en.dart
```dart
// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "appName": MessageLookupByLibrary.simpleMessage("Pascal"),
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings")
      };
}

```
## lib/core/localization/generated/intl/messages_ko.dart
```dart
// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ko locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ko';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "appName": MessageLookupByLibrary.simpleMessage("Pascal"),
        "language": MessageLookupByLibrary.simpleMessage("언어"),
        "settings": MessageLookupByLibrary.simpleMessage("설정")
      };
}

```
## lib/core/localization/generated/l10n.dart
```dart
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

  /// `Pascal`
  String get appName {
    return Intl.message(
      'Pascal',
      name: 'appName',
      desc: 'The application name',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: 'Settings menu title',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: 'Language selection option',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ko'),
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

```
## lib/core/localization/l10n/intl_en.arb
```arb
{
    "@@locale": "en",
    "appName": "Pascal",
    "@appName": {
        "description": "The application name"
    },
    "settings": "Settings",
    "@settings": {
        "description": "Settings menu title"
    },
    "language": "Language",
    "@language": {
        "description": "Language selection option"
    }
  }
```
## lib/core/localization/l10n/intl_ko.arb
```arb
{
    "@@locale": "ko",
    "appName": "Pascal",
    "settings": "설정",
    "language": "언어"
  }
```
## lib/core/localization/pages/locale_test_page.dart
```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pascal/core/localization/provider/l10n_provider.dart';
import 'package:pascal/core/localization/provider/locale_provider.dart';
import 'package:pascal/core/theme/foundation/app_theme.dart';
import 'package:pascal/core/theme/providers/theme_provider.dart';

class LocaleTestPage extends ConsumerWidget {
  const LocaleTestPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final theme = ref.theme;
    final color = theme.color;
    final font = theme.font;
    final currentLocale = ref.watch(localeStateProvider);

    return Scaffold(
      backgroundColor: color.background,
      appBar: AppBar(
        backgroundColor: color.surface,
        title: Text('다국어 테스트', style: font.title1),
        actions: [
          // 언어 변경 버튼
          TextButton(
            onPressed: () {
              final newLocale = currentLocale.languageCode == 'ko'
                  ? const Locale('en')
                  : const Locale('ko');
              ref.read(localeStateProvider.notifier).setLocale(newLocale);
            },
            child: Text(
              currentLocale.languageCode.toUpperCase(),
              style: font.body1Medium.copyWith(color: color.primary),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 현재 로케일 정보
            _buildSection(
              title: '현재 로케일 정보',
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildInfoTile('언어 코드', currentLocale.languageCode),
                  const SizedBox(height: 8),
                  _buildInfoTile('국가 코드', currentLocale.countryCode ?? '없음'),
                ],
              ),
              font: font,
              color: color,
            ),

            const SizedBox(height: 32),

            // 번역 테스트
            _buildSection(
              title: '번역 테스트',
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTranslationTile(
                    'appName',
                    l10n.appName,
                    font,
                    color,
                  ),
                  const SizedBox(height: 16),
                  _buildTranslationTile(
                    'settings',
                    l10n.settings,
                    font,
                    color,
                  ),
                  const SizedBox(height: 16),
                  _buildTranslationTile(
                    'language',
                    l10n.language,
                    font,
                    color,
                  ),
                ],
              ),
              font: font,
              color: color,
            ),

            const SizedBox(height: 32),

            // 컴포넌트에서의 사용 예시
            _buildSection(
              title: '컴포넌트 테스트',
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 버튼 예시
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: color.primary,
                      foregroundColor: color.onPrimary,
                    ),
                    onPressed: () {},
                    icon: const Icon(Icons.settings),
                    label: Text(l10n.settings),
                  ),
                  const SizedBox(height: 16),

                  // 카드 예시
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: color.surface,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(l10n.appName, style: font.body1Medium),
                        const SizedBox(height: 8),
                        Text(l10n.settings, style: font.body2Medium),
                      ],
                    ),
                  ),
                ],
              ),
              font: font,
              color: color,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required Widget content,
    required AppFont font,
    required AppColor color,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: font.title1),
        const SizedBox(height: 16),
        content,
      ],
    );
  }

  Widget _buildInfoTile(String label, String value) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(label),
        ),
        Expanded(
          flex: 3,
          child: Text(value),
        ),
      ],
    );
  }

  Widget _buildTranslationTile(
    String key,
    String value,
    AppFont font,
    AppColor color,
  ) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.surface,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Key: $key',
            style: font.body3Medium.copyWith(color: color.hint),
          ),
          const SizedBox(height: 4),
          Text(
            'Value: $value',
            style: font.body3Medium,
          ),
        ],
      ),
    );
  }
}

```
## lib/core/localization/provider/l10n_provider.dart
```dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pascal/core/localization/generated/l10n.dart';
import 'package:pascal/core/localization/provider/locale_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'l10n_provider.g.dart';

@Riverpod(dependencies: [LocaleState])
S l10n(Ref ref) {
  ref.watch(localeStateProvider);
  return S.current;
}

```
## lib/core/localization/provider/l10n_provider.g.dart
```dart
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'l10n_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$l10nHash() => r'213c8eba1661667258f6e668426d6a465c2952d9';

/// See also [l10n].
@ProviderFor(l10n)
final l10nProvider = AutoDisposeProvider<S>.internal(
  l10n,
  name: r'l10nProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$l10nHash,
  dependencies: <ProviderOrFamily>[localeStateProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    localeStateProvider,
    ...?localeStateProvider.allTransitiveDependencies
  },
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef L10nRef = AutoDisposeProviderRef<S>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

```
## lib/core/localization/provider/locale_provider.dart
```dart
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'locale_provider.g.dart';

const String _localeKey = 'locale';

@Riverpod(dependencies: [], keepAlive: true)
class LocaleState extends _$LocaleState {
  SharedPreferences? _prefs;

  @override
  Locale build() {
    // 기본 로케일은 시스템 설정을 따름
    return const Locale('ko');
  }

  // 지원하는 로케일 목록
  static const supportedLocales = [
    Locale('ko'), // 한국어
    Locale('en'), // 영어
  ];

  // 로케일 변경
  Future<void> setLocale(Locale locale) async {
    _prefs ??= await SharedPreferences.getInstance();
    await _prefs!.setString(_localeKey, locale.languageCode);
    state = locale;
  }

  // 저장된 로케일 불러오기
  Future<void> loadSavedLocale() async {
    _prefs ??= await SharedPreferences.getInstance();
    final savedLocale = _prefs!.getString(_localeKey);
    if (savedLocale != null) {
      state = Locale(savedLocale);
    }
  }
}

```
## lib/core/localization/provider/locale_provider.g.dart
```dart
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locale_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$localeStateHash() => r'506d72706f6229b253c0d852386812059e0fba29';

/// See also [LocaleState].
@ProviderFor(LocaleState)
final localeStateProvider = NotifierProvider<LocaleState, Locale>.internal(
  LocaleState.new,
  name: r'localeStateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$localeStateHash,
  dependencies: const <ProviderOrFamily>[],
  allTransitiveDependencies: const <ProviderOrFamily>{},
);

typedef _$LocaleState = Notifier<Locale>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

```
## lib/core/theme/foundation/app_color.dart
```dart
part of 'app_theme.dart';

class AppColor {
  const AppColor({
    required this.background,
    required this.surface,
    required this.text,
    required this.hint,
    required this.primary,
    required this.onPrimary,
    required this.error,
    required this.onError,
  });

  final Color background;
  final Color surface;
  final Color text;
  final Color hint;
  final Color primary;
  final Color onPrimary;
  final Color error;
  final Color onError;
}

```
## lib/core/theme/foundation/app_font.dart
```dart
// lib/core/theme/foundation/app_font.dart

part of 'app_theme.dart';

class AppFont {
  AppFont({
    required this.font,
    required this.textColor,
    required this.hintColor,
    required this.onPrimaryColor,
  });

  final Font font;
  final Color textColor;
  final Color hintColor;
  final Color onPrimaryColor;

  // Display - 큰 제목이나 특별한 강조가 필요한 텍스트
  TextStyle get display1 => TextStyle(
        fontFamily: font.name,
        fontSize: 48,
        fontWeight: font.bold,
        color: textColor,
        height: 1.2,
      );

  TextStyle get display2 => TextStyle(
        fontFamily: font.name,
        fontSize: 40,
        fontWeight: font.bold,
        color: textColor,
        height: 1.2,
      );

  // Headline - 섹션 제목이나 중요 텍스트
  TextStyle get headline1 => TextStyle(
        fontFamily: font.name,
        fontSize: 32,
        fontWeight: font.bold,
        color: textColor,
        height: 1.3,
      );

  TextStyle get headline2 => TextStyle(
        fontFamily: font.name,
        fontSize: 28,
        fontWeight: font.bold,
        color: textColor,
        height: 1.3,
      );

  TextStyle get headline3 => TextStyle(
        fontFamily: font.name,
        fontSize: 24,
        fontWeight: font.bold,
        color: textColor,
        height: 1.3,
      );

  // Title - 일반적인 제목
  TextStyle get title1 => TextStyle(
        fontFamily: font.name,
        fontSize: 22,
        fontWeight: font.semiBold,
        color: textColor,
        height: 1.4,
      );

  TextStyle get title2 => TextStyle(
        fontFamily: font.name,
        fontSize: 20,
        fontWeight: font.semiBold,
        color: textColor,
        height: 1.4,
      );

  TextStyle get title3 => TextStyle(
        fontFamily: font.name,
        fontSize: 18,
        fontWeight: font.semiBold,
        color: textColor,
        height: 1.4,
      );

  // Body - 본문 텍스트
  TextStyle get body1 => TextStyle(
        fontFamily: font.name,
        fontSize: 16,
        fontWeight: font.regular,
        color: textColor,
        height: 1.5,
      );

  TextStyle get body1Medium => body1.copyWith(
        fontWeight: font.medium,
      );

  TextStyle get body1SemiBold => body1.copyWith(
        fontWeight: font.semiBold,
      );

  TextStyle get body1Bold => body1.copyWith(
        fontWeight: font.bold,
      );

  TextStyle get body2 => TextStyle(
        fontFamily: font.name,
        fontSize: 14,
        fontWeight: font.regular,
        color: textColor,
        height: 1.5,
      );

  TextStyle get body2Medium => body2.copyWith(
        fontWeight: font.medium,
      );

  TextStyle get body2SemiBold => body2.copyWith(
        fontWeight: font.semiBold,
      );

  TextStyle get body2Bold => body2.copyWith(
        fontWeight: font.bold,
      );

  TextStyle get body3 => TextStyle(
        fontFamily: font.name,
        fontSize: 12,
        fontWeight: font.regular,
        color: textColor,
        height: 1.5,
      );

  TextStyle get body3Medium => body3.copyWith(
        fontWeight: font.medium,
      );

  TextStyle get body3SemiBold => body3.copyWith(
        fontWeight: font.semiBold,
      );

  TextStyle get body3Bold => body3.copyWith(
        fontWeight: font.bold,
      );

  // Caption - 작은 텍스트, 부가 설명
  TextStyle get caption => TextStyle(
        fontFamily: font.name,
        fontSize: 11,
        fontWeight: font.regular,
        color: textColor,
        height: 1.5,
      );

  TextStyle get captionMedium => caption.copyWith(
        fontWeight: font.medium,
      );

  TextStyle get captionSemiBold => caption.copyWith(
        fontWeight: font.semiBold,
      );

  // Button 텍스트
  TextStyle get buttonLarge => TextStyle(
        fontFamily: font.name,
        fontSize: 16,
        fontWeight: font.semiBold,
        color: onPrimaryColor,
        height: 1.5,
      );

  TextStyle get buttonMedium => TextStyle(
        fontFamily: font.name,
        fontSize: 14,
        fontWeight: font.semiBold,
        color: onPrimaryColor,
        height: 1.5,
      );

  TextStyle get buttonSmall => TextStyle(
        fontFamily: font.name,
        fontSize: 12,
        fontWeight: font.semiBold,
        color: onPrimaryColor,
        height: 1.5,
      );

  // Hint 텍스트
  TextStyle get hintLarge => TextStyle(
        fontFamily: font.name,
        fontSize: 16,
        fontWeight: font.regular,
        color: hintColor,
        height: 1.5,
      );

  TextStyle get hintMedium => TextStyle(
        fontFamily: font.name,
        fontSize: 14,
        fontWeight: font.regular,
        color: hintColor,
        height: 1.5,
      );

  TextStyle get hintSmall => TextStyle(
        fontFamily: font.name,
        fontSize: 12,
        fontWeight: font.regular,
        color: hintColor,
        height: 1.5,
      );

  // 유틸리티 메소드
  TextStyle withColor(TextStyle style, Color color) =>
      style.copyWith(color: color);
  TextStyle withWeight(TextStyle style, FontWeight weight) =>
      style.copyWith(fontWeight: weight);
  TextStyle withSize(TextStyle style, double size) =>
      style.copyWith(fontSize: size);
}

```
## lib/core/theme/foundation/app_mode.dart
```dart
part of 'app_theme.dart';

enum AppMode {
  light,
  dark;

  String toJson() => name;

  static AppMode fromJson(String json) {
    return AppMode.values.firstWhere(
      (mode) => mode.name == json,
      orElse: () => AppMode.light,
    );
  }
}

```
## lib/core/theme/foundation/app_theme.dart
```dart
import 'package:flutter/material.dart';
import 'package:pascal/core/theme/resources/font.dart';

part 'app_color.dart';
part 'app_font.dart';
part 'app_mode.dart';

abstract class AppTheme {
  AppMode get mode;
  AppColor get color;
  AppFont get font;

  ThemeData get themeData;
}

```
## lib/core/theme/pages/theme_test_page.dart
```dart
// lib/core/theme/test/theme_test_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pascal/core/localization/pages/locale_test_page.dart';
import 'package:pascal/core/theme/foundation/app_theme.dart';
import 'package:pascal/core/theme/providers/theme_provider.dart';

class ThemeTestPage extends ConsumerWidget {
  const ThemeTestPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.theme;
    final color = theme.color;
    final font = theme.font;

    return Scaffold(
      backgroundColor: color.background,
      appBar: AppBar(
        backgroundColor: color.surface,
        title: Text('테마 테스트', style: font.title1),
        actions: [
          // 로케일 테스트 페이지 이동 버튼
          IconButton(
            icon: Icon(
              Icons.language,
              color: color.text,
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LocaleTestPage(),
              ),
            ),
          ),
          // 테마 토글 버튼
          IconButton(
            icon: Icon(
              theme.mode == AppMode.light ? Icons.dark_mode : Icons.light_mode,
              color: color.text,
            ),
            onPressed: () => ref.read(themeProvider.notifier).toggleTheme(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 색상 섹션
            _buildSection(
              title: '색상 테스트',
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildColorTile('Primary', color.primary),
                  _buildColorTile('Background', color.background),
                  _buildColorTile('Surface', color.surface),
                  _buildColorTile('Text', color.text),
                  _buildColorTile('Hint', color.hint),
                  _buildColorTile('Error', color.error),
                ],
              ),
              font: font,
              color: color,
            ),

            const SizedBox(height: 32),

            // 타이포그래피 섹션
            _buildSection(
              title: '타이포그래피 테스트',
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Title 1', style: font.title1),
                  const SizedBox(height: 8),
                  Text('Body 1 Bold', style: font.body1Bold),
                  const SizedBox(height: 8),
                  Text('Body 1 Medium', style: font.body1Medium),
                  const SizedBox(height: 8),
                  Text('Body 2 Bold', style: font.body2Bold),
                  const SizedBox(height: 8),
                  Text('Hint Text', style: font.hintMedium),
                ],
              ),
              font: font,
              color: color,
            ),

            const SizedBox(height: 32),

            // 컴포넌트 섹션
            _buildSection(
              title: '컴포넌트 테스트',
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 버튼 예시
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: color.primary,
                      foregroundColor: color.onPrimary,
                    ),
                    onPressed: () {},
                    child: const Text('기본 버튼'),
                  ),
                  const SizedBox(height: 16),

                  // 텍스트 필드 예시
                  TextField(
                    decoration: InputDecoration(
                      hintText: '텍스트 입력',
                      hintStyle: font.hintMedium,
                      filled: true,
                      fillColor: color.surface,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // 카드 예시
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: color.surface,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('카드 타이틀', style: font.body1Medium),
                        const SizedBox(height: 8),
                        Text('카드 내용', style: font.body2Medium),
                      ],
                    ),
                  ),
                ],
              ),
              font: font,
              color: color,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required Widget content,
    required AppFont font,
    required AppColor color,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: font.title1),
        const SizedBox(height: 16),
        content,
      ],
    );
  }

  Widget _buildColorTile(String name, Color color) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey.withOpacity(0.2)),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name),
                Text(
                  '#${color.value.toRadixString(16).padLeft(8, '0').toUpperCase()}',
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

```
## lib/core/theme/providers/theme_provider.dart
```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pascal/core/theme/foundation/app_theme.dart';
import 'package:pascal/core/theme/theme/dark_theme.dart';
import 'package:pascal/core/theme/theme/light_theme.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

@Riverpod(dependencies: [])
class Theme extends _$Theme {
  @override
  AppTheme build() {
    return LightTheme();
  }

  void toggleTheme() {
    state = state.mode == AppMode.light ? DarkTheme() : LightTheme();
  }

  void setTheme(AppMode mode) {
    state = mode == AppMode.light ? LightTheme() : DarkTheme();
  }
}

extension ThemeProviderExt on WidgetRef {
  AppTheme get theme => watch(themeProvider);
  AppColor get color => theme.color;
  AppFont get font => theme.font;
  ThemeData get themeData => theme.themeData;
}

```
## lib/core/theme/providers/theme_provider.g.dart
```dart
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$themeHash() => r'bdaa09a040c9ef4ffd2afcc634d9c7db8c0bae18';

/// See also [Theme].
@ProviderFor(Theme)
final themeProvider = AutoDisposeNotifierProvider<Theme, AppTheme>.internal(
  Theme.new,
  name: r'themeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$themeHash,
  dependencies: const <ProviderOrFamily>[],
  allTransitiveDependencies: const <ProviderOrFamily>{},
);

typedef _$Theme = AutoDisposeNotifier<AppTheme>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

```
## lib/core/theme/resources/font.dart
```dart
// lib/core/theme/resources/font.dart

import 'package:flutter/material.dart';

abstract class Font {
  Font({
    required this.name,
    required this.regular,
    required this.medium,
    required this.semiBold,
    required this.bold,
  });

  final String name;
  final FontWeight regular;
  final FontWeight medium;
  final FontWeight semiBold;
  final FontWeight bold;
}

class Pretendard implements Font {
  const Pretendard();

  @override
  final String name = 'Pretendard';

  @override
  final FontWeight regular = FontWeight.w400;

  @override
  final FontWeight medium = FontWeight.w500;

  @override
  final FontWeight semiBold = FontWeight.w600;

  @override
  final FontWeight bold = FontWeight.w700;
}

```
## lib/core/theme/resources/palette.dart
```dart
import 'package:flutter/material.dart';

abstract class Palette {
  // 기본 컬러
  static const Color primary = Color(0xFF2196F3); // 메인 컬러
  static const Color secondary = Color(0xFF03DAC6); // 보조 컬러
  static const Color error = Color(0xFFB00020); // 에러 컬러

  // 라이트 모드 컬러
  static const Color lightBackground = Color(0xFFFFFFFF);
  static const Color lightSurface = Color(0xFFF5F5F5);
  static const Color lightText = Color(0xFF000000);
  static const Color lightHint = Color(0xFF9E9E9E);

  // 다크 모드 컬러
  static const Color darkBackground = Color(0xFF121212);
  static const Color darkSurface = Color(0xFF1E1E1E);
  static const Color darkText = Color(0xFFFFFFFF);
  static const Color darkHint = Color(0xFF757575);
}

```
## lib/core/theme/theme/dark_theme.dart
```dart
import 'package:flutter/material.dart';
import 'package:pascal/core/theme/foundation/app_theme.dart';
import 'package:pascal/core/theme/resources/font.dart';

class DarkTheme implements AppTheme {
  // 싱글톤 패턴 구현
  static final DarkTheme _instance = DarkTheme._internal();
  factory DarkTheme() => _instance;
  DarkTheme._internal() {
    _color = const AppColor(
      background: Color(0xFF1A1A1A),
      surface: Color(0xFF242424),
      text: Color(0xFFF1F1F1),
      hint: Color(0xFF8E8E8E),
      primary: Color(0xFF6C85F2),
      onPrimary: Color(0xFF1A1A1A),
      error: Color(0xFFEF5350),
      onError: Color(0xFF1A1A1A),
    );

    _font = AppFont(
      font: const Pretendard(),
      textColor: _color.text,
      hintColor: _color.hint,
      onPrimaryColor: _color.onPrimary,
    );
  }

  late final AppColor _color;
  late final AppFont _font;

  @override
  AppMode get mode => AppMode.dark;

  @override
  AppColor get color => _color;

  @override
  AppFont get font => _font;

  @override
  ThemeData get themeData => ThemeData(
        brightness: Brightness.dark,
        primaryColor: _color.primary,
        scaffoldBackgroundColor: _color.background,
        colorScheme: ColorScheme.dark(
          primary: _color.primary,
          onPrimary: _color.onPrimary,
          error: _color.error,
          onError: _color.onError,
          surface: _color.surface,
        ),

        // textTheme: TextTheme(
        //   bodyLarge: _font.bodyLarge,
        //   bodyMedium: _font.bodyMedium,
        //   bodySmall: _font.bodySmall,
        //   titleLarge: _font.titleLarge,
        // ),
      );
}

```
## lib/core/theme/theme/light_theme.dart
```dart
import 'package:flutter/material.dart';
import 'package:pascal/core/theme/foundation/app_theme.dart';
import 'package:pascal/core/theme/resources/font.dart';

class LightTheme implements AppTheme {
  // 싱글톤 패턴 구현
  static final LightTheme _instance = LightTheme._internal();
  factory LightTheme() => _instance;
  LightTheme._internal() {
    _color = const AppColor(
      background: Colors.white,
      surface: Color(0xFFF8F9FD),
      text: Color(0xFF2B2B2B),
      hint: Color(0xFF9BA1B3),
      primary: Color(0xFF4F6AF0),
      onPrimary: Colors.white,
      error: Color(0xFFE53935),
      onError: Colors.white,
    );

    _font = AppFont(
      font: const Pretendard(),
      textColor: _color.text,
      hintColor: _color.hint,
      onPrimaryColor: _color.onPrimary,
    );
  }

  late final AppColor _color;
  late final AppFont _font;

  @override
  AppMode get mode => AppMode.light;

  @override
  AppColor get color => _color;

  @override
  AppFont get font => _font;

  @override
  ThemeData get themeData => ThemeData(
        brightness: Brightness.light,
        primaryColor: _color.primary,
        scaffoldBackgroundColor: _color.background,
        colorScheme: ColorScheme.light(
          primary: _color.primary,
          onPrimary: _color.onPrimary,
          error: _color.error,
          onError: _color.onError,
          surface: _color.surface,
        ),
        // textTheme: TextTheme(
        //   bodyLarge: _font.bodyLarge,
        //   bodyMedium: _font.bodyMedium,
        //   bodySmall: _font.bodySmall,
        //   titleLarge: _font.titleLarge,
        // ),
      );
}

```
## lib/main.dart
```dart
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pascal/core/localization/generated/l10n.dart';
import 'package:pascal/core/localization/provider/locale_provider.dart';
import 'package:pascal/core/theme/pages/theme_test_page.dart';
import 'package:pascal/core/theme/providers/theme_provider.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(localeStateProvider);

    final theme = ref.theme;

    return MaterialApp(
      // 로컬라이제이션 설정
      locale: locale,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: LocaleState.supportedLocales,
      title: 'Pascal',
      theme: theme.themeData,
      home: const ThemeTestPage(),
    );
  }
}

```

```
## lib/core/localization/generated/intl/messages_all.dart
```dart
// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that looks up messages for specific locales by
// delegating to the appropriate library.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:implementation_imports, file_names, unnecessary_new
// ignore_for_file:unnecessary_brace_in_string_interps, directives_ordering
// ignore_for_file:argument_type_not_assignable, invalid_assignment
// ignore_for_file:prefer_single_quotes, prefer_generic_function_type_aliases
// ignore_for_file:comment_references

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';
import 'package:intl/src/intl_helpers.dart';

import 'messages_en.dart' as messages_en;
import 'messages_ko.dart' as messages_ko;

typedef Future<dynamic> LibraryLoader();
Map<String, LibraryLoader> _deferredLibraries = {
  'en': () => new SynchronousFuture(null),
  'ko': () => new SynchronousFuture(null),
};

MessageLookupByLibrary? _findExact(String localeName) {
  switch (localeName) {
    case 'en':
      return messages_en.messages;
    case 'ko':
      return messages_ko.messages;
    default:
      return null;
  }
}

/// User programs should call this before using [localeName] for messages.
Future<bool> initializeMessages(String localeName) {
  var availableLocale = Intl.verifiedLocale(
      localeName, (locale) => _deferredLibraries[locale] != null,
      onFailure: (_) => null);
  if (availableLocale == null) {
    return new SynchronousFuture(false);
  }
  var lib = _deferredLibraries[availableLocale];
  lib == null ? new SynchronousFuture(false) : lib();
  initializeInternalMessageLookup(() => new CompositeMessageLookup());
  messageLookup.addLocale(availableLocale, _findGeneratedMessagesFor);
  return new SynchronousFuture(true);
}

bool _messagesExistFor(String locale) {
  try {
    return _findExact(locale) != null;
  } catch (e) {
    return false;
  }
}

MessageLookupByLibrary? _findGeneratedMessagesFor(String locale) {
  var actualLocale =
      Intl.verifiedLocale(locale, _messagesExistFor, onFailure: (_) => null);
  if (actualLocale == null) return null;
  return _findExact(actualLocale);
}

```
## lib/core/localization/generated/intl/messages_en.dart
```dart
// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "appName": MessageLookupByLibrary.simpleMessage("Pascal"),
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings")
      };
}

```
## lib/core/localization/generated/intl/messages_ko.dart
```dart
// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ko locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ko';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "appName": MessageLookupByLibrary.simpleMessage("Pascal"),
        "language": MessageLookupByLibrary.simpleMessage("언어"),
        "settings": MessageLookupByLibrary.simpleMessage("설정")
      };
}

```
## lib/core/localization/generated/l10n.dart
```dart
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

  /// `Pascal`
  String get appName {
    return Intl.message(
      'Pascal',
      name: 'appName',
      desc: 'The application name',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: 'Settings menu title',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: 'Language selection option',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ko'),
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

```
## lib/core/localization/l10n/intl_en.arb
```arb
{
    "@@locale": "en",
    "appName": "Pascal",
    "@appName": {
        "description": "The application name"
    },
    "settings": "Settings",
    "@settings": {
        "description": "Settings menu title"
    },
    "language": "Language",
    "@language": {
        "description": "Language selection option"
    }
  }
```
## lib/core/localization/l10n/intl_ko.arb
```arb
{
    "@@locale": "ko",
    "appName": "Pascal",
    "settings": "설정",
    "language": "언어"
  }
```
## lib/core/localization/pages/locale_test_page.dart
```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pascal/core/localization/provider/l10n_provider.dart';
import 'package:pascal/core/localization/provider/locale_provider.dart';
import 'package:pascal/core/theme/foundation/app_theme.dart';
import 'package:pascal/core/theme/providers/theme_provider.dart';

class LocaleTestPage extends ConsumerWidget {
  const LocaleTestPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final theme = ref.theme;
    final color = theme.color;
    final font = theme.font;
    final currentLocale = ref.watch(localeStateProvider);

    return Scaffold(
      backgroundColor: color.background,
      appBar: AppBar(
        backgroundColor: color.surface,
        title: Text('다국어 테스트', style: font.title1),
        actions: [
          // 언어 변경 버튼
          TextButton(
            onPressed: () {
              final newLocale = currentLocale.languageCode == 'ko'
                  ? const Locale('en')
                  : const Locale('ko');
              ref.read(localeStateProvider.notifier).setLocale(newLocale);
            },
            child: Text(
              currentLocale.languageCode.toUpperCase(),
              style: font.body1Medium.copyWith(color: color.primary),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 현재 로케일 정보
            _buildSection(
              title: '현재 로케일 정보',
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildInfoTile('언어 코드', currentLocale.languageCode),
                  const SizedBox(height: 8),
                  _buildInfoTile('국가 코드', currentLocale.countryCode ?? '없음'),
                ],
              ),
              font: font,
              color: color,
            ),

            const SizedBox(height: 32),

            // 번역 테스트
            _buildSection(
              title: '번역 테스트',
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTranslationTile(
                    'appName',
                    l10n.appName,
                    font,
                    color,
                  ),
                  const SizedBox(height: 16),
                  _buildTranslationTile(
                    'settings',
                    l10n.settings,
                    font,
                    color,
                  ),
                  const SizedBox(height: 16),
                  _buildTranslationTile(
                    'language',
                    l10n.language,
                    font,
                    color,
                  ),
                ],
              ),
              font: font,
              color: color,
            ),

            const SizedBox(height: 32),

            // 컴포넌트에서의 사용 예시
            _buildSection(
              title: '컴포넌트 테스트',
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 버튼 예시
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: color.primary,
                      foregroundColor: color.onPrimary,
                    ),
                    onPressed: () {},
                    icon: const Icon(Icons.settings),
                    label: Text(l10n.settings),
                  ),
                  const SizedBox(height: 16),

                  // 카드 예시
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: color.surface,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(l10n.appName, style: font.body1Medium),
                        const SizedBox(height: 8),
                        Text(l10n.settings, style: font.body2Medium),
                      ],
                    ),
                  ),
                ],
              ),
              font: font,
              color: color,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required Widget content,
    required AppFont font,
    required AppColor color,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: font.title1),
        const SizedBox(height: 16),
        content,
      ],
    );
  }

  Widget _buildInfoTile(String label, String value) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(label),
        ),
        Expanded(
          flex: 3,
          child: Text(value),
        ),
      ],
    );
  }

  Widget _buildTranslationTile(
    String key,
    String value,
    AppFont font,
    AppColor color,
  ) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.surface,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Key: $key',
            style: font.body3Medium.copyWith(color: color.hint),
          ),
          const SizedBox(height: 4),
          Text(
            'Value: $value',
            style: font.body3Medium,
          ),
        ],
      ),
    );
  }
}

```
## lib/core/localization/provider/l10n_provider.dart
```dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pascal/core/localization/generated/l10n.dart';
import 'package:pascal/core/localization/provider/locale_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'l10n_provider.g.dart';

@Riverpod(dependencies: [LocaleState])
S l10n(Ref ref) {
  ref.watch(localeStateProvider);
  return S.current;
}

```
## lib/core/localization/provider/locale_provider.dart
```dart
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'locale_provider.g.dart';

const String _localeKey = 'locale';

@Riverpod(dependencies: [], keepAlive: true)
class LocaleState extends _$LocaleState {
  SharedPreferences? _prefs;

  @override
  Locale build() {
    // 기본 로케일은 시스템 설정을 따름
    return const Locale('ko');
  }

  // 지원하는 로케일 목록
  static const supportedLocales = [
    Locale('ko'), // 한국어
    Locale('en'), // 영어
  ];

  // 로케일 변경
  Future<void> setLocale(Locale locale) async {
    _prefs ??= await SharedPreferences.getInstance();
    await _prefs!.setString(_localeKey, locale.languageCode);
    state = locale;
  }

  // 저장된 로케일 불러오기
  Future<void> loadSavedLocale() async {
    _prefs ??= await SharedPreferences.getInstance();
    final savedLocale = _prefs!.getString(_localeKey);
    if (savedLocale != null) {
      state = Locale(savedLocale);
    }
  }
}

```
## lib/core/theme/foundation/app_color.dart
```dart
part of 'app_theme.dart';

class AppColor {
  const AppColor({
    required this.background,
    required this.surface,
    required this.text,
    required this.hint,
    required this.primary,
    required this.onPrimary,
    required this.error,
    required this.onError,
  });

  final Color background;
  final Color surface;
  final Color text;
  final Color hint;
  final Color primary;
  final Color onPrimary;
  final Color error;
  final Color onError;
}

```
## lib/core/theme/foundation/app_font.dart
```dart
// lib/core/theme/foundation/app_font.dart

part of 'app_theme.dart';

class AppFont {
  AppFont({
    required this.font,
    required this.textColor,
    required this.hintColor,
    required this.onPrimaryColor,
  });

  final Font font;
  final Color textColor;
  final Color hintColor;
  final Color onPrimaryColor;

  // Display - 큰 제목이나 특별한 강조가 필요한 텍스트
  TextStyle get display1 => TextStyle(
        fontFamily: font.name,
        fontSize: 48,
        fontWeight: font.bold,
        color: textColor,
        height: 1.2,
      );

  TextStyle get display2 => TextStyle(
        fontFamily: font.name,
        fontSize: 40,
        fontWeight: font.bold,
        color: textColor,
        height: 1.2,
      );

  // Headline - 섹션 제목이나 중요 텍스트
  TextStyle get headline1 => TextStyle(
        fontFamily: font.name,
        fontSize: 32,
        fontWeight: font.bold,
        color: textColor,
        height: 1.3,
      );

  TextStyle get headline2 => TextStyle(
        fontFamily: font.name,
        fontSize: 28,
        fontWeight: font.bold,
        color: textColor,
        height: 1.3,
      );

  TextStyle get headline3 => TextStyle(
        fontFamily: font.name,
        fontSize: 24,
        fontWeight: font.bold,
        color: textColor,
        height: 1.3,
      );

  // Title - 일반적인 제목
  TextStyle get title1 => TextStyle(
        fontFamily: font.name,
        fontSize: 22,
        fontWeight: font.semiBold,
        color: textColor,
        height: 1.4,
      );

  TextStyle get title2 => TextStyle(
        fontFamily: font.name,
        fontSize: 20,
        fontWeight: font.semiBold,
        color: textColor,
        height: 1.4,
      );

  TextStyle get title3 => TextStyle(
        fontFamily: font.name,
        fontSize: 18,
        fontWeight: font.semiBold,
        color: textColor,
        height: 1.4,
      );

  // Body - 본문 텍스트
  TextStyle get body1 => TextStyle(
        fontFamily: font.name,
        fontSize: 16,
        fontWeight: font.regular,
        color: textColor,
        height: 1.5,
      );

  TextStyle get body1Medium => body1.copyWith(
        fontWeight: font.medium,
      );

  TextStyle get body1SemiBold => body1.copyWith(
        fontWeight: font.semiBold,
      );

  TextStyle get body1Bold => body1.copyWith(
        fontWeight: font.bold,
      );

  TextStyle get body2 => TextStyle(
        fontFamily: font.name,
        fontSize: 14,
        fontWeight: font.regular,
        color: textColor,
        height: 1.5,
      );

  TextStyle get body2Medium => body2.copyWith(
        fontWeight: font.medium,
      );

  TextStyle get body2SemiBold => body2.copyWith(
        fontWeight: font.semiBold,
      );

  TextStyle get body2Bold => body2.copyWith(
        fontWeight: font.bold,
      );

  TextStyle get body3 => TextStyle(
        fontFamily: font.name,
        fontSize: 12,
        fontWeight: font.regular,
        color: textColor,
        height: 1.5,
      );

  TextStyle get body3Medium => body3.copyWith(
        fontWeight: font.medium,
      );

  TextStyle get body3SemiBold => body3.copyWith(
        fontWeight: font.semiBold,
      );

  TextStyle get body3Bold => body3.copyWith(
        fontWeight: font.bold,
      );

  // Caption - 작은 텍스트, 부가 설명
  TextStyle get caption => TextStyle(
        fontFamily: font.name,
        fontSize: 11,
        fontWeight: font.regular,
        color: textColor,
        height: 1.5,
      );

  TextStyle get captionMedium => caption.copyWith(
        fontWeight: font.medium,
      );

  TextStyle get captionSemiBold => caption.copyWith(
        fontWeight: font.semiBold,
      );

  // Button 텍스트
  TextStyle get buttonLarge => TextStyle(
        fontFamily: font.name,
        fontSize: 16,
        fontWeight: font.semiBold,
        color: onPrimaryColor,
        height: 1.5,
      );

  TextStyle get buttonMedium => TextStyle(
        fontFamily: font.name,
        fontSize: 14,
        fontWeight: font.semiBold,
        color: onPrimaryColor,
        height: 1.5,
      );

  TextStyle get buttonSmall => TextStyle(
        fontFamily: font.name,
        fontSize: 12,
        fontWeight: font.semiBold,
        color: onPrimaryColor,
        height: 1.5,
      );

  // Hint 텍스트
  TextStyle get hintLarge => TextStyle(
        fontFamily: font.name,
        fontSize: 16,
        fontWeight: font.regular,
        color: hintColor,
        height: 1.5,
      );

  TextStyle get hintMedium => TextStyle(
        fontFamily: font.name,
        fontSize: 14,
        fontWeight: font.regular,
        color: hintColor,
        height: 1.5,
      );

  TextStyle get hintSmall => TextStyle(
        fontFamily: font.name,
        fontSize: 12,
        fontWeight: font.regular,
        color: hintColor,
        height: 1.5,
      );

  // 유틸리티 메소드
  TextStyle withColor(TextStyle style, Color color) =>
      style.copyWith(color: color);
  TextStyle withWeight(TextStyle style, FontWeight weight) =>
      style.copyWith(fontWeight: weight);
  TextStyle withSize(TextStyle style, double size) =>
      style.copyWith(fontSize: size);
}

```
## lib/core/theme/foundation/app_mode.dart
```dart
part of 'app_theme.dart';

enum AppMode {
  light,
  dark;

  String toJson() => name;

  static AppMode fromJson(String json) {
    return AppMode.values.firstWhere(
      (mode) => mode.name == json,
      orElse: () => AppMode.light,
    );
  }
}

```
## lib/core/theme/foundation/app_theme.dart
```dart
import 'package:flutter/material.dart';
import 'package:pascal/core/theme/resources/font.dart';

part 'app_color.dart';
part 'app_font.dart';
part 'app_mode.dart';

abstract class AppTheme {
  AppMode get mode;
  AppColor get color;
  AppFont get font;

  ThemeData get themeData;
}

```
## lib/core/theme/pages/theme_test_page.dart
```dart
// lib/core/theme/test/theme_test_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pascal/core/localization/pages/locale_test_page.dart';
import 'package:pascal/core/theme/foundation/app_theme.dart';
import 'package:pascal/core/theme/providers/theme_provider.dart';

class ThemeTestPage extends ConsumerWidget {
  const ThemeTestPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.theme;
    final color = theme.color;
    final font = theme.font;

    return Scaffold(
      backgroundColor: color.background,
      appBar: AppBar(
        backgroundColor: color.surface,
        title: Text('테마 테스트', style: font.title1),
        actions: [
          // 로케일 테스트 페이지 이동 버튼
          IconButton(
            icon: Icon(
              Icons.language,
              color: color.text,
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LocaleTestPage(),
              ),
            ),
          ),
          // 테마 토글 버튼
          IconButton(
            icon: Icon(
              theme.mode == AppMode.light ? Icons.dark_mode : Icons.light_mode,
              color: color.text,
            ),
            onPressed: () => ref.read(themeProvider.notifier).toggleTheme(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 색상 섹션
            _buildSection(
              title: '색상 테스트',
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildColorTile('Primary', color.primary),
                  _buildColorTile('Background', color.background),
                  _buildColorTile('Surface', color.surface),
                  _buildColorTile('Text', color.text),
                  _buildColorTile('Hint', color.hint),
                  _buildColorTile('Error', color.error),
                ],
              ),
              font: font,
              color: color,
            ),

            const SizedBox(height: 32),

            // 타이포그래피 섹션
            _buildSection(
              title: '타이포그래피 테스트',
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Title 1', style: font.title1),
                  const SizedBox(height: 8),
                  Text('Body 1 Bold', style: font.body1Bold),
                  const SizedBox(height: 8),
                  Text('Body 1 Medium', style: font.body1Medium),
                  const SizedBox(height: 8),
                  Text('Body 2 Bold', style: font.body2Bold),
                  const SizedBox(height: 8),
                  Text('Hint Text', style: font.hintMedium),
                ],
              ),
              font: font,
              color: color,
            ),

            const SizedBox(height: 32),

            // 컴포넌트 섹션
            _buildSection(
              title: '컴포넌트 테스트',
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 버튼 예시
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: color.primary,
                      foregroundColor: color.onPrimary,
                    ),
                    onPressed: () {},
                    child: const Text('기본 버튼'),
                  ),
                  const SizedBox(height: 16),

                  // 텍스트 필드 예시
                  TextField(
                    decoration: InputDecoration(
                      hintText: '텍스트 입력',
                      hintStyle: font.hintMedium,
                      filled: true,
                      fillColor: color.surface,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // 카드 예시
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: color.surface,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('카드 타이틀', style: font.body1Medium),
                        const SizedBox(height: 8),
                        Text('카드 내용', style: font.body2Medium),
                      ],
                    ),
                  ),
                ],
              ),
              font: font,
              color: color,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required Widget content,
    required AppFont font,
    required AppColor color,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: font.title1),
        const SizedBox(height: 16),
        content,
      ],
    );
  }

  Widget _buildColorTile(String name, Color color) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey.withOpacity(0.2)),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name),
                Text(
                  '#${color.value.toRadixString(16).padLeft(8, '0').toUpperCase()}',
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

```
## lib/core/theme/providers/theme_provider.dart
```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pascal/core/theme/foundation/app_theme.dart';
import 'package:pascal/core/theme/theme/dark_theme.dart';
import 'package:pascal/core/theme/theme/light_theme.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

@Riverpod(dependencies: [])
class Theme extends _$Theme {
  @override
  AppTheme build() {
    return LightTheme();
  }

  void toggleTheme() {
    state = state.mode == AppMode.light ? DarkTheme() : LightTheme();
  }

  void setTheme(AppMode mode) {
    state = mode == AppMode.light ? LightTheme() : DarkTheme();
  }
}

extension ThemeProviderExt on WidgetRef {
  AppTheme get theme => watch(themeProvider);
  AppColor get color => theme.color;
  AppFont get font => theme.font;
  ThemeData get themeData => theme.themeData;
}

```
## lib/core/theme/resources/font.dart
```dart
// lib/core/theme/resources/font.dart

import 'package:flutter/material.dart';

abstract class Font {
  Font({
    required this.name,
    required this.regular,
    required this.medium,
    required this.semiBold,
    required this.bold,
  });

  final String name;
  final FontWeight regular;
  final FontWeight medium;
  final FontWeight semiBold;
  final FontWeight bold;
}

class Pretendard implements Font {
  const Pretendard();

  @override
  final String name = 'Pretendard';

  @override
  final FontWeight regular = FontWeight.w400;

  @override
  final FontWeight medium = FontWeight.w500;

  @override
  final FontWeight semiBold = FontWeight.w600;

  @override
  final FontWeight bold = FontWeight.w700;
}

```
## lib/core/theme/resources/palette.dart
```dart
import 'package:flutter/material.dart';

abstract class Palette {
  // 기본 컬러
  static const Color primary = Color(0xFF2196F3); // 메인 컬러
  static const Color secondary = Color(0xFF03DAC6); // 보조 컬러
  static const Color error = Color(0xFFB00020); // 에러 컬러

  // 라이트 모드 컬러
  static const Color lightBackground = Color(0xFFFFFFFF);
  static const Color lightSurface = Color(0xFFF5F5F5);
  static const Color lightText = Color(0xFF000000);
  static const Color lightHint = Color(0xFF9E9E9E);

  // 다크 모드 컬러
  static const Color darkBackground = Color(0xFF121212);
  static const Color darkSurface = Color(0xFF1E1E1E);
  static const Color darkText = Color(0xFFFFFFFF);
  static const Color darkHint = Color(0xFF757575);
}

```
## lib/core/theme/theme/dark_theme.dart
```dart
import 'package:flutter/material.dart';
import 'package:pascal/core/theme/foundation/app_theme.dart';
import 'package:pascal/core/theme/resources/font.dart';

class DarkTheme implements AppTheme {
  // 싱글톤 패턴 구현
  static final DarkTheme _instance = DarkTheme._internal();
  factory DarkTheme() => _instance;
  DarkTheme._internal() {
    _color = const AppColor(
      background: Color(0xFF1A1A1A),
      surface: Color(0xFF242424),
      text: Color(0xFFF1F1F1),
      hint: Color(0xFF8E8E8E),
      primary: Color(0xFF6C85F2),
      onPrimary: Color(0xFF1A1A1A),
      error: Color(0xFFEF5350),
      onError: Color(0xFF1A1A1A),
    );

    _font = AppFont(
      font: const Pretendard(),
      textColor: _color.text,
      hintColor: _color.hint,
      onPrimaryColor: _color.onPrimary,
    );
  }

  late final AppColor _color;
  late final AppFont _font;

  @override
  AppMode get mode => AppMode.dark;

  @override
  AppColor get color => _color;

  @override
  AppFont get font => _font;

  @override
  ThemeData get themeData => ThemeData(
        brightness: Brightness.dark,
        primaryColor: _color.primary,
        scaffoldBackgroundColor: _color.background,
        colorScheme: ColorScheme.dark(
          primary: _color.primary,
          onPrimary: _color.onPrimary,
          error: _color.error,
          onError: _color.onError,
          surface: _color.surface,
        ),

        // textTheme: TextTheme(
        //   bodyLarge: _font.bodyLarge,
        //   bodyMedium: _font.bodyMedium,
        //   bodySmall: _font.bodySmall,
        //   titleLarge: _font.titleLarge,
        // ),
      );
}

```
## lib/core/theme/theme/light_theme.dart
```dart
import 'package:flutter/material.dart';
import 'package:pascal/core/theme/foundation/app_theme.dart';
import 'package:pascal/core/theme/resources/font.dart';

class LightTheme implements AppTheme {
  // 싱글톤 패턴 구현
  static final LightTheme _instance = LightTheme._internal();
  factory LightTheme() => _instance;
  LightTheme._internal() {
    _color = const AppColor(
      background: Colors.white,
      surface: Color(0xFFF8F9FD),
      text: Color(0xFF2B2B2B),
      hint: Color(0xFF9BA1B3),
      primary: Color(0xFF4F6AF0),
      onPrimary: Colors.white,
      error: Color(0xFFE53935),
      onError: Colors.white,
    );

    _font = AppFont(
      font: const Pretendard(),
      textColor: _color.text,
      hintColor: _color.hint,
      onPrimaryColor: _color.onPrimary,
    );
  }

  late final AppColor _color;
  late final AppFont _font;

  @override
  AppMode get mode => AppMode.light;

  @override
  AppColor get color => _color;

  @override
  AppFont get font => _font;

  @override
  ThemeData get themeData => ThemeData(
        brightness: Brightness.light,
        primaryColor: _color.primary,
        scaffoldBackgroundColor: _color.background,
        colorScheme: ColorScheme.light(
          primary: _color.primary,
          onPrimary: _color.onPrimary,
          error: _color.error,
          onError: _color.onError,
          surface: _color.surface,
        ),
        // textTheme: TextTheme(
        //   bodyLarge: _font.bodyLarge,
        //   bodyMedium: _font.bodyMedium,
        //   bodySmall: _font.bodySmall,
        //   titleLarge: _font.titleLarge,
        // ),
      );
}

```
## lib/main.dart
```dart
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pascal/core/localization/generated/l10n.dart';
import 'package:pascal/core/localization/provider/locale_provider.dart';
import 'package:pascal/core/theme/pages/theme_test_page.dart';
import 'package:pascal/core/theme/providers/theme_provider.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(localeStateProvider);

    final theme = ref.theme;

    return MaterialApp(
      // 로컬라이제이션 설정
      locale: locale,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: LocaleState.supportedLocales,
      title: 'Pascal',
      theme: theme.themeData,
      home: const ThemeTestPage(),
    );
  }
}

```

```
## lib/core/localization/generated/l10n.dart
```dart
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

  /// `Pascal`
  String get appName {
    return Intl.message(
      'Pascal',
      name: 'appName',
      desc: 'The application name',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: 'Settings menu title',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: 'Language selection option',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ko'),
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

```
## lib/core/localization/l10n/intl_en.arb
```arb
{
    "@@locale": "en",
    "appName": "Pascal",
    "@appName": {
        "description": "The application name"
    },
    "settings": "Settings",
    "@settings": {
        "description": "Settings menu title"
    },
    "language": "Language",
    "@language": {
        "description": "Language selection option"
    }
  }
```
## lib/core/localization/l10n/intl_ko.arb
```arb
{
    "@@locale": "ko",
    "appName": "Pascal",
    "settings": "설정",
    "language": "언어"
  }
```
## lib/core/localization/pages/locale_test_page.dart
```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pascal/core/localization/provider/l10n_provider.dart';
import 'package:pascal/core/localization/provider/locale_provider.dart';
import 'package:pascal/core/theme/foundation/app_theme.dart';
import 'package:pascal/core/theme/providers/theme_provider.dart';

class LocaleTestPage extends ConsumerWidget {
  const LocaleTestPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final theme = ref.theme;
    final color = theme.color;
    final font = theme.font;
    final currentLocale = ref.watch(localeStateProvider);

    return Scaffold(
      backgroundColor: color.background,
      appBar: AppBar(
        backgroundColor: color.surface,
        title: Text('다국어 테스트', style: font.title1),
        actions: [
          // 언어 변경 버튼
          TextButton(
            onPressed: () {
              final newLocale = currentLocale.languageCode == 'ko'
                  ? const Locale('en')
                  : const Locale('ko');
              ref.read(localeStateProvider.notifier).setLocale(newLocale);
            },
            child: Text(
              currentLocale.languageCode.toUpperCase(),
              style: font.body1Medium.copyWith(color: color.primary),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 현재 로케일 정보
            _buildSection(
              title: '현재 로케일 정보',
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildInfoTile('언어 코드', currentLocale.languageCode),
                  const SizedBox(height: 8),
                  _buildInfoTile('국가 코드', currentLocale.countryCode ?? '없음'),
                ],
              ),
              font: font,
              color: color,
            ),

            const SizedBox(height: 32),

            // 번역 테스트
            _buildSection(
              title: '번역 테스트',
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTranslationTile(
                    'appName',
                    l10n.appName,
                    font,
                    color,
                  ),
                  const SizedBox(height: 16),
                  _buildTranslationTile(
                    'settings',
                    l10n.settings,
                    font,
                    color,
                  ),
                  const SizedBox(height: 16),
                  _buildTranslationTile(
                    'language',
                    l10n.language,
                    font,
                    color,
                  ),
                ],
              ),
              font: font,
              color: color,
            ),

            const SizedBox(height: 32),

            // 컴포넌트에서의 사용 예시
            _buildSection(
              title: '컴포넌트 테스트',
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 버튼 예시
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: color.primary,
                      foregroundColor: color.onPrimary,
                    ),
                    onPressed: () {},
                    icon: const Icon(Icons.settings),
                    label: Text(l10n.settings),
                  ),
                  const SizedBox(height: 16),

                  // 카드 예시
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: color.surface,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(l10n.appName, style: font.body1Medium),
                        const SizedBox(height: 8),
                        Text(l10n.settings, style: font.body2Medium),
                      ],
                    ),
                  ),
                ],
              ),
              font: font,
              color: color,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required Widget content,
    required AppFont font,
    required AppColor color,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: font.title1),
        const SizedBox(height: 16),
        content,
      ],
    );
  }

  Widget _buildInfoTile(String label, String value) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(label),
        ),
        Expanded(
          flex: 3,
          child: Text(value),
        ),
      ],
    );
  }

  Widget _buildTranslationTile(
    String key,
    String value,
    AppFont font,
    AppColor color,
  ) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.surface,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Key: $key',
            style: font.body3Medium.copyWith(color: color.hint),
          ),
          const SizedBox(height: 4),
          Text(
            'Value: $value',
            style: font.body3Medium,
          ),
        ],
      ),
    );
  }
}

```
## lib/core/localization/provider/l10n_provider.dart
```dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pascal/core/localization/generated/l10n.dart';
import 'package:pascal/core/localization/provider/locale_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'l10n_provider.g.dart';

@Riverpod(dependencies: [LocaleState])
S l10n(Ref ref) {
  ref.watch(localeStateProvider);
  return S.current;
}

```
## lib/core/localization/provider/locale_provider.dart
```dart
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'locale_provider.g.dart';

const String _localeKey = 'locale';

@Riverpod(dependencies: [], keepAlive: true)
class LocaleState extends _$LocaleState {
  SharedPreferences? _prefs;

  @override
  Locale build() {
    // 기본 로케일은 시스템 설정을 따름
    return const Locale('ko');
  }

  // 지원하는 로케일 목록
  static const supportedLocales = [
    Locale('ko'), // 한국어
    Locale('en'), // 영어
  ];

  // 로케일 변경
  Future<void> setLocale(Locale locale) async {
    _prefs ??= await SharedPreferences.getInstance();
    await _prefs!.setString(_localeKey, locale.languageCode);
    state = locale;
  }

  // 저장된 로케일 불러오기
  Future<void> loadSavedLocale() async {
    _prefs ??= await SharedPreferences.getInstance();
    final savedLocale = _prefs!.getString(_localeKey);
    if (savedLocale != null) {
      state = Locale(savedLocale);
    }
  }
}

```
## lib/core/theme/foundation/app_color.dart
```dart
part of 'app_theme.dart';

class AppColor {
  const AppColor({
    required this.background,
    required this.surface,
    required this.text,
    required this.hint,
    required this.primary,
    required this.onPrimary,
    required this.error,
    required this.onError,
  });

  final Color background;
  final Color surface;
  final Color text;
  final Color hint;
  final Color primary;
  final Color onPrimary;
  final Color error;
  final Color onError;
}

```
## lib/core/theme/foundation/app_font.dart
```dart
// lib/core/theme/foundation/app_font.dart

part of 'app_theme.dart';

class AppFont {
  AppFont({
    required this.font,
    required this.textColor,
    required this.hintColor,
    required this.onPrimaryColor,
  });

  final Font font;
  final Color textColor;
  final Color hintColor;
  final Color onPrimaryColor;

  // Display - 큰 제목이나 특별한 강조가 필요한 텍스트
  TextStyle get display1 => TextStyle(
        fontFamily: font.name,
        fontSize: 48,
        fontWeight: font.bold,
        color: textColor,
        height: 1.2,
      );

  TextStyle get display2 => TextStyle(
        fontFamily: font.name,
        fontSize: 40,
        fontWeight: font.bold,
        color: textColor,
        height: 1.2,
      );

  // Headline - 섹션 제목이나 중요 텍스트
  TextStyle get headline1 => TextStyle(
        fontFamily: font.name,
        fontSize: 32,
        fontWeight: font.bold,
        color: textColor,
        height: 1.3,
      );

  TextStyle get headline2 => TextStyle(
        fontFamily: font.name,
        fontSize: 28,
        fontWeight: font.bold,
        color: textColor,
        height: 1.3,
      );

  TextStyle get headline3 => TextStyle(
        fontFamily: font.name,
        fontSize: 24,
        fontWeight: font.bold,
        color: textColor,
        height: 1.3,
      );

  // Title - 일반적인 제목
  TextStyle get title1 => TextStyle(
        fontFamily: font.name,
        fontSize: 22,
        fontWeight: font.semiBold,
        color: textColor,
        height: 1.4,
      );

  TextStyle get title2 => TextStyle(
        fontFamily: font.name,
        fontSize: 20,
        fontWeight: font.semiBold,
        color: textColor,
        height: 1.4,
      );

  TextStyle get title3 => TextStyle(
        fontFamily: font.name,
        fontSize: 18,
        fontWeight: font.semiBold,
        color: textColor,
        height: 1.4,
      );

  // Body - 본문 텍스트
  TextStyle get body1 => TextStyle(
        fontFamily: font.name,
        fontSize: 16,
        fontWeight: font.regular,
        color: textColor,
        height: 1.5,
      );

  TextStyle get body1Medium => body1.copyWith(
        fontWeight: font.medium,
      );

  TextStyle get body1SemiBold => body1.copyWith(
        fontWeight: font.semiBold,
      );

  TextStyle get body1Bold => body1.copyWith(
        fontWeight: font.bold,
      );

  TextStyle get body2 => TextStyle(
        fontFamily: font.name,
        fontSize: 14,
        fontWeight: font.regular,
        color: textColor,
        height: 1.5,
      );

  TextStyle get body2Medium => body2.copyWith(
        fontWeight: font.medium,
      );

  TextStyle get body2SemiBold => body2.copyWith(
        fontWeight: font.semiBold,
      );

  TextStyle get body2Bold => body2.copyWith(
        fontWeight: font.bold,
      );

  TextStyle get body3 => TextStyle(
        fontFamily: font.name,
        fontSize: 12,
        fontWeight: font.regular,
        color: textColor,
        height: 1.5,
      );

  TextStyle get body3Medium => body3.copyWith(
        fontWeight: font.medium,
      );

  TextStyle get body3SemiBold => body3.copyWith(
        fontWeight: font.semiBold,
      );

  TextStyle get body3Bold => body3.copyWith(
        fontWeight: font.bold,
      );

  // Caption - 작은 텍스트, 부가 설명
  TextStyle get caption => TextStyle(
        fontFamily: font.name,
        fontSize: 11,
        fontWeight: font.regular,
        color: textColor,
        height: 1.5,
      );

  TextStyle get captionMedium => caption.copyWith(
        fontWeight: font.medium,
      );

  TextStyle get captionSemiBold => caption.copyWith(
        fontWeight: font.semiBold,
      );

  // Button 텍스트
  TextStyle get buttonLarge => TextStyle(
        fontFamily: font.name,
        fontSize: 16,
        fontWeight: font.semiBold,
        color: onPrimaryColor,
        height: 1.5,
      );

  TextStyle get buttonMedium => TextStyle(
        fontFamily: font.name,
        fontSize: 14,
        fontWeight: font.semiBold,
        color: onPrimaryColor,
        height: 1.5,
      );

  TextStyle get buttonSmall => TextStyle(
        fontFamily: font.name,
        fontSize: 12,
        fontWeight: font.semiBold,
        color: onPrimaryColor,
        height: 1.5,
      );

  // Hint 텍스트
  TextStyle get hintLarge => TextStyle(
        fontFamily: font.name,
        fontSize: 16,
        fontWeight: font.regular,
        color: hintColor,
        height: 1.5,
      );

  TextStyle get hintMedium => TextStyle(
        fontFamily: font.name,
        fontSize: 14,
        fontWeight: font.regular,
        color: hintColor,
        height: 1.5,
      );

  TextStyle get hintSmall => TextStyle(
        fontFamily: font.name,
        fontSize: 12,
        fontWeight: font.regular,
        color: hintColor,
        height: 1.5,
      );

  // 유틸리티 메소드
  TextStyle withColor(TextStyle style, Color color) =>
      style.copyWith(color: color);
  TextStyle withWeight(TextStyle style, FontWeight weight) =>
      style.copyWith(fontWeight: weight);
  TextStyle withSize(TextStyle style, double size) =>
      style.copyWith(fontSize: size);
}

```
## lib/core/theme/foundation/app_mode.dart
```dart
part of 'app_theme.dart';

enum AppMode {
  light,
  dark;

  String toJson() => name;

  static AppMode fromJson(String json) {
    return AppMode.values.firstWhere(
      (mode) => mode.name == json,
      orElse: () => AppMode.light,
    );
  }
}

```
## lib/core/theme/foundation/app_theme.dart
```dart
import 'package:flutter/material.dart';
import 'package:pascal/core/theme/resources/font.dart';

part 'app_color.dart';
part 'app_font.dart';
part 'app_mode.dart';

abstract class AppTheme {
  AppMode get mode;
  AppColor get color;
  AppFont get font;

  ThemeData get themeData;
}

```
## lib/core/theme/pages/theme_test_page.dart
```dart
// lib/core/theme/test/theme_test_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pascal/core/localization/pages/locale_test_page.dart';
import 'package:pascal/core/theme/foundation/app_theme.dart';
import 'package:pascal/core/theme/providers/theme_provider.dart';

class ThemeTestPage extends ConsumerWidget {
  const ThemeTestPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.theme;
    final color = theme.color;
    final font = theme.font;

    return Scaffold(
      backgroundColor: color.background,
      appBar: AppBar(
        backgroundColor: color.surface,
        title: Text('테마 테스트', style: font.title1),
        actions: [
          // 로케일 테스트 페이지 이동 버튼
          IconButton(
            icon: Icon(
              Icons.language,
              color: color.text,
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LocaleTestPage(),
              ),
            ),
          ),
          // 테마 토글 버튼
          IconButton(
            icon: Icon(
              theme.mode == AppMode.light ? Icons.dark_mode : Icons.light_mode,
              color: color.text,
            ),
            onPressed: () => ref.read(themeProvider.notifier).toggleTheme(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 색상 섹션
            _buildSection(
              title: '색상 테스트',
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildColorTile('Primary', color.primary),
                  _buildColorTile('Background', color.background),
                  _buildColorTile('Surface', color.surface),
                  _buildColorTile('Text', color.text),
                  _buildColorTile('Hint', color.hint),
                  _buildColorTile('Error', color.error),
                ],
              ),
              font: font,
              color: color,
            ),

            const SizedBox(height: 32),

            // 타이포그래피 섹션
            _buildSection(
              title: '타이포그래피 테스트',
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Title 1', style: font.title1),
                  const SizedBox(height: 8),
                  Text('Body 1 Bold', style: font.body1Bold),
                  const SizedBox(height: 8),
                  Text('Body 1 Medium', style: font.body1Medium),
                  const SizedBox(height: 8),
                  Text('Body 2 Bold', style: font.body2Bold),
                  const SizedBox(height: 8),
                  Text('Hint Text', style: font.hintMedium),
                ],
              ),
              font: font,
              color: color,
            ),

            const SizedBox(height: 32),

            // 컴포넌트 섹션
            _buildSection(
              title: '컴포넌트 테스트',
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 버튼 예시
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: color.primary,
                      foregroundColor: color.onPrimary,
                    ),
                    onPressed: () {},
                    child: const Text('기본 버튼'),
                  ),
                  const SizedBox(height: 16),

                  // 텍스트 필드 예시
                  TextField(
                    decoration: InputDecoration(
                      hintText: '텍스트 입력',
                      hintStyle: font.hintMedium,
                      filled: true,
                      fillColor: color.surface,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // 카드 예시
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: color.surface,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('카드 타이틀', style: font.body1Medium),
                        const SizedBox(height: 8),
                        Text('카드 내용', style: font.body2Medium),
                      ],
                    ),
                  ),
                ],
              ),
              font: font,
              color: color,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required Widget content,
    required AppFont font,
    required AppColor color,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: font.title1),
        const SizedBox(height: 16),
        content,
      ],
    );
  }

  Widget _buildColorTile(String name, Color color) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey.withOpacity(0.2)),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name),
                Text(
                  '#${color.value.toRadixString(16).padLeft(8, '0').toUpperCase()}',
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

```
## lib/core/theme/providers/theme_provider.dart
```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pascal/core/theme/foundation/app_theme.dart';
import 'package:pascal/core/theme/theme/dark_theme.dart';
import 'package:pascal/core/theme/theme/light_theme.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

@Riverpod(dependencies: [])
class Theme extends _$Theme {
  @override
  AppTheme build() {
    return LightTheme();
  }

  void toggleTheme() {
    state = state.mode == AppMode.light ? DarkTheme() : LightTheme();
  }

  void setTheme(AppMode mode) {
    state = mode == AppMode.light ? LightTheme() : DarkTheme();
  }
}

extension ThemeProviderExt on WidgetRef {
  AppTheme get theme => watch(themeProvider);
  AppColor get color => theme.color;
  AppFont get font => theme.font;
  ThemeData get themeData => theme.themeData;
}

```
## lib/core/theme/resources/font.dart
```dart
// lib/core/theme/resources/font.dart

import 'package:flutter/material.dart';

abstract class Font {
  Font({
    required this.name,
    required this.regular,
    required this.medium,
    required this.semiBold,
    required this.bold,
  });

  final String name;
  final FontWeight regular;
  final FontWeight medium;
  final FontWeight semiBold;
  final FontWeight bold;
}

class Pretendard implements Font {
  const Pretendard();

  @override
  final String name = 'Pretendard';

  @override
  final FontWeight regular = FontWeight.w400;

  @override
  final FontWeight medium = FontWeight.w500;

  @override
  final FontWeight semiBold = FontWeight.w600;

  @override
  final FontWeight bold = FontWeight.w700;
}

```
## lib/core/theme/resources/palette.dart
```dart
import 'package:flutter/material.dart';

abstract class Palette {
  // 기본 컬러
  static const Color primary = Color(0xFF2196F3); // 메인 컬러
  static const Color secondary = Color(0xFF03DAC6); // 보조 컬러
  static const Color error = Color(0xFFB00020); // 에러 컬러

  // 라이트 모드 컬러
  static const Color lightBackground = Color(0xFFFFFFFF);
  static const Color lightSurface = Color(0xFFF5F5F5);
  static const Color lightText = Color(0xFF000000);
  static const Color lightHint = Color(0xFF9E9E9E);

  // 다크 모드 컬러
  static const Color darkBackground = Color(0xFF121212);
  static const Color darkSurface = Color(0xFF1E1E1E);
  static const Color darkText = Color(0xFFFFFFFF);
  static const Color darkHint = Color(0xFF757575);
}

```
## lib/core/theme/theme/dark_theme.dart
```dart
import 'package:flutter/material.dart';
import 'package:pascal/core/theme/foundation/app_theme.dart';
import 'package:pascal/core/theme/resources/font.dart';

class DarkTheme implements AppTheme {
  // 싱글톤 패턴 구현
  static final DarkTheme _instance = DarkTheme._internal();
  factory DarkTheme() => _instance;
  DarkTheme._internal() {
    _color = const AppColor(
      background: Color(0xFF1A1A1A),
      surface: Color(0xFF242424),
      text: Color(0xFFF1F1F1),
      hint: Color(0xFF8E8E8E),
      primary: Color(0xFF6C85F2),
      onPrimary: Color(0xFF1A1A1A),
      error: Color(0xFFEF5350),
      onError: Color(0xFF1A1A1A),
    );

    _font = AppFont(
      font: const Pretendard(),
      textColor: _color.text,
      hintColor: _color.hint,
      onPrimaryColor: _color.onPrimary,
    );
  }

  late final AppColor _color;
  late final AppFont _font;

  @override
  AppMode get mode => AppMode.dark;

  @override
  AppColor get color => _color;

  @override
  AppFont get font => _font;

  @override
  ThemeData get themeData => ThemeData(
        brightness: Brightness.dark,
        primaryColor: _color.primary,
        scaffoldBackgroundColor: _color.background,
        colorScheme: ColorScheme.dark(
          primary: _color.primary,
          onPrimary: _color.onPrimary,
          error: _color.error,
          onError: _color.onError,
          surface: _color.surface,
        ),

        // textTheme: TextTheme(
        //   bodyLarge: _font.bodyLarge,
        //   bodyMedium: _font.bodyMedium,
        //   bodySmall: _font.bodySmall,
        //   titleLarge: _font.titleLarge,
        // ),
      );
}

```
## lib/core/theme/theme/light_theme.dart
```dart
import 'package:flutter/material.dart';
import 'package:pascal/core/theme/foundation/app_theme.dart';
import 'package:pascal/core/theme/resources/font.dart';

class LightTheme implements AppTheme {
  // 싱글톤 패턴 구현
  static final LightTheme _instance = LightTheme._internal();
  factory LightTheme() => _instance;
  LightTheme._internal() {
    _color = const AppColor(
      background: Colors.white,
      surface: Color(0xFFF8F9FD),
      text: Color(0xFF2B2B2B),
      hint: Color(0xFF9BA1B3),
      primary: Color(0xFF4F6AF0),
      onPrimary: Colors.white,
      error: Color(0xFFE53935),
      onError: Colors.white,
    );

    _font = AppFont(
      font: const Pretendard(),
      textColor: _color.text,
      hintColor: _color.hint,
      onPrimaryColor: _color.onPrimary,
    );
  }

  late final AppColor _color;
  late final AppFont _font;

  @override
  AppMode get mode => AppMode.light;

  @override
  AppColor get color => _color;

  @override
  AppFont get font => _font;

  @override
  ThemeData get themeData => ThemeData(
        brightness: Brightness.light,
        primaryColor: _color.primary,
        scaffoldBackgroundColor: _color.background,
        colorScheme: ColorScheme.light(
          primary: _color.primary,
          onPrimary: _color.onPrimary,
          error: _color.error,
          onError: _color.onError,
          surface: _color.surface,
        ),
        // textTheme: TextTheme(
        //   bodyLarge: _font.bodyLarge,
        //   bodyMedium: _font.bodyMedium,
        //   bodySmall: _font.bodySmall,
        //   titleLarge: _font.titleLarge,
        // ),
      );
}

```
## lib/main.dart
```dart
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pascal/core/localization/generated/l10n.dart';
import 'package:pascal/core/localization/provider/locale_provider.dart';
import 'package:pascal/core/theme/pages/theme_test_page.dart';
import 'package:pascal/core/theme/providers/theme_provider.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(localeStateProvider);

    final theme = ref.theme;

    return MaterialApp(
      // 로컬라이제이션 설정
      locale: locale,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: LocaleState.supportedLocales,
      title: 'Pascal',
      theme: theme.themeData,
      home: const ThemeTestPage(),
    );
  }
}

```
