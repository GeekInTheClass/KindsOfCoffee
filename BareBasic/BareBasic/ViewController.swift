//
//  ViewController.swift
//  BareBasic
//
//  Created by YeongsikLee on 2017. 3. 10..
//  Copyright © 2017년 CodersHigh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var thisLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        showAxisPowerNations()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func change(_ sender: Any) {
        thisLabel.text = "Hello iPhone"
    }
}
