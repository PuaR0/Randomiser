//
//  ViewController.swift
//  Randomiser
//
//  Created by Алиага С on 17.6.2022.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var minValueLabel: UILabel!
    @IBOutlet var maxValueLabel: UILabel!
    @IBOutlet var randomValueLabel: UILabel!
    @IBOutlet var getNumResultButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getNumResultButton.layer.cornerRadius = 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.minimumValue = minValueLabel.text
        settingsVC.maximumValue = maxValueLabel.text
    }

    @IBAction func getNumRandomButTapped() {
        let minimumNumber = Int(String(minValueLabel.text ?? "")) ?? 0
        let maximumNumber = Int(String(maxValueLabel.text ?? "")) ?? 100
        
        randomValueLabel.text = String(Int.random(in: minimumNumber...maximumNumber))
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let settingsVC = segue.source as? SettingsViewController else { return }
        minValueLabel.text = settingsVC.minValueTF.text
        maxValueLabel.text = settingsVC.maxValueTF.text
    }
    
}

