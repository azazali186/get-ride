/* 
Copyright (c) 2023 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class User {
	public var id : String?
	public var username : String?
	public var email : String?
	public var password : String?
	public var roleId : RoleId?
	public var createdAt : String?
	public var updatedAt : String?
	public var profile : String?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let user_list = User.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of User Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [User]
    {
        var models:[User] = []
        for item in array
        {
            models.append(User(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let user = User(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: User Instance.
*/
	required public init?(dictionary: NSDictionary) {

		id = dictionary["id"] as? String
		username = dictionary["username"] as? String
		email = dictionary["email"] as? String
		password = dictionary["password"] as? String
		if (dictionary["roleId"] != nil) { roleId = RoleId(dictionary: dictionary["roleId"] as! NSDictionary) }
		createdAt = dictionary["createdAt"] as? String
		updatedAt = dictionary["updatedAt"] as? String
		profile = dictionary["profile"] as? String
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
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