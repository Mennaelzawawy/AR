class Language {
  final int id;
  final String name;
  Language(this.id, this.name);
  static List <Language> languageList(){
    return <Language>[
      Language(1, "En"),
      Language(2, "Ar")
    ];
  }
}
