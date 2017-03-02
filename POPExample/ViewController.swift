//
//  ViewController.swift
//  POPExample
//
//  Created by Nguyen Duy Khanh on 3/1/17.
//  Copyright © 2017 Nguyen Duy Khanh. All rights reserved.
//

import UIKit

class BuzzableButton:UIButton,Buzzable{}
class BuzzableLabel:UIButton,Buzzable,Poppable {}
class BuzzableTextField:UITextField, Buzzable {}
class BuzzableImageView: UIImageView,Buzzable {}

class ViewController: UIViewController {
    @IBOutlet weak var loginButton: BuzzableButton!
    @IBOutlet weak var errorMessageLabel: BuzzableLabel!
    @IBOutlet weak var passcodeTextfield: BuzzableTextField!
    @IBOutlet weak var profileImgView: BuzzableImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpCornerRadius()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didTapLoginButton(sender: AnyObject) {
        errorMessageLabel.pop()
        loginButton.buzz()
        errorMessageLabel.buzz()
    }
    
    func setUpCornerRadius() {
        let imageHeight = profileImgView.frame.height/2
        profileImgView.layer.cornerRadius = imageHeight
        profileImgView.layer.masksToBounds = true
    }

}

