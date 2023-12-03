//
//  ChatViewController.swift
//  Flash Chat
//
//  Created by Michał Rudy on 28/11/2023.
//

import UIKit
import FirebaseAuth

class ChatViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = K.appName
        navigationItem.hidesBackButton = true
    }
    
    @IBAction func logOutPressed(_ sender: UIBarButtonItem) {
        do {
            try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
        } catch  let signOutError as NSError {
            print("Error signing out: %@", signOutError)
        }
    }
}
