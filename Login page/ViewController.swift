//
//  ViewController.swift
//  Login page
//
//  Created by Nazar Lykashik on 5.07.22.
//

import UIKit



class ViewController: UIViewController {
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var loginTXT: UIButton!
    @IBOutlet weak var paswordTXT: UIButton!
    let storedUsername = "User"
    let storedPassword = "Pasword"
    var authenticationDidFail: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func checkLogin(_ sender: Any) {
        if self.userName.text == storedUsername && self.password.text == storedPassword {
            self.authenticationDidFail = true
            print("nkjdfn")
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let WelcomeViewController = storyBoard.instantiateViewController(withIdentifier: "vc") as! WelcomeViewController
            self.present(WelcomeViewController, animated: true, completion: nil)
                
            }
        }

    




    
}
