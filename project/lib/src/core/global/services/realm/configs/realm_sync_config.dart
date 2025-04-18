// import 'package:realm/realm.dart';

// class RealmSyncConfig {
//   static late Realm _realmSync;
//   static Realm get realmSync => _realmSync;

//   static void syncConfig() async {
//     String appId = "<Atlas App ID>";
//     var appConfig = AppConfiguration(appId);
//     var  app = App(appConfig);
//     var user = await app.logIn(Credentials.anonymous());
//     var config = Configuration.local([
//       //todo:  add all schemas
//     ]);
//     _realmSync = Realm(config);
//   }
// }
