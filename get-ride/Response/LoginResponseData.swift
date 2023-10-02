import Foundation

public class LoginResponseData: Codable {
    public var user: User?
    public var token: String?
    public var permissions: [Permissions]?

    private enum CodingKeys: String, CodingKey {
        case user, token, permissions
    }
    
    // No need for custom initializer and dictionaryRepresentation
}
