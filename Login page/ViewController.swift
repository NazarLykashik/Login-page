//
//  ViewController.swift
//  Login page
//
//  Created by Nazar Lykashik on 5.07.22.
//

import UIKit

let users: [String] = ["User"]
let paswords: [String] = ["Pasword"]

class ViewController: UIViewController {
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var pasword: UITextField!
    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var loginTXT: UIButton!
    @IBOutlet weak var paswordTXT: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func checkLogin(_ sender: Any) {
        for (first, first) in zip(users.first, users.first) {
            if userName.text == users.username && pasword.text == users.pasword{
                
            }
        }
    }
    

}

