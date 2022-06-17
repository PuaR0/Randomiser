//
//  SettingsViewController.swift
//  Randomiser
//
//  Created by Алиага С on 17.6.2022.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet var minValueTF: UITextField!
    @IBOutlet var maxValueTF: UITextField!
    
    var minimumValue: String!
    var maximumValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        minValueTF.text = minimumValue
        maxValueTF.text = maximumValue
        
    }
    
    @IBAction func canselAction() {
        dismiss(animated: true)
    }
    
}
