import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pascal/features/common/localization/generated/l10n.dart';
import 'package:pascal/features/common/localization/provider/locale_provider.dart';
import 'package:pascal/features/common/theme/pages/theme_test_page.dart';
import 'package:pascal/features/common/theme/providers/theme_provider.dart';

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
