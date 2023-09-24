import Foundation

class ApiManager {
    
    static func getPokemonBy(nameOrId: String) throws -> Pokemon? {
        guard let url = URL(string: Utils.baseURL + nameOrId) else {
            throw ApiError.invalidName
        }
        
        guard let data = try? Data(contentsOf: url) else {
            throw ApiError.invalidURL
        }
        
        guard let result = try? JSONDecoder().decode(Pokemon.self, from: data) else {
            throw ApiError.decodeError
        }
        
        return result
    }
    
}
