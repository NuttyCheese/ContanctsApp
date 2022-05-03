//
//  FullInfoAboutContactViewController.swift
//  ContanctsApp
//
//  Created by Борис Павлов on 30.04.2022.
//

import UIKit

class FullInfoAboutContactViewController: UIViewController {

    @IBOutlet weak var numberPhoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var contacts: Contact!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = contacts.fullName
        emailLabel.text = contacts.email
        numberPhoneLabel.text = contacts.phoneNumber

    }
}
