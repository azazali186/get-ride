import Foundation


public class LoginResponseData {
	public var user : User?
	public var token : String?
	public var permissions : Array<Permissions>?

    public class func modelsFromDictionaryArray(array:NSArray) -> [LoginResponseData]
    {
        var models:[LoginResponseData] = []
        for item in array
        {
            models.append(LoginResponseData(dictionary: item as! NSDictionary)!)
        }
        return models
    }

	required public init?(dictionary: NSDictionary) {

		if (dictionary["user"] != nil) { user = User(dictionary: dictionary["user"] as! NSDictionary) }
		token = dictionary["token"] as? String
        if (dictionary["permissions"] != nil) { permissions = Permissions.modelsFromDictionaryArray(array: dictionary["permissions"] as! NSArray) }
	}

	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.user?.dictionaryRepresentation(), forKey: "user")
		dictionary.setValue(self.token, forKey: "token")

		return dictionary
	}

}
