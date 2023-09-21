import Foundation

public class User {
	public var id : String?
	public var username : String?
	public var email : String?
	public var password : String?
	public var roleId : Role?
	public var createdAt : String?
	public var updatedAt : String?
	public var profile : String?

    public class func modelsFromDictionaryArray(array:NSArray) -> [User]
    {
        var models:[User] = []
        for item in array
        {
            models.append(User(dictionary: item as! NSDictionary)!)
        }
        return models
    }

	required public init?(dictionary: NSDictionary) {

		id = dictionary["id"] as? String
		username = dictionary["username"] as? String
		email = dictionary["email"] as? String
		password = dictionary["password"] as? String
		if (dictionary["roleId"] != nil) { roleId = Role(dictionary: dictionary["roleId"] as! NSDictionary) }
		createdAt = dictionary["createdAt"] as? String
		updatedAt = dictionary["updatedAt"] as? String
		profile = dictionary["profile"] as? String
	}

	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.username, forKey: "username")
		dictionary.setValue(self.email, forKey: "email")
		dictionary.setValue(self.password, forKey: "password")
		dictionary.setValue(self.roleId?.dictionaryRepresentation(), forKey: "roleId")
		dictionary.setValue(self.createdAt, forKey: "createdAt")
		dictionary.setValue(self.updatedAt, forKey: "updatedAt")
		dictionary.setValue(self.profile, forKey: "profile")

		return dictionary
	}

}
