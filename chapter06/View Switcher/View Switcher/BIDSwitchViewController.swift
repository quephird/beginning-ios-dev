//
//  BIDSwitchViewController.swift
//  View Switcher
//
//  Created by danielle kefford on 11/4/17.
//  Copyright © 2017 danielle kefford. All rights reserved.
//

import UIKit

class BIDSwitchViewController: UIViewController {
    var blueViewContoller: BIDBlueViewController!
    var yellowViewContoller: BIDYellowViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        self.blueViewContoller = (self.storyboard?.instantiateViewController(withIdentifier: "Blue"))! as! BIDBlueViewController
        self.view.insertSubview(self.blueViewContoller.view, at: 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
        if (self.yellowViewContoller.view.superview != nil) {
            self.yellowViewContoller = nil
        } else {
            self.blueViewContoller = nil
        }
    }

    @IBAction func switchViews(sender: UIBarButtonItem) {
        UIView.beginAnimations("View flip", context: nil)
        UIView.setAnimationDuration(0.5)
        UIView.setAnimationCurve(UIViewAnimationCurve.easeInOut)
        
        if (self.yellowViewContoller?.view.superview == nil) {
            if (self.yellowViewContoller == nil) {
                self.yellowViewContoller = (self.storyboard?.instantiateViewController(withIdentifier: "Yellow"))! as! BIDYellowViewController
            }
            UIView.setAnimationTransition(UIViewAnimationTransition.flipFromRight, for: self.view, cache: true)
            self.blueViewContoller.view.removeFromSuperview()
            self.view.insertSubview(self.yellowViewContoller.view, at: 0)
        } else {
            if (self.blueViewContoller == nil) {
                self.blueViewContoller = (self.storyboard?.instantiateViewController(withIdentifier: "Blue"))! as! BIDBlueViewController
            }
            UIView.setAnimationTransition(UIViewAnimationTransition.flipFromLeft, for: self.view, cache: true)
            self.yellowViewContoller.view.removeFromSuperview()
            self.view.insertSubview(self.blueViewContoller.view, at: 0)
        }
        UIView.commitAnimations()
    }
}

