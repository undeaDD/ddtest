import XCTest
@testable import PokeApi

class ApiManagerTests: XCTestCase {
    
    func testGetPokemonByValidNameOrId() {
        // Arrange
        let validNameOrId = "pikachu"
        
        // Act
        do {
            let pokemon = try ApiManager.getPokemonBy(nameOrId: validNameOrId)
            
            // Assert
            XCTAssertNotNil(pokemon, "Pokemon should not be nil")
            // Add more assertions as needed to validate the Pokemon object
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    func testGetPokemonByInvalidNameOrId() {
        // Arrange
        let invalidNameOrId = "invalidNameOrId"
        
        // Act
        do {
            _ = try ApiManager.getPokemonBy(nameOrId: invalidNameOrId)
            
            // If it doesn't throw an error, fail the test
            XCTFail("Expected an error but got none")
        } catch {
            // Assert
            XCTAssertTrue(error is ApiError, "Expected ApiError")
            // Add more specific assertions for the type of ApiError if needed
        }
    }
}
