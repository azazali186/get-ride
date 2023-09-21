import Foundation

public class Permissions {
	public var id : String?
	public var name : String?
	public var route : String?
	public var _guard : String?
	public var parentId : String?

    public class func modelsFromDictionaryArray(array:NSArray) -> [Permissions]
    {
        var models:[Permissions] = []
        for item in array
        {
            models.append(Permissions(dictionary: item as! NSDictionary)!)
        }
        return models
    }

	required public init?(dictionary: NSDictionary) {

		id = dictionary["id"] as? String
		name = dictionary["name"] as? String
		route = dictionary["route"] as? String
		_guard = dictionary["guard"] as? String
		parentId = dictionary["parentId"] as? String
	}

	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.name, forKey: "name")
		dictionary.setValue(self.route, forKey: "route")
		dictionary.setValue(self._guard, forKey: "guard")
		dictionary.setValue(self.parentId, forKey: "parentId")

		return dictionary
	}

}
