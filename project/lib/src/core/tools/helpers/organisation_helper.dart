class OrganisationHelper<Type> {
  Map<String, List<Type>> letterOrganisationDataOfArtWorkList({
    required List<dynamic> artWorkData,
  }) {
    Map<String, List<Type>> groupedLists = {};
    artWorkData
        .sort((artWorkBefore, artWorkAfter) => artWorkBefore.categorie_oeuvre
            // .allSentence()
            .compareTo(artWorkAfter.categorie_oeuvre
                // .allSentence()
                ));

    for (var artwork in artWorkData) {
      if (groupedLists[artwork.categorie_oeuvre
              // .alphaLetter()
              ] ==
          null) {
        groupedLists[artwork.categorie_oeuvre
            // .alphaLetter()
            ] = <Type>[];
      }
      groupedLists[artwork.categorie_oeuvre
              // .alphaLetter()
              ]!
          .add(artwork);
    }
    return groupedLists;
  }

  // Map<String, List<Type>> letterOrganisationDataOfContactsList({
  //   required List<dynamic> contactsData,
  // }) {
  //   Map<String, List<Type>> groupedLists = {};
  //   contactsData.sort((contactBefore, contactAfter) =>
  //       "${contactBefore.contactFirstName} ${contactBefore.contactFamillyName}"
  //           .allSentence()
  //           .compareTo(
  //               "${contactAfter.contactFirstName}${contactAfter.contactFamillyName}"
  //                   .allSentence()));

  //   for (var contact in contactsData) {
  //     if ("${contact.contactFamillyName}${contact.contactFirstName}".isEmpty) {
  //       if (groupedLists["#"] == null) {
  //         groupedLists["#"] = <Type>[];
  //       }
  //       groupedLists["#"]!.add(contact);
  //     } else {
  //       if (groupedLists[
  //               "${contact.contactFamillyName}${contact.contactFirstName}"[
  //                   0]] ==
  //           null) {
  //         groupedLists[
  //             "${contact.contactFamillyName}${contact.contactFirstName}"[
  //                 0]] = <Type>[];
  //       }
  //       groupedLists[
  //               "${contact.contactFamillyName}${contact.contactFirstName}"[0]]!
  //           .add(contact);
  //     }
  //   }
  //   return groupedLists;
  // }

  // Map<String, List<Type>> letterOrganisationDataOfContactsList({
  //   required List<dynamic> contactsData,
  // }) {
  //   Map<String, List<Type>> groupedLists = {};
  //   contactsData.sort((contactBefore, contactAfter) => contactBefore
  //       .contactFirstName
  //       .compareTo(contactBefore.contactFirstName));

  //   for (var contact in contactsData) {
  //     if (groupedLists[contact.contactFirstName[0]] == null) {
  //       groupedLists[contact.contactFirstName[0]] = <Type>[];
  //     }
  //     groupedLists[contact.contactFirstName[0]]!.add(contact);
  //   }
  //   return groupedLists;
  // }
}
