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
    private let storedUsername = "User"
    private let storedPassword = "Password"
    var authenticationDidFail: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func checkLogin(_ sender: Any) {
        if (self.userName.text == storedUsername && self.password.text == storedPassword) {
            self.authenticationDidFail = true
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let WelcomeViewController = storyBoard.instantiateViewController(withIdentifier: "vc") as! WelcomeViewController
            self.present(WelcomeViewController, animated: true, completion: nil)
        }else {
           showAlert(title: "Oops", messege: "Wrong data!", textField: password)
            return
        }
        }

    @IBAction func forgotLogin(_ sender: Any) {
        showAlert(title: "User name", messege: "Your login is: \(storedUsername)")
    }
    
    @IBAction func forgotPassword(_ sender: Any) {
    showAlert(title: "Password", messege: "Your password is \(storedPassword)")
        
    }
    private func showAlert(title: String, messege: String, textField: UITextField? = nil){
        let alert = UIAlertController(title: title, message: messege, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) {
            _ in textField?.text = nil
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    
        
    }



    
}
