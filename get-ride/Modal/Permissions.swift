import Foundation

public class Permissions: Codable {
    public var id: String?
    public var name: String?
    public var route: String?
    public var _guard: String?   // You might consider renaming _guard to something else
    public var parentId: String?
    
    private enum CodingKeys: String, CodingKey {
        case id, name, route, _guard = "guard", parentId
    }
    
    // No need for custom initializer and dictionaryRepresentation
}
