//
//  BIDYellowViewController.swift
//  View Switcher
//
//  Created by danielle kefford on 11/4/17.
//  Copyright © 2017 danielle kefford. All rights reserved.
//

import UIKit

class BIDYellowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func yellowButtonPressed(_ sender: Any) {
        // Create new alert
        let actionSheet = UIAlertController.init(title: "💛 Yellow view button pressed 💛",
                                                 message: "You pressed the button on the yellow view",
                                                 preferredStyle: .actionSheet)
        
        // Add actions to each choice in the alert
        actionSheet.addAction(UIAlertAction(title: "Yup, I sure did!",
                                            style: UIAlertActionStyle.cancel,
                                            handler: nil))
        
        // Display the action sheet.
        self.present(actionSheet, animated: true, completion: nil)
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
