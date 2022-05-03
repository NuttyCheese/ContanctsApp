//
//  MainTabBarController.swift
//  ContanctsApp
//
//  Created by Борис Павлов on 30.04.2022.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        let contacts = Contact.getProfiles()
        let contactList = viewControllers?.first as! ContactListViewController
        let profileList = viewControllers?.last as! ProfileListViewController
        
        contactList.contacts = contacts
        profileList.contacts = contacts
    }
}
