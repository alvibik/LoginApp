//
//  PersonViewController.swift
//  LoginApp
//
//  Created by albik on 29.10.2022.
//

import UIKit

final class PersonViewController: UIViewController {
    
    private let person = Person()
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    
    override func viewDidLoad() {
        nameLabel.text = person.name
        surnameLabel.text = person.surname
        ageLabel.text = String(person.age)
    }
    

}

