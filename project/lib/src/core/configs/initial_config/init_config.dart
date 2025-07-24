import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:gadgets/gadgets.dart';

import '../../tools/packages/dio/http_overrides_helper.dart';

class InitConfig {
  static void initialize({
    required VoidCallback onComplete,
    required ValueChanged<double>? onProgress,
  }) async {
    var stopwatch = Stopwatch()..start();

    try {
      //* Phase 1: Initialisations critiques parallèles
      await _runParallelTasks([
        // _initSupabase,
        // _initFirebase,
        // _initHive,
        // _initRestartApp,
        // _initWindows,
        _initOrientation,
      ], onProgress: onProgress);

      //* Phase 2: Initialisations séquentielles
      await _runSequentialTasks([
        // _initDependencies,
        // _precacheCriticalAssets,
        // _loadAppConfig,
        // _setupAnalytics,
        // _initLanguageLocalization,
        _warmupHttpClient,
      ], onProgress: onProgress);

      //* Phase 3: Initialisations non-bloquantes
      _runBackgroundTasks([
        // _syncUserData,
        // _checkForUpdates,
        // _precacheSecondaryAssets,
      ]);
    } catch (e, _) {
      LogKit.errorLog('Initialization failed');

      rethrow;
    } finally {
      stopwatch.stop();
      LogKit.infoLog('Initialization completed in ${stopwatch.elapsed}');

      onComplete();
    }
  }

  //*--------------------------------------------------
  //* Méthodes d'initialisation
  //*--------------------------------------------------

  // static Future<void> _initSupabase() async {
  //   LogKit.infoLog('Initializing Supabase...');
  //   await SupabaseConfig.instance.init();
  // }

  // static Future<void> _initFirebase() async {
  //   _logger.i('Initializing Firebase...');
  //   await FirebaseConfig.init(
  //     env: EnvPath.env,
  //   );
  // }

  // static Future<void> _initHive() async {
  //   _logger.i('Initializing Hive...');
  //   await Hive.initFlutter();
  //   await Hive.openBox('userSettings');
  // }

  // static Future<void> _initRestartApp() async {
  //   _logger.i('Initializing Restarting app...');
  //   TerminateRestart.instance.initialize();
  // }

  // static Future<void> _initWindows() async {
  //   _logger.i('Initializing Window...');
  //   // WindowConfig.windowsInit();
  // }

  static Future<void> _initOrientation() async {
    LogKit.infoLog('Initializing Orientation...');

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  // static Future<void> _precacheCriticalAssets() async {
  //   LogKit.infoLog('Precaching assets...');
  //   await AssetsHelper.init();
  //   await AssetsHelper.preCacheFontsAssets();
  //   await AssetsHelper.preCacheImagesAssets();
  // }

  // static Future<void> _loadAppConfig() async {
  //   _logger.i('Loading app config...');
  //   // Charger la configuration depuis API/Supabase
  //   await Future.delayed(const Duration(milliseconds: 200));
  // }

  // static Future<void> _setupAnalytics() async {
  //   _logger.i('Setting up analytics...');
  //   // Initialisation des outils d'analytics
  // }

  // static Future<void> _initLanguageLocalization() async {
  //   _logger.i('Initializing localization...');
  //   // Charger les traductions
  // }

  static Future<void> _warmupHttpClient() async {
    LogKit.infoLog('Warming up HTTP client...');
    HttpOverrides.global = new HttpOverridesHelper();
  }

  // static Future<void> _initDependencies() async {
  //   LogKit.infoLog('Injecting all dependencies...');
  //   await dependencies();
  // }

  //*--------------------------------------------------
  //* Tâches en arrière-plan
  //*--------------------------------------------------

  static void _runBackgroundTasks(List<AsyncCallback> tasks) {
    for (var task in tasks) {
      task().catchError((e) => LogKit.errorLog('Background task failed: $e'));
    }
  }

  // static Future<void> _syncUserData() async {
  //   _logger.i('Syncing user data...');
  //   // Synchronisation silencieuse
  // }

  // static Future<void> _checkForUpdates() async {
  //   _logger.i('Checking for updates...');
  //   // if (!kIsWeb) {
  //   //   CheckNewUpdatesRequest.checkTheUpdates();
  //   // }
  // }

  // static Future<void> _precacheSecondaryAssets() async {
  //   _logger.i('Precaching secondary assets...');
  //   // Assets non-critiques
  // }

  //*--------------------------------------------------
  //* Utilitaires d'exécution
  //*--------------------------------------------------

  static Future<void> _runParallelTasks(
    List<AsyncCallback> tasks, {
    ValueChanged<double>? onProgress,
  }) async {
    var total = tasks.length;
    var completed = 0;

    await Future.wait(
      tasks.map((task) async {
        try {
          await task();
          completed++;
          onProgress?.call(completed / total * 0.5); // 50% pour cette phase
        } catch (e) {
          LogKit.errorLog('Parallel task failed: $e');

          rethrow;
        }
      }),
    );
  }

  static Future<void> _runSequentialTasks(
    List<AsyncCallback> tasks, {
    ValueChanged<double>? onProgress,
  }) async {
    var total = tasks.length;
    var completed = 0;
    var startProgress = 0.5;

    for (var task in tasks) {
      try {
        await task();
        completed++;
        var progress = startProgress + (completed / total * 0.5);
        onProgress?.call(progress);
      } catch (e) {
        LogKit.errorLog('Sequential task failed: $e');

        rethrow;
      }
    }
  }
}
