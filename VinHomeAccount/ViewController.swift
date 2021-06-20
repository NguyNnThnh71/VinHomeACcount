//
//  ViewController.swift
//  VinHomeAccount
//
//  Created by Apple on 20/06/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var BackButtonUI: UIButton!
    @IBOutlet weak var TextNameUI: UITextField!
    @IBOutlet weak var phoneNumberTextUI: UITextField!
    @IBOutlet weak var ResignsterUI: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        BackButtonUI.layer.cornerRadius = 10
        BackButtonUI.backgroundColor = UIColor(red: 0.00, green: 0.45, blue: 0.38, alpha: 1.00)
        ResignsterUI.layer.cornerRadius = 15
        ResignsterUI.backgroundColor = UIColor(red: 0.00, green: 0.45, blue: 0.38, alpha: 1.00)
        phoneNumberTextUI.keyboardType = .numberPad
        TextNameUI.keyboardType = .namePhonePad
        
    }

    @IBAction func PressResignster(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let LoginVC = storyboard.instantiateViewController(identifier: "LoginViewController") as LoginViewController
        
        LoginVC.modalPresentationStyle = .fullScreen
        
        
        self.present(LoginVC, animated: true, completion: nil)
    }
    @IBAction func BackButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
    
}

