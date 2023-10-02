import Foundation

public struct User: Codable {
    public var id: String?
    public var username: String?
    public var email: String?
    public var password: String?
    public var roleId: Role?
    public var createdAt: String?
    public var updatedAt: String?
    public var profile: Profile?
    
    enum CodingKeys: String, CodingKey {
        case id, email, password, roleId, createdAt, updatedAt, profile
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        id = try? container.decode(String.self, forKey: .id)
        email = try? container.decode(String.self, forKey: .email)
        password = try? container.decode(String.self, forKey: .password)
        roleId = try? container.decode(Role.self, forKey: .roleId)
        createdAt = try? container.decode(String.self, forKey: .createdAt)
        updatedAt = try? container.decode(String.self, forKey: .updatedAt)
        profile = try? container.decode(Profile.self, forKey: .profile)
        username = profile?.name
    }
}
