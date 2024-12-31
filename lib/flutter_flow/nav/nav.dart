import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier, [Widget? entryPage]) =>
    GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) => appStateNotifier.loggedIn
          ? entryPage ?? NavBarPage()
          : LoginPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? entryPage ?? NavBarPage()
              : LoginPageWidget(),
          routes: [
            FFRoute(
              name: 'login_page',
              path: 'login',
              builder: (context, params) => LoginPageWidget(),
            ),
            FFRoute(
              name: 'forget_password_page',
              path: 'forget_password',
              builder: (context, params) => ForgetPasswordPageWidget(),
            ),
            FFRoute(
              name: 'register_page',
              path: 'register',
              builder: (context, params) => RegisterPageWidget(),
            ),
            FFRoute(
              name: 'home_page',
              path: 'home',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'home_page')
                  : HomePageWidget(),
            ),
            FFRoute(
              name: 'pgSign-NotUse',
              path: 'pgSignNotUse',
              builder: (context, params) => PgSignNotUseWidget(
                btnSaveBG: params.getParam(
                  'btnSaveBG',
                  ParamType.Color,
                ),
                contBGColor: params.getParam(
                  'contBGColor',
                  ParamType.Color,
                ),
              ),
            ),
            FFRoute(
              name: 'report_page',
              path: 'reports',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'report_page')
                  : ReportPageWidget(),
            ),
            FFRoute(
              name: 'PageDocuments',
              path: 'documents',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'PageDocuments')
                  : PageDocumentsWidget(
                      allTab: params.getParam(
                        'allTab',
                        ParamType.int,
                      ),
                      subFileId: params.getParam<int>(
                        'subFileId',
                        ParamType.int,
                        isList: true,
                      ),
                      subFolderId: params.getParam<int>(
                        'subFolderId',
                        ParamType.int,
                        isList: true,
                      ),
                    ),
            ),
            FFRoute(
              name: 'pgSignEdit-NotUse',
              path: 'pgSignEditNotUse',
              builder: (context, params) => PgSignEditNotUseWidget(
                isSignMyself: params.getParam(
                  'isSignMyself',
                  ParamType.bool,
                ),
                moreAction: params.getParam(
                  'moreAction',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: 'PageHome_20240912211400',
              path: 'pageHome_20240912211400',
              builder: (context, params) => PageHome20240912211400Widget(),
            ),
            FFRoute(
              name: 'PageWorkflowProcess',
              path: 'document_flow_process',
              builder: (context, params) => PageWorkflowProcessWidget(
                isDocUpload: params.getParam(
                  'isDocUpload',
                  ParamType.bool,
                ),
                docUploaded: params.getParam(
                  'docUploaded',
                  ParamType.String,
                ),
                docName: params.getParam(
                  'docName',
                  ParamType.String,
                ),
                msgDesC: params.getParam(
                  'msgDesC',
                  ParamType.String,
                ),
                receiveN: params.getParam(
                  'receiveN',
                  ParamType.String,
                ),
                sendN: params.getParam(
                  'sendN',
                  ParamType.String,
                ),
                sensitivity: params.getParam(
                  'sensitivity',
                  ParamType.int,
                ),
                priority: params.getParam(
                  'priority',
                  ParamType.int,
                ),
              ),
            ),
            FFRoute(
              name: 'PageReportsV1',
              path: 'pageReportsV1',
              builder: (context, params) => PageReportsV1Widget(),
            ),
            FFRoute(
              name: 'PageHome_20240913140500',
              path: 'pageHome20240913140500',
              builder: (context, params) => PageHome20240913140500Widget(),
            ),
            FFRoute(
              name: 'Overview',
              path: 'overview',
              builder: (context, params) => OverviewWidget(),
            ),
            FFRoute(
              name: 'PageReportsActivityLog',
              path: 'pageReportsActivityLog',
              builder: (context, params) => PageReportsActivityLogWidget(),
            ),
            FFRoute(
              name: 'PageReportsV2',
              path: 'pageReportsV2',
              builder: (context, params) => PageReportsV2Widget(),
            ),
            FFRoute(
              name: 'Home',
              path: 'home_guid',
              builder: (context, params) => HomeWidget(),
            ),
            FFRoute(
              name: 'setting_page',
              path: 'settings',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'setting_page')
                  : SettingPageWidget(),
            ),
            FFRoute(
              name: 'account_setting_page',
              path: 'account_setting',
              builder: (context, params) => AccountSettingPageWidget(
                customDateFormat: params.getParam<String>(
                  'customDateFormat',
                  ParamType.String,
                  isList: true,
                ),
              ),
            ),
            FFRoute(
              name: 'PageReportsV318',
              path: 'pageReportsV318',
              builder: (context, params) => PageReportsV318Widget(),
            ),
            FFRoute(
              name: 'landing_page',
              path: 'landing',
              builder: (context, params) => LandingPageWidget(),
            ),
            FFRoute(
              name: 'PageHomev1180924',
              path: 'pageHomev1180924',
              builder: (context, params) => PageHomev1180924Widget(),
            ),
            FFRoute(
              name: 'PageWorkflowActions',
              path: 'workflow_actions',
              builder: (context, params) => PageWorkflowActionsWidget(
                btnSaveBG: params.getParam(
                  'btnSaveBG',
                  ParamType.Color,
                ),
                actionInSign: params.getParam(
                  'actionInSign',
                  ParamType.String,
                ),
                checkTermCondition: params.getParam(
                  'checkTermCondition',
                  ParamType.bool,
                ),
                documentName: params.getParam(
                  'documentName',
                  ParamType.String,
                ),
                documentURL: params.getParam(
                  'documentURL',
                  ParamType.String,
                ),
                documentId: params.getParam(
                  'documentId',
                  ParamType.int,
                ),
              ),
            ),
            FFRoute(
              name: 'notification_page',
              path: 'notifications',
              builder: (context, params) => NotificationPageWidget(),
            ),
            FFRoute(
              name: 'PageMainWorkflow',
              path: 'document_flow',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'PageMainWorkflow')
                  : PageMainWorkflowWidget(
                      isSeenEmail: params.getParam(
                        'isSeenEmail',
                        ParamType.bool,
                      ),
                      tabIndex: params.getParam(
                        'tabIndex',
                        ParamType.int,
                      ),
                    ),
            ),
            FFRoute(
              name: 'configuration_setting_page',
              path: 'configuration_setting',
              builder: (context, params) => ConfigurationSettingPageWidget(
                customDateFormat: params.getParam<String>(
                  'customDateFormat',
                  ParamType.String,
                  isList: true,
                ),
                tabindexlist: params.getParam(
                  'tabindexlist',
                  ParamType.int,
                ),
                departmentname: params.getParam(
                  'departmentname',
                  ParamType.String,
                ),
                isclicked: params.getParam(
                  'isclicked',
                  ParamType.bool,
                ),
              ),
            ),
            FFRoute(
              name: 'PagePreviewDocument',
              path: 'preview_document',
              builder: (context, params) => PagePreviewDocumentWidget(
                docName: params.getParam(
                  'docName',
                  ParamType.String,
                ),
                docURL: params.getParam(
                  'docURL',
                  ParamType.String,
                ),
                tabindex: params.getParam(
                  'tabindex',
                  ParamType.int,
                ),
              ),
            ),
            FFRoute(
              name: 'PageHomev2230924',
              path: 'pageHomev2230924',
              builder: (context, params) => PageHomev2230924Widget(),
            ),
            FFRoute(
              name: 'PagePrepareSignature',
              path: 'prepare_signature',
              builder: (context, params) => PagePrepareSignatureWidget(
                docUploadedId: params.getParam(
                  'docUploadedId',
                  ParamType.String,
                ),
                docName: params.getParam(
                  'docName',
                  ParamType.String,
                ),
                isSignMyself: params.getParam(
                  'isSignMyself',
                  ParamType.bool,
                ),
                isFromMain: params.getParam(
                  'isFromMain',
                  ParamType.bool,
                ),
                validateDate: params.getParam(
                  'validateDate',
                  ParamType.DateTime,
                ),
                selectedFolder: params.getParam(
                  'selectedFolder',
                  ParamType.String,
                ),
                msgDescription: params.getParam(
                  'msgDescription',
                  ParamType.String,
                ),
                receiveNO: params.getParam(
                  'receiveNO',
                  ParamType.String,
                ),
                sendNO: params.getParam(
                  'sendNO',
                  ParamType.String,
                ),
                priority: params.getParam(
                  'priority',
                  ParamType.int,
                ),
                sensitivity: params.getParam(
                  'sensitivity',
                  ParamType.int,
                ),
              ),
            ),
            FFRoute(
              name: 'account_management_page',
              path: 'account_management',
              builder: (context, params) => AccountManagementPageWidget(
                customDateFormat: params.getParam<String>(
                  'customDateFormat',
                  ParamType.String,
                  isList: true,
                ),
              ),
            ),
            FFRoute(
              name: 'pageDocumentUploadOnly',
              path: 'pageDocumentUploadOnly',
              builder: (context, params) => PageDocumentUploadOnlyWidget(
                allTab: params.getParam(
                  'allTab',
                  ParamType.int,
                ),
                docs: params.getParam(
                  'docs',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: 'PageReportsv427',
              path: 'pageReportsv427',
              builder: (context, params) => PageReportsv427Widget(),
            ),
            FFRoute(
              name: 'home_page_20241004134500',
              path: 'homePage20241004134500',
              builder: (context, params) => HomePage20241004134500Widget(),
            ),
            FFRoute(
              name: 'user_authorization',
              path: 'userAuthorization',
              builder: (context, params) => UserAuthorizationWidget(),
            ),
            FFRoute(
              name: 'Customization_page',
              path: 'customizationPage',
              builder: (context, params) => CustomizationPageWidget(),
            ),
            FFRoute(
              name: 'pageDocumentUpload',
              path: 'pageDocumentUpload',
              builder: (context, params) => PageDocumentUploadWidget(
                isDocUpload: params.getParam(
                  'isDocUpload',
                  ParamType.bool,
                ),
                docUploaded: params.getParam(
                  'docUploaded',
                  ParamType.String,
                ),
                docName: params.getParam(
                  'docName',
                  ParamType.String,
                ),
                msgDesC: params.getParam(
                  'msgDesC',
                  ParamType.String,
                ),
                receiveN: params.getParam(
                  'receiveN',
                  ParamType.String,
                ),
                sendN: params.getParam(
                  'sendN',
                  ParamType.String,
                ),
                sensitivity: params.getParam(
                  'sensitivity',
                  ParamType.int,
                ),
                priority: params.getParam(
                  'priority',
                  ParamType.int,
                ),
              ),
            ),
            FFRoute(
              name: 'configuration_page_backup',
              path: 'configuration_setting_backup',
              builder: (context, params) => ConfigurationPageBackupWidget(
                customDateFormat: params.getParam<String>(
                  'customDateFormat',
                  ParamType.String,
                  isList: true,
                ),
                tabindexlist: params.getParam(
                  'tabindexlist',
                  ParamType.int,
                ),
                departmentname: params.getParam(
                  'departmentname',
                  ParamType.String,
                ),
                isclicked: params.getParam(
                  'isclicked',
                  ParamType.bool,
                ),
              ),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
