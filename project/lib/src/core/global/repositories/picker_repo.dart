// todo :  remove the comment marks once to enable this file

// import 'package:flutter/material.dart';
// import 'package:multiple_result/multiple_result.dart';

// import '../../../services/files_picker/requests/single_pick_request.dart';
// import '../../../services/image/requests/image_camera_request.dart';
// import '../../../services/image/requests/image_copper_request.dart';
// import '../../../services/image/requests/image_gallery_request.dart';

// class PickerRepo {
//   Future<Result<String, void>> pickCameraImage({
//     required BuildContext ctx,
//   }) {
//     return ImageCameraRequest.cameraImage().then((_cameraImage) {
//       return ImageCropperRequest.cropImage(
//         context: ctx,
//         mediaImagePath: _cameraImage,
//       ).then((imagecropped) {
//         return Result.success(imagecropped);
//       });
//     });
//   }

//   Future<Result<String, void>> pickGalleryImage({
//     required BuildContext ctx,
//   }) {
//     return ImageGalleryRequest.galleryImage().then((_galleryImage) {
//       return ImageCropperRequest.cropImage(
//         context: ctx,
//         mediaImagePath: _galleryImage,
//       ).then((imagecropped) {
//         return Result.success(imagecropped);
//       });
//     });
//   }

//   Future<Result<Map<String, String>, void>> pickTheFile() {
//     return SinglePickRequest.singleFile().then((_filePath) {
//       var _filePathData = RegExp(r'\.(jpg|jpeg|png|gif)$', caseSensitive: false)
//               .hasMatch(_filePath)
//           ? {'fileType': 'image', 'filePath': _filePath}
//           : RegExp(r'\.(mp4|mov|avi)$', caseSensitive: false)
//                   .hasMatch(_filePath)
//               ? {'fileType': 'video', 'filePath': _filePath}
//               : RegExp(r'\.(mp3|wav|aac)$', caseSensitive: false)
//                       .hasMatch(_filePath)
//                   ? {'fileType': 'audio', 'filePath': _filePath}
//                   : {
//                       'fileType': 'document',
//                       'filePath': _filePath
//                     }; // todo : je vais l'améliorer plustard

//       return Result.success(_filePathData);
//     });
//   }
// }
