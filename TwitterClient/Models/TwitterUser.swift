//
//  TwitterUser.swift
//  TwitterClient
//
//  Created by Bhagat, Puneet on 4/16/17.
//  Copyright © 2017 Puneet Bhagat. All rights reserved.
//

import ObjectMapper

class TwitterUser: Mappable, CustomStringConvertible {
    
    var id: Int64 = 0
    var name: String?
    var screenName: String?
    var profileImgUrl: URL?
    var tagline: String?
    var followersCount: Int? = 0
    var aboutMeUrl: URL?
    var location: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        screenName <- map["screen_name"]
        profileImgUrl <- (map["profile_image_url"], URLTransform()) // profile_image_url_https
        tagline <- map["description"]
        followersCount <- map["followers_count"]
        aboutMeUrl <- (map["url"], URLTransform())
        location <- map["location"]
    }
    
    public var description: String {
        return "author name: \(name), id: \(id) tagline: \(tagline)"
    }
}
