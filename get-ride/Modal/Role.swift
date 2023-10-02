import Foundation

public class Role: Codable {
    public var id: String?
    public var name: String?
    public var desc: String?
    public var permissions: [Permissions]?
    
    private enum CodingKeys: String, CodingKey {
        case id, name, desc, permissions
    }
    
    // No need for custom initializer and dictionaryRepresentation
}
