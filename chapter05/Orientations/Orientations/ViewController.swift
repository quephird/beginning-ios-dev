//
//  ViewController.swift
//  Orientations
//
//  Created by danielle kefford on 10/21/17.
//  Copyright © 2017 danielle kefford. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override var supportedInterfaceOrientations:UIInterfaceOrientationMask {
        return [UIInterfaceOrientationMask.portrait,
                UIInterfaceOrientationMask.landscapeLeft]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

