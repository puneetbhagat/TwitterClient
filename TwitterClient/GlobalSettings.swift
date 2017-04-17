//
//  GlobalSettings.swift
//  TwitterClient
//
//  Created by Bhagat, Puneet on 4/16/17.
//  Copyright © 2017 Puneet Bhagat. All rights reserved.
//

import Foundation

internal enum DataKey: String {
    case twitterUser = "TwitterUser"
    case requestToken = "RequestToken"
    case accessToken = "AccessToken"
    case lastLogin = "LastLogin"
}

public let TWITTER_CALLBACK_URL = "oauth-client://oauth-callback/twitter"

public let OAUTH_SCHEME_ID = "oauth-client"

public let TWT_CONSUMER_KEY = "zJkMaqDk0VuttH2VGSstGcyM1"

public let TWT_CONSUMER_SECRET = "8hQaOxdmtVhv6HO7H66AMxShaq423KjxZrrIPhsultYQ1uIoxo"

public let TWT_BASE_HTTP_PATH = "https://api.twitter.com"

public let TWT_BASE_URL = URL(string: TWT_BASE_HTTP_PATH)!

public let inactiveTint = UIColor.gray

public let TWT_CHARACTERS_LIMIT = 140

public let TWT_DATE_FORMAT = "EEE MMM d HH:mm:ss Z y"

public let TWITTER_BLUE: UIColor = UIColor.init(red: 0/255.0, green: 132/225.0, blue: 180/255.0, alpha: 1.0)

public let SCREEN_WIDTH = UIScreen.main.bounds.size.width

public let SCREEN_HEIGHT = UIScreen.main.bounds.size.height

//public let activeTint = // self.tintColor
