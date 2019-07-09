//
//  ViewController.swift
//  UI_homeWork
//
//  Created by Aleksei Kanatev on 30/06/2019.
//  Copyright © 2019 Aleksei Kanatev. All rights reserved.
//

// Приступаю к дз #2

import UIKit

class FirstVC: UIViewController, UIAlertViewDelegate {
    
    
    
    // white status bar
    var barStyle = UIStatusBarStyle.lightContent
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return barStyle
    }
    
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var enterButtonOutlet: UIButton!
    
    
    func clearTextFields() {
        loginTextField.text = nil
        passwordTextField.text = nil
    }
    
    @IBAction func enterButton(_ sender: Any) {
    }
    
    func showArert() {
        let alert: UIAlertController = UIAlertController(title: "Ошибка", message: "Неправильный логин или пароль", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        clearTextFields()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginTextField.placeholder = "Email или телефон"
        passwordTextField.placeholder = "Пароль"
        enterButtonOutlet.layer.cornerRadius = 5
    }
    
//    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
//        if loginTextField.text == "admin" && passwordTextField.text == "123456" {
//            clearTextFields()
//            return true
//        } else {
//            showArert()
//            return false
//        }
//    }
}
