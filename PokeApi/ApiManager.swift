import Foundation

class ApiManager {
    
    static func getPokemonBy(nameOrId: String) throws -> Pokemon? {
        // add static api key for authentication
        let API_KEY = "fa877ee9-a9ac-4b59-b725-601025b1e946"
        
        guard let url = URL(string: Utils.baseURL + nameOrId + API_KEY) else {
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
