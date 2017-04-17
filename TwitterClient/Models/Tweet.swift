//
//  Tweet.swift
//  TwitterClient
//
//  Created by Bhagat, Puneet on 4/16/17.
//  Copyright © 2017 Puneet Bhagat. All rights reserved.
//

import ObjectMapper

class Tweet: Mappable, CustomStringConvertible {
    
    var id: Int64?
    var text: String?
    var createdAt: Date?
    var retweetCount: Int = 0
    var isRetweeted: Bool = false
    var author: TwitterUser? = nil
    var favoritesCount: Int = 0
    var isFavorited: Bool = false
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        
        id <- map["id"]
        text <- map["text"]
        createdAt <- (map["created_at"], CustomDateFormatTransform(formatString: TWT_DATE_FORMAT))
        retweetCount <- map["retweet_count"]
        isRetweeted <- map["retweeted"]
        author <- map["user"]
        favoritesCount <- map["favorite_count"]
        isFavorited <- map["favorited"]
    }
    
    public var description: String {
        return "isRetweeted: \(self.isRetweeted); author: \(author)"
    }
}
