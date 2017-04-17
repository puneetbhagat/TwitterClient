//
//  LoginViewController.swift
//  TwitterClient
//
//  Created by Bhagat, Puneet on 4/16/17.
//  Copyright © 2017 com.rcholic. All rights reserved.
//

import UIKit
import BDBOAuth1Manager

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onLogin(_ sender: UIButton) {
        
        TwitterClient.shared?.fetchRequestToken(
            withPath: "oauth/request_token",
            method: "GET",
            callbackURL: URL(string: TWITTER_CALLBACK_URL)!,
            scope: "scopetest",
            success: { [weak self] (requestToken: BDBOAuth1Credential?) in
                
                if let token = requestToken?.token {
                    
                    let url = URL(string: "\(TWT_BASE_HTTP_PATH)/oauth/authorize?oauth_token=\(token)")!
                    UIApplication.shared.openURL(url)
                    
                }
        }) { (error: Error?) in
            print("error: \(error)")
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
