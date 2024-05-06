// Soit les mots suivants: "bateau", "voiture", "vélo", "avion", "bus", "train", "moto”

// 1.Créez un tableau en swift représentant ces mots
var mots = ["bateau", "voiture", "vélo", "avion", "bus", "train", "moto"]

// 2.Affichez les mots se trouvant aux indices 2, 3 et 20
print(mots[2])
print(mots[3])
print(mots[20]) // Ceci va lancer une erreur car l'indice maximum du tableau est 6.
print()

// 3.Affichez tous les mots de la liste sous la forme Moyen de transport numéro [i] est [mot]
for i in 0 ..< mots.count {
  print("Moyen de transport numéro \(i) est \(mots[i])")
}
print()

// 4.Trouvez et affichez les mots aux indices impairs puis pairs
var pairs:[String] = []
var impairs:[String] = []


for i in 0 ..< mots.count {
  if i % 2 != 0 {
    impairs.append(mots[i])
  }
  else {
    pairs.append(mots[i])
  }

}

print("Mots aux indices impairs")
for j in 0 ..< impairs.count {
  print(impairs[j])
}
print()

print("Mots aux indices pairs")
for k in 0 ..< pairs.count {
  print(pairs[k])
}
print()

// 5.Inversez l’ordre du tableau puis stockez le résultat dans un nouveau tableau
var reversed:[String] = mots.reversed()
print()

// 6.Insérez les mots suivants ‘camion’, ‘taxi’

// En tête de liste
mots = ["bateau", "voiture", "vélo", "avion", "bus", "train", "moto"]
mots = ["camion","taxi"] + mots

// En fin de liste
mots = ["bateau", "voiture", "vélo", "avion", "bus", "train", "moto"]
mots = mots + ["camion","taxi"]

// À partir de l’indice 2
mots = ["bateau", "voiture", "vélo", "avion", "bus", "train", "moto"]
mots.insert(contentsOf: ["camion", "taxi"], at: 2)

print()