import Foundation

public class Role {
	public var id : String?
	public var name : String?
	public var desc : String?
	public var permissions : Array<Permissions>?

    public class func modelsFromDictionaryArray(array:NSArray) -> [Role]
    {
        var models:[Role] = []
        for item in array
        {
            models.append(Role(dictionary: item as! NSDictionary)!)
        }
        return models
    }

	required public init?(dictionary: NSDictionary) {

		id = dictionary["id"] as? String
		name = dictionary["name"] as? String
		desc = dictionary["desc"] as? String
        if (dictionary["permissions"] != nil) { permissions = Permissions.modelsFromDictionaryArray(array: dictionary["permissions"] as! NSArray) }
	}

	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.name, forKey: "name")
		dictionary.setValue(self.desc, forKey: "desc")

		return dictionary
	}

}
