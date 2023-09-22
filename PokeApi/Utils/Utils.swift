import Foundation

class Utils {
    static let baseURL = "https://pokeapi.co/api/v2/pokemon/"
}

struct Pokemon: Decodable {
    let id: Int
    let name: String
    let weight: Int
}

enum ApiError: Error {
    case invalidName
    case invalidURL
    case decodeError
}
