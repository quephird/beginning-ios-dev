//
//  ViewController.swift
//  Control Fun
//
//  Created by danielle kefford on 10/5/17.
//  Copyright © 2017 danielle kefford. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIActionSheetDelegate {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var leftSwitch: UISwitch!
    @IBOutlet weak var rightSwitch: UISwitch!
    @IBOutlet weak var doSomethingButton: UIButton!

    let SEGMENTED_SWITCH_LEFT_INDEX = 0

    @IBAction func toggleControls(_ sender: UISegmentedControl) {
        if (sender.selectedSegmentIndex == SEGMENTED_SWITCH_LEFT_INDEX) {
            self.leftSwitch.isHidden = false
            self.rightSwitch.isHidden = false
            self.doSomethingButton.isHidden = true
        } else {
            self.leftSwitch.isHidden = true
            self.rightSwitch.isHidden = true
            self.doSomethingButton.isHidden = false
        }
    }

    func alertDestructivated(_ sender: UIAlertAction) {
        let messageFragment = (self.nameField.text?.isEmpty)! ? "" : " \(self.nameField.text ?? "")"
        let message = "You can breathe easy now\(messageFragment), everything went OK."
            
        let anotherActionSheet = UIAlertController.init(title: "Something was done!!!",
                                                        message: message,
                                                        preferredStyle: .actionSheet)
        anotherActionSheet.addAction(UIAlertAction(title: "Phew!!!",
                                                   style: UIAlertActionStyle.cancel,
                                                   handler: nil))
        self.present(anotherActionSheet, animated: true, completion: nil)
    }

    // The implementation below is quite different from the one suggested in the book,
    // as UIAlertView was deprecated. This SO post helped me greatly:
    //
    //    https://stackoverflow.com/a/38746256
    @IBAction func buttonPressed(_ sender: Any) {
        // Create new alert
        let actionSheet = UIAlertController.init(title: "Are you sure?",
                                                 message: nil,
                                                 preferredStyle: .actionSheet)

        // Add actions to each choice in the alert
        actionSheet.addAction(UIAlertAction(title: "No way!",
                                            style: UIAlertActionStyle.cancel,
                                            handler: nil))
        actionSheet.addAction(UIAlertAction(title: "Yes, I'm sure!!!",
                                            style: UIAlertActionStyle.destructive,
                                            handler: alertDestructivated))

        // Display the action sheet.
        self.present(actionSheet, animated: true, completion: nil)
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        let setting = sender.isOn
        self.leftSwitch.setOn(setting, animated: true)
        self.rightSwitch.setOn(setting, animated: true)
    }

    @IBAction func textFieldDoneEditing(sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    @IBAction func backgroundTap(sender: UIControl) {
        self.nameField.resignFirstResponder()
        self.numberField.resignFirstResponder()
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        let progress = lroundf(sender.value)
        sliderLabel.text = "\(progress)"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        sliderLabel.text = "50"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

