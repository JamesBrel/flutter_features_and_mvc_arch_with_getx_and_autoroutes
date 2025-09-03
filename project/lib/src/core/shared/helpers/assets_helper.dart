import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';

import '../../services/supabase/supabase_service.dart';
import '../constants/assets_const.dart';
import '../constants/envs_const.dart';

class AssetsHelper {
  static var _supabaseService = Get.find<SupabaseService>();

  static var _cacheDir = Directory('');
  static var _assetFolder = 'assets ${Envs.env}';
  static var _images = <String>[Assets.splash];
  static var _fonts = <Map<String, String>>[];

  static Future<void> init() async {
    try {
      _cacheDir = await getApplicationDocumentsDirectory();
      var cacheFolder = Directory('${_cacheDir.path}/$_assetFolder');
      if (!await cacheFolder.exists()) {
        await cacheFolder.create(recursive: true);
      }
    } catch (e) {
      debugPrint('Cache initialization error: $e');
      rethrow;
    } finally {
      await preCacheImages();
      await preCacheFonts();
    }
  }

  static String _generateKey(String path) =>
      path.replaceAll(RegExp(r'[^a-zA-Z0-9_]'), '_');

  static Future<File> _getFile(String path) async {
    var filename = _generateKey(path);
    return File('${_cacheDir.path}/$_assetFolder/$filename');
  }

  static Future<File> _downloadAsset(String path) async {
    var file = await _getFile(path);

    if (await file.exists()) {
      return file;
    } else if (Envs.env == 'dev') {
      var byteData = await rootBundle.load('$_assetFolder/$path');
      await file.writeAsBytes(byteData.buffer.asUint8List());
      return file;
    } else {
      var response = await _supabaseService.download(
        folderName: 'assets',
        path: path,
      );
      await file.writeAsBytes(response);
      return file;
    }
  }

  static Future<void> preCacheImages() async {
    if (_images.isNotEmpty) {
      for (var image in _images) {
        await _downloadAsset(image);
      }
    }
  }

  static Future<void> preCacheFonts() async {
    if (_fonts.isNotEmpty) {
      for (var font in _fonts) {
        var path = font['path'];
        var family = font['family'];

        var file = await _downloadAsset(path as String);
        var loader = FontLoader(family as String)..addFont(
          file.readAsBytes().then((bytes) => ByteData.view(bytes.buffer)),
        );
        await loader.load();
      }
    }
  }

  // Pour les images (JPG/PNG/SVG)
  static Widget getCachedImage(
    String path, {
    Widget Function(File file)? builder,
  }) {
    return FutureBuilder<File>(
      future: _downloadAsset(path),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return builder!(snapshot.data!);
        } else if (snapshot.hasError) {
          return _buildErrorWidget();
        }
        return _buildPlaceholder();
      },
    );
  }

  // Pour les SVG
  //  Widget getCachedSvg(
  //   String path, {
  //   double? width,
  //   double? height,
  //   ColorFilter? color,
  // }) {
  //   return FutureBuilder<File>(
  //     future: _downloadAsset(path),
  //     builder: (context, snapshot) {
  //       if (snapshot.hasData) {
  //         return SvgPicture.file(
  //           snapshot.data!,
  //           width: width,
  //           height: height,
  //           colorFilter: color,
  //         );
  //       } else if (snapshot.hasError) {
  //         return _buildErrorWidget();
  //       }
  //       return _buildPlaceholder();
  //     },
  //   );
  // }

  static Widget _buildPlaceholder() => SizedBox.shrink();
  static Widget _buildErrorWidget() =>
      Icon(Icons.error_outline, color: Colors.red);

  static Future<void> clearCache() async {
    final dir = Directory('${_cacheDir.path}/$_assetFolder');
    if (await dir.exists()) await dir.delete(recursive: true);
    await init();
  }
}
