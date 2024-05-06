// Dictionnaires

/*Considérez les objets suivants, modélisant des personnes caractérisés par leur nom, sexe et annee_naissance

(nom=Pierre, sexe=M, annee_naissance=2010)
(nom=Michelle, sexe=F, annee_naissance=2008)
(nom=Estelle, sexe=F, annee_naissance=2005)
(nom=Quentin, sexe=M, annee_naissance=2010)
(nom=Francois, sexe=M, annee_naissance=1980)
(nom=Cristelle, sexe=F, annee_naissance=1995)
*/

// 1.Créer une liste de dictionnaire contenant ces personnes
var personnes:[[String:Any]] = [
  ["nom":"Pierre", "sexe":"M", "annee_naissance":2010],
  ["nom":"Michelle", "sexe":"F", "annee_naissance":2008],
  ["nom":"Estelle", "sexe":"F", "annee_naissance":2005],
  ["nom":"Quentin", "sexe":"M", "annee_naissance":2010],
  ["nom":"Francois", "sexe":"M", "annee_naissance":1980],
  ["nom":"Cristelle", "sexe":"F", "annee_naissance":1995],
]

// 2.Affichez le nom de toutes les personnes concaténés avec leurs date de naissance, suivant le format “P est né en X” si c’est un garçon ou “P est née en X” si c’est une fille

for i in 0 ..< personnes.count {
  if personnes[i]["sexe"] as? String  == "M"{
      print("\(personnes[i]["nom"] ?? "") est né en \(personnes[i]["annee_naissance"] ?? "")")
  }
  else {
    print("\(personnes[i]["nom"] ?? "") est née en \(personnes[i]["annee_naissance"] ?? "")")
  }
}
print()

// 3.Affichez les noms de toutes les personnes majeures

print("Personnes majeures:")
for i in 0 ..< personnes.count {
  if (personnes[i]["annee_naissance"] as? Int ?? 0 <= 2024-18) {
      print("\(personnes[i]["nom"] ?? "")")
  }
}
print()

// 4.Afficher toutes les filles puis tous les garçons
print("Toutes les filles:")
for i in 0 ..< personnes.count {
  if (personnes[i]["sexe"] as? String ?? "" == "F") {
      print("\(personnes[i]["nom"] ?? "")")
  }
}
print()

print("Personnes majeures:")
for i in 0 ..< personnes.count {
    if (personnes[i]["sexe"] as? String ?? "" == "M") {
      print("\(personnes[i]["nom"] ?? "")")
  }
}
print()

// 5.Ajoutez une nouvelle personne dans la liste
personnes = personnes +  [["nom":"Jean", "sexe":"M", "annee_naissance":1960]]

for i in 0 ..< personnes.count {
    print("\(personnes[i]["nom"] ?? "")")
}
print()