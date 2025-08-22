# Flutter Mobile : MVC And Feature Architecture

### Author : James Brel

### Alias : The Coder

### Contact : thecoder38@gmail.com
---

<img src="img/flutter.png" alt="logo" width="200" height="200">

---
## Architecture 
   the architecture of each feature is based on the MVC :
   - Controllers
   - Models
   - Views

```
📦features
 ┗ 📂greeting
 ┃ ┣ 📂controllers
 ┃ ┗ 📂models
 ┃ ┗ 📂views
```

## Usage and Configuration

Once you have created your application or flutter project, you clone the architecture from Github, to start on a good basis

Note: 
the predefined files, such as welcome.dart in the front end and other folders, as well as example_test file, are only files that will allow you to be on the right track and to get a good understanding of the architecture.

 - <span style="color:yellow">step_1</span>: Installation of pre_packages for pre-launch
    Inside the pubspec.yaml file, you must integrate firstly the following dependencies : 

   ```yaml
   -----------SeUp Dependencies------------
   intl: ^last version
   icons_launcher: ^last version
   flutter_screenutil: ^latest version
   flutter_native_splash: ^latest version
   equatable: ^last version
   get: ^last version
   multiple_result: ^last version
   shorebird_code_push: ^last version
   flutter_svg: ^last version
   auto_route: ^last version
   terminate_restart: ^last version
   fluttertoast: ^last version
   flutter_staggered_grid_view: ^last version
   flutter_speed_dial: ^last version
   faker: ^last version
   gadgets:
    git:
      url: https://github.com/JamesBrel/dart_gadgets.git
      ref: vlast version
      path: packages/gadgets
   ----------------------------
   ```
 - <span style="color:yellow">step_1</span>: Installation of dev_dependencies
    Inside the pubspec.yaml file, you must integrate firstly the following packages :

   ```yaml
   auto_route_generator: ^latest version
   injectable_generator: ^latest version
   build_runner: ^latest version
   ```
    these packages will allow you to easily activate the various files imported into the architecture.
    then, you just have to follow, the readme.md in the folder **assets**

- <span style="color:yellow">step_2</span>: Integration of the architecture
   once in the Clean and Modular Architecture folder, you copy all its content to paste it in your project.

- <span style="color:yellow">Bonus</span>: The dependencies you need for the various services and config

   - ### Cache
   ```yaml
   flutter_secure_storage: ^latest version
   shared_preferences: ^latest version
   ```
   - ### Connexion
   ```yaml
   internet_connection_checker_plus: ^last version
   ```
   - ### Firebase
   ```yaml
   firebase_core: ^last version
   firebase_app_check: ^last version
   firebase_auth: ^last version
   cloud_firestore: ^last version
   firebase_storage: ^last version
   firebase_messaging: ^last version
   firebase_crashlytics: ^last version
   firebase_analytics: ^last version
   cloud_functions: ^last version
   ```
   - ### Supabase
   ```yaml
   supabase_flutter: ^last version
   ```
   - ### Http
   ```yaml
   dio: ^last version
   pretty_dio_logger: ^last version
   ```
   - ### Image
   ```yaml
   file_picker: ^latest version
   image_picker: ^last version
   flutter_native_image: ^last version
   image_cropper: ^last version
   ```
   - ### Isar
   ```yaml
   isar: ^last version 
   isar_flutter_libs: ^last version
   isar_generator: ^last version
   ```
   - ### Jwt
   ```yaml
   jwt_decoder: ^last version
   ```
   - ### url
   ```yaml
   dynamic_path_url_strategy: ^last version
   ``` 
   `
   - ### test
   add in dev_dependencies
   ```yaml
   mocktail: ^last version
   integration_test:
      sdk: flutter
   ```
---
<p style="text-align: center"> Copyright &copy; 2025 James Brel All Rights Reserved</p>      