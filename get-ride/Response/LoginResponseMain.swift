import Foundation

public class LoginResponseMain {
	public var status : Int?
	public var message : String?
	public var data : LoginResponseData?

    public class func modelsFromDictionaryArray(array:NSArray) -> [LoginResponseMain]
    {
        var models:[LoginResponseMain] = []
        for item in array
        {
            models.append(LoginResponseMain(dictionary: item as! NSDictionary)!)
        }
        return models
    }

	required public init?(dictionary: NSDictionary) {

		status = dictionary["status"] as? Int
		message = dictionary["message"] as? String
		if (dictionary["data"] != nil) { data = LoginResponseData(dictionary: dictionary["data"] as! NSDictionary) }
	}


	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.status, forKey: "status")
		dictionary.setValue(self.message, forKey: "message")
		dictionary.setValue(self.data?.dictionaryRepresentation(), forKey: "data")

		return dictionary
	}

}
