class ListHelper {
  ListHelper._();

  static List<Map<String, dynamic>> mergeListsByKey({
    required String key,
    required List<dynamic> list1,
    required List<dynamic> list2,
  }) {
    // Créer un Map intermédiaire basé sur l'id pour éviter les doublons
    Map<int, Map<String, dynamic>> tempMap = {};

    // Ajouter tous les éléments de list1
    for (var item in list1) {
      tempMap[item[key]] = item;
    }

    // Ajouter ou mettre à jour les éléments de list2
    for (var item in list2) {
      tempMap[item[key]] = {...?tempMap[item[key]], ...item};
    }

    // Convertir le Map intermédiaire en liste
    return tempMap.values.toList();
  }
}
