// import 'package:flutter/material.dart';
// import 'package:image_cropper/image_cropper.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:injectable/injectable.dart';

// @singleton
// class ImageRequest {
//   final ImagePicker _imagePicker;
//   final ImageCropper _imageCropper;

//   ImageRequest(this._imagePicker, this._imageCropper);

//   Future<String> takeImage({
//     required ImageSource source,
//     bool isCrop = true,
//   }) async {
//     try {
//       var media = await _imagePicker.pickImage(
//         source: source,
//         imageQuality: 80,
//         maxWidth: 512,
//         maxHeight: 512,
//       );
//       if (isCrop) {
//         var mediaCropped = await _imageCropper.cropImage(
//           sourcePath: media!.path,
//           compressFormat: ImageCompressFormat.png,
//           compressQuality: 80,
//           uiSettings: [
//             AndroidUiSettings(
//               toolbarColor: const Color.fromRGBO(0, 0, 0, 1),
//               toolbarWidgetColor: const Color.fromRGBO(255, 255, 255, 1),
//               lockAspectRatio: false,
//               aspectRatioPresets: [
//                 CropAspectRatioPreset.square,
//                 CropAspectRatioPreset.ratio3x2,
//                 CropAspectRatioPreset.original,
//                 CropAspectRatioPreset.ratio4x3,
//                 CropAspectRatioPreset.ratio16x9,
//               ],
//             ),
//             IOSUiSettings(
//               aspectRatioPresets: [
//                 CropAspectRatioPreset.original,
//                 CropAspectRatioPreset.square,
//                 CropAspectRatioPreset.ratio3x2,
//                 CropAspectRatioPreset.ratio4x3,
//                 CropAspectRatioPreset.ratio5x3,
//                 CropAspectRatioPreset.ratio5x4,
//                 CropAspectRatioPreset.ratio7x5,
//                 CropAspectRatioPreset.ratio16x9,
//               ],
//             ),
//           ],
//         );
//         return mediaCropped!.path;
//       }
//       return media!.path;
//     } catch (e) {
//       print(e);
//       rethrow;
//     }
//   }
// }
