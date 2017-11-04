//
//  ViewController.swift
//  Button fun
//
//  Created by danielle kefford on 10/4/17.
//  Copyright © 2017 danielle kefford. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Created by dragging the label to this controller
    @IBOutlet weak var statusLabel: UILabel!

    // Created by dragging one of the buttons to this controller
    @IBAction func buttonPressed(_ sender: UIButton) {
        // Get the title of the button
        let buttonTitle = sender.title(for: .normal)

        // Interpolate a message for the label and cast as an NSString
        // because NSMutableAttributedString.setAttributes needs an NSRange
        // which can be most easily obtained from an NSString
        let message = "\(buttonTitle ?? "No") button was pressed!" as NSString
        
        // Create a special string which can have multiple stylings
        let styledMessage = NSMutableAttributedString(string: message as String)

        // Get range of characters in entire message string for just the button title
        let buttonTitleRange = message.range(of: buttonTitle!)
        
        // Construct a dictionary of attributes suitable for a NSMutableAttributedString
        let attributes = [NSFontAttributeName: UIFont.boldSystemFont(ofSize: statusLabel.font.pointSize)]
        
        // Style just the part of the attrubuted string for the button title
        styledMessage.setAttributes(attributes, range: buttonTitleRange)
        
        // Set the styled text of the label
        statusLabel.attributedText = styledMessage
    }
}

