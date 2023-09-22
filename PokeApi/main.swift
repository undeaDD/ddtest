import Foundation

// name: ditto -> id: 132
let pokemonA = try? ApiManager.getPokemonBy(nameOrId: "ditto")
print(pokemonA ?? "-")

// id: 25 -> name: pikachu
let pokemonB = try? ApiManager.getPokemonBy(nameOrId: "25")
print(pokemonB ?? "-")
