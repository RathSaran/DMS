import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:d_m_s_s_y_s_t_e_m_automate_test/flutter_flow/flutter_flow_drop_down.dart';
import 'package:d_m_s_s_y_s_t_e_m_automate_test/flutter_flow/flutter_flow_icon_button.dart';
import 'package:d_m_s_s_y_s_t_e_m_automate_test/flutter_flow/flutter_flow_radio_button.dart';
import 'package:d_m_s_s_y_s_t_e_m_automate_test/flutter_flow/flutter_flow_widgets.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:d_m_s_s_y_s_t_e_m_automate_test/index.dart';
import 'package:d_m_s_s_y_s_t_e_m_automate_test/main.dart';
import 'package:d_m_s_s_y_s_t_e_m_automate_test/flutter_flow/flutter_flow_util.dart';

import 'package:provider/provider.dart';
import 'package:d_m_s_s_y_s_t_e_m_automate_test/backend/firebase/firebase_config.dart';

import 'package:d_m_s_s_y_s_t_e_m_automate_test/backend/supabase/supabase.dart';
import 'package:d_m_s_s_y_s_t_e_m_automate_test/auth/supabase_auth/auth_util.dart';

import 'package:d_m_s_s_y_s_t_e_m_automate_test/backend/supabase/supabase.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    await initFirebase();
    await SupaFlow.initialize();

    await FlutterFlowTheme.initialize();
  });

  setUp(() async {
    await authManager.signOut();
    FFAppState.reset();
    final appState = FFAppState();
    await appState.initializePersistedState();
  });

  group('Login', () {
    testWidgets('Login with Valid Credentials', (WidgetTester tester) async {
      _overrideOnError();

      await tester.pumpWidget(MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => FFAppState(),
          ),
        ],
        child: MyApp(
          entryPage: LoginPageWidget(),
        ),
      ));

      await tester.pumpAndSettle();
      await tester.enterText(find.byKey(ValueKey('emailAddress_na8l')),
          'sovathvong.phoung@oone.bz');
      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(ValueKey('password_oblr')), 'P123@admin');
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(ValueKey('Button-Login_61ul')));
      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('Column_xgfb')), findsOneWidget);
      await tester.pumpAndSettle();
      await tester.tap(find.text('Documents'));
      await tester.pumpAndSettle();
    });
  });

  group('Saran', () {
    group('Home page', () {});

    testWidgets('loginpage verify', (WidgetTester tester) async {
      _overrideOnError();

      await tester.pumpWidget(MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => FFAppState(),
          ),
        ],
        child: MyApp(),
      ));

      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('emailAddress_na8l')), findsOneWidget);
      expect(find.byKey(ValueKey('password_oblr')), findsOneWidget);
      expect(find.byKey(ValueKey('Button-Login_61ul')), findsOneWidget);
      await tester.pumpAndSettle();
    });

    testWidgets('Validate home page', (WidgetTester tester) async {
      _overrideOnError();

      await tester.pumpWidget(MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => FFAppState(),
          ),
        ],
        child: MyApp(
          entryPage: LoginPageWidget(),
        ),
      ));

      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(ValueKey('emailAddress_na8l')), 'saranrath33@gmail.com');
      await tester.enterText(
          find.byKey(ValueKey('password_oblr')), 'Rsaran@123');
      await tester.tap(find.byKey(ValueKey('Button-Login_61ul')));
      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('Text_fwpd')), findsWidgets);
      expect(find.byKey(ValueKey('Text_7avc')), findsWidgets);
      expect(find.byKey(ValueKey('Text_hm7f')), findsWidgets);
      expect(find.byKey(ValueKey('Text_mifi')), findsWidgets);
      await tester.pumpAndSettle();
    });

    testWidgets('View All doc from click form dashboard',
        (WidgetTester tester) async {
      _overrideOnError();

      await tester.pumpWidget(MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => FFAppState(),
          ),
        ],
        child: MyApp(
          entryPage: LoginPageWidget(),
        ),
      ));

      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(ValueKey('emailAddress_na8l')), 'saranrath33@gmail.com');
      await tester.enterText(
          find.byKey(ValueKey('password_oblr')), 'Rsaran@123');
      await tester.tap(find.byKey(ValueKey('Button-Login_61ul')));
      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('Text_fwpd')), findsWidgets);
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(ValueKey('Row_vh2c')));
      await tester.pumpAndSettle(Duration(milliseconds: 10000));
      expect(find.byKey(ValueKey('TabAll_fayl')), findsWidgets);
      await tester.pumpAndSettle();
    });

    testWidgets('Login to home page', (WidgetTester tester) async {
      _overrideOnError();

      await tester.pumpWidget(MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => FFAppState(),
          ),
        ],
        child: MyApp(),
      ));

      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(ValueKey('emailAddress_na8l')), 'saranrath33@gmail.com');
      await tester.enterText(
          find.byKey(ValueKey('password_oblr')), 'Rsaran@123');
      await tester.tap(find.byKey(ValueKey('Button-Login_61ul')));
      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('PageHeader_vepg')), findsOneWidget);
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(ValueKey('userProfile')));
      await tester.pumpAndSettle(Duration(milliseconds: 5000));
      await tester.tap(find.text('Log out'));
      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('Text_rsdh')), findsOneWidget);
      await tester.pumpAndSettle();
    });

    testWidgets('Sign page', (WidgetTester tester) async {
      _overrideOnError();

      await tester.pumpWidget(MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => FFAppState(),
          ),
        ],
        child: MyApp(),
      ));

      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(ValueKey('emailAddress_na8l')), 'saranrath33@gmail.com');
      await tester.enterText(
          find.byKey(ValueKey('password_oblr')), 'Rsaran@123');
      await tester.tap(find.byKey(ValueKey('Button-Login_61ul')));
      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('PageHeader_vepg')), findsOneWidget);
      await tester.pumpAndSettle();
      await tester.tap(find.text('Documents'));
      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('PageHeader_llvu')), findsOneWidget);
      await tester.tap(find.descendant(
        of: find.byType(ListView),
        matching: find.byKey(ValueKey('1')),
      ));
      await tester.pumpAndSettle(
        Duration(milliseconds: 10000),
        EnginePhase.sendSemanticsUpdate,
        Duration(milliseconds: 40000),
      );
      expect(find.text('Sign'), findsOneWidget);
      await tester.tap(find.text('Sign'));
      await tester.pumpAndSettle();
    });

    testWidgets('Create Folder', (WidgetTester tester) async {
      _overrideOnError();

      await tester.pumpWidget(MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => FFAppState(),
          ),
        ],
        child: MyApp(),
      ));

      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(ValueKey('emailAddress_na8l')), 'saranrath33@gmail.com');
      await tester.enterText(
          find.byKey(ValueKey('password_oblr')), 'Rsaran@123');
      await tester.tap(find.byKey(ValueKey('Button-Login_61ul')));
      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('PageHeader_vepg')), findsOneWidget);
      await tester.pumpAndSettle();
      await tester.tap(find.text('Documents'));
      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('PageHeader_llvu')), findsOneWidget);
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(ValueKey('ContainerUpload_h44d')));
      await tester.pumpAndSettle();
      expect(find.text('New Folder'), findsOneWidget);
      await tester.pumpAndSettle();
      await tester.tap(find.text('New Folder'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Create'));
      await tester.pumpAndSettle();
    });

    testWidgets('Delete Folder', (WidgetTester tester) async {
      _overrideOnError();

      await tester.pumpWidget(MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => FFAppState(),
          ),
        ],
        child: MyApp(),
      ));

      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(ValueKey('emailAddress_na8l')), 'saranrath33@gmail.com');
      await tester.enterText(
          find.byKey(ValueKey('password_oblr')), 'Rsaran@123');
      await tester.tap(find.byKey(ValueKey('Button-Login_61ul')));
      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('PageHeader_vepg')), findsOneWidget);
      await tester.pumpAndSettle();
      await tester.tap(find.text('Documents'));
      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('PageHeader_llvu')), findsOneWidget);
      await tester.tap(find.descendant(
        of: find.byType(ListView),
        matching: find.byKey(ValueKey('0')),
      ));
      await tester.pumpAndSettle(
        Duration(milliseconds: 10000),
        EnginePhase.sendSemanticsUpdate,
        Duration(milliseconds: 40000),
      );
      expect(find.text('Delete'), findsOneWidget);
      await tester.tap(find.text('Delete'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Delete'));
      await tester.pumpAndSettle(Duration(milliseconds: 10000));
      await tester.tap(find.descendant(
        of: find.byKey(ValueKey('sidebar_5ytp')),
        matching: find.text('Documents'),
      ));
      await tester.pumpAndSettle(Duration(milliseconds: 10000));
    });
  });
}

// There are certain types of errors that can happen during tests but
// should not break the test.
void _overrideOnError() {
  final originalOnError = FlutterError.onError!;
  FlutterError.onError = (errorDetails) {
    if (_shouldIgnoreError(errorDetails.toString())) {
      return;
    }
    originalOnError(errorDetails);
  };
}

bool _shouldIgnoreError(String error) {
  // It can fail to decode some SVGs - this should not break the test.
  if (error.contains('ImageCodecException')) {
    return true;
  }
  // Overflows happen all over the place,
  // but they should not break tests.
  if (error.contains('overflowed by')) {
    return true;
  }
  // Sometimes some images fail to load, it generally does not break the test.
  if (error.contains('No host specified in URI') ||
      error.contains('EXCEPTION CAUGHT BY IMAGE RESOURCE SERVICE')) {
    return true;
  }
  // These errors should be avoided, but they should not break the test.
  if (error.contains('setState() called after dispose()')) {
    return true;
  }

  return false;
}
