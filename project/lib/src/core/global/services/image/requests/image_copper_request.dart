// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:image_cropper/image_cropper.dart';

// import '../configs/image_instance.dart';
// import '../messages/note_message.dart';

// class ImageCropperRequest {
//   ImageCropperRequest._();

//   static Future<String> cropImage({
//     required BuildContext context,
//     required String mediaImagePath,
//   }) {
//     return imageCropper.cropImage(
//         sourcePath: mediaImagePath,
//         compressFormat: ImageCompressFormat.png,
//         compressQuality: 80,
//         uiSettings: [
//           AndroidUiSettings(
//             toolbarTitle: cropImageTitle.tr,
//             toolbarColor: const Color.fromRGBO(0, 0, 0, 1),
//             toolbarWidgetColor: const Color.fromRGBO(255, 255, 255, 1),
//             lockAspectRatio: false,
//             aspectRatioPresets: [
//               CropAspectRatioPreset.square,
//               CropAspectRatioPreset.ratio3x2,
//               CropAspectRatioPreset.original,
//               CropAspectRatioPreset.ratio4x3,
//               CropAspectRatioPreset.ratio16x9
//             ],
//           ),
//           IOSUiSettings(
//             title: cropImageTitle.tr,
//             doneButtonTitle: cropDone.tr,
//             cancelButtonTitle: cropCancel.tr,
//             aspectRatioPresets: [
//               CropAspectRatioPreset.original,
//               CropAspectRatioPreset.square,
//               CropAspectRatioPreset.ratio3x2,
//               CropAspectRatioPreset.ratio4x3,
//               CropAspectRatioPreset.ratio5x3,
//               CropAspectRatioPreset.ratio5x4,
//               CropAspectRatioPreset.ratio7x5,
//               CropAspectRatioPreset.ratio16x9
//             ],
//           ),
//         ]).then<String>(
//       (imageCropped) => imageCropped!.path,
//     );
//   }
// }
