// import 'package:file_picker/file_picker.dart';
// import 'package:get/get.dart';

// class FilesPickerService extends GetxService {
//   final FilePicker _filePicker;

//   FilesPickerService(this._filePicker);

//   Future<T> takeFiles<T>({bool isMultipleFile = false}) async {
//     try {
//       var _file = await _filePicker.pickFiles(
//         allowMultiple: isMultipleFile,
//         compressionQuality: 80,
//         type: FileType.custom,
//         allowedExtensions: [
//           'jpg',
//           'png',
//           'jpeg',
//           'mp4',
//           'mov',
//           'avi',
//           'gif',
//           'mp3',
//           'wav',
//           'aac',
//           'pdf',
//         ],
//       );
//       return isMultipleFile
//           ? _file!.files.map((file) => file.path).toList() as T
//           : _file!.files.single.path! as T;
//     } catch (_) {
//       rethrow;
//     }
//   }
// }
