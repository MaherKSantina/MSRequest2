//
//  ViewController.swift
//  MSRequest2
//
//  Created by MaherKSantina on 11/27/2018.
//  Copyright (c) 2018 MaherKSantina. All rights reserved.
//

import UIKit
import MSRequest2

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        MSRequest2.request(urlString: "https://demo4427016.mockable.io/users") { (dict) in
            print(dict)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}



