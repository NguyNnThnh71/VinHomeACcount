//
//  LoginViewController.swift
//  vinHomeAccount
//
//  Created by Duong Le on 20/06/2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var phoneTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 5
        loginButton.layer.masksToBounds = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onPressMain(_ sender: UIButton) {

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        

        let mainVC = storyboard.instantiateViewController(identifier: "MainViewController") as MainViewController
        

        guard let phone = phoneTextField.text else { return }
        

        mainVC.phoneTextField.text = phone
        
       
        self.present(mainVC, animated: true, completion: nil)
        
    }
    
    @IBAction func onPressRegister(_ sender: UIButton) {
        let registerVC = RegisterViewController()
        
    
        registerVC.modalPresentationStyle = .fullScreen
        
       
        self.present(registerVC, animated: true, completion: nil)
    }
    
    
}
