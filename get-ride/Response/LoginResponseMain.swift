import Foundation

public class LoginResponseMain: Codable {
    public var status: Int?
    public var message: String?
    public var data: LoginResponseData?

    private enum CodingKeys: String, CodingKey {
        case status, message, data
    }
    
    // Custom initializer and dictionaryRepresentation are not needed when using Codable.
}
