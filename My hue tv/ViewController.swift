//
//  ViewController.swift
//  My hue tv
//
//  Created by Jorge kinejara on 5/22/16.
//  Copyright © 2016 KineticSDK. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.getClientAuthInBridge()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func getClientAuthInBridge() {
        let url = Commons.baseUrl
        let params = ["devicetype": "my_hue_app#iphone peter"]
      
        Alamofire.request(.POST, url, parameters:params, encoding:.JSON )
            .responseJSON { response in
                print(response.request)  // original URL request
                print(response.response) // URL response
                print(response.data)     // server data
                print( response.result)   // result of response serialization
                
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                }
        }
    }
}

