# Flutter Mobile : MVC And Feature Architecture

### Author : James Brel

### Alias : The Coder

### Contact : thecoder38@gmail.com
---

<img src="img/flutter.png" alt="logo" width="200" height="200">

---
## Architecture 
   the architecture of each feature is based on the MVC :
   - Repositories
   - Controllers
   - Models
   - Views

```
📦features
 ┗ 📂greeting
 ┃ ┣ 📂controllers
 ┃ ┣ 📂repositories
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
   -----------StartUp Dependencies------------
   icons_launcher: ^last version
   flutter_native_splash: ^last version
   equatable: ^last version
   get: ^last version
   multiple_result: ^last version
   shorebird_code_push: ^last version
   flutter_gen: ^last version
   flutter_svg: ^last version
   logger: ^last version
   auto_route: ^last version
   terminate_restart: ^last version
   fluttertoast: ^last version
   get_storage: ^last version
   internet_connection_checker_plus: ^last version
   dynamic_path_url_strategy: ^last version
   flutter_staggered_grid_view: ^last version
   flutter_speed_dial: ^last version
   faker: ^last version

   ----------------------------
   ```
 - <span style="color:yellow">step_1</span>: Installation of dev_dependencies
    Inside the pubspec.yaml file, you must integrate firstly the following packages :

   ```yaml
   auto_route_generator: ^last version
   build_runner: ^last version
   flutter_gen_runner: ^last version
   ```
    these packages will allow you to easily activate the various files imported into the architecture.
    then, you just have to follow, the readme.md in the folder **assets**

- <span style="color:yellow">step_2</span>: Integration of the architecture
   once in the Clean and Modular Architecture folder, you copy all its content to paste it in your project.

- <span style="color:yellow">Bonus</span>: The dependencies you need for the various services and config

   - ### Cache
   ```yaml
   get_storage: ^latest version
   flutter_secure_storage: ^last version
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
   - ### Http
   ```yaml
   dio: ^last version
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
   - ### assets_gen
   ```yaml
   flutter_gen: ^last version
   flutter_gen_runner: ^last version
   ```
   add this following line in 
   pubspec.yaml
   ```yaml
   flutter_gen:
      # Optional
      output: lib/src/core/configs/assets_config
      # Optional
      line_length: 80
      # Optional
      parse_metadata: true

      # Optional
      integrations:
         flutter_svg: false
         flare_flutter: false
         rive: false
         lottie: false

      assets:
         # Optional
         enabled: true
         # Optional
         outputs:
            # Optional
            # Set to true if you want this package to be a package dependency
            # See: https://flutter.dev/docs/development/ui/assets-and-images#from-packages
            package_parameter_enabled: true
            # Optional
            Available values:
            - camel-case
            # - snake-case
            # - dot-delimiter
            style: dot-delimiter
            class_name: Assets
         exclude: []

      fonts:
         # Optional
         enabled: false
         # Optional
         outputs:
            class_name: FontFamily

      colors:
         # Optional
         enabled: true
         # Optional
         inputs:
            - assets/colors/color.xml
         outputs:
            class_name: ColorsApp
   ```
   after you read the doc : https://pub.dev/packages/flutter_gen

   - ### test
   add in dev_dependencies
   ```yaml
   mocktail: ^last version
   integration_test:
      sdk: flutter
   ```

---
<p style="text-align: center"> Copyright &copy; 2025 James Brel All Rights Reserved</p>      