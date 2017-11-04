//
//  ViewController.swift
//  Restructure
//
//  Created by danielle kefford on 10/22/17.
//  Copyright © 2017 danielle kefford. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet weak var actionButton1: UIButton!
    @IBOutlet weak var actionButton2: UIButton!
    @IBOutlet weak var actionButton3: UIButton!
    @IBOutlet weak var actionButton4: UIButton!

    func animationCompleted(context: UIViewControllerTransitionCoordinatorContext) {
        print("Animation handler completed")
    }
    
    override func willTransition(to newTraits: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        coordinator.animate(alongsideTransition: { (_) in
            let newHorizontalSizeClass = newTraits.horizontalSizeClass
            let newVerticalSizeClass = newTraits.verticalSizeClass

            switch (newHorizontalSizeClass, newVerticalSizeClass) {
            case (_, .compact):
                print("Landscape iPhone")
            case (_, .regular):
                print("Portrait iPhone")
            default:
                // willTransition is never called for iPads and so we should never arrive here
                print("something is wrong")
            }
        }, completion: animationCompleted)
        
        super.willTransition(to: newTraits, with: coordinator)
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

