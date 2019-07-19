//
//  resultViewController.swift
//  Project1_13072019
//
//  Created by Divya Chainani on 2019-07-13.
//  Copyright © 2019 Divya Chainani. All rights reserved.
//

import UIKit

class resultViewController: UIViewController {
    

    @IBOutlet weak var back: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backAction(_ sender: Any) {

        dismiss(animated: true, completion: nil)
    }


}
