import Foundation

public class Profile: Codable {
    public var id: String?
    public var isVerify: Bool?
    public var isActive: Bool?
    public var createdAt: String?
    public var name: String?
    public var userId: String?
    public var updatedAt: String?
    
    
    enum CodingKeys: String, CodingKey {
        case id, isVerify, isActive, createdAt, name, userId, updatedAt
    }
}
