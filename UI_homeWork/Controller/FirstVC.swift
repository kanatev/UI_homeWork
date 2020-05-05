//
//  ViewController.swift
//  UI_homeWork
//
//  Created by Aleksei Kanatev on 30/06/2019.
//  Copyright © 2019 Aleksei Kanatev. All rights reserved.
//


import UIKit

class FirstVC: UIViewController, UIAlertViewDelegate {
    
    var animationPerformed: Bool?
    var grayView: UIView?
    
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
        animation()
    }
    
    func showArert() {
        let alert: UIAlertController = UIAlertController(title: "Ошибка", message: "Неправильный логин или пароль", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        clearTextFields()
    }
    
    private func animation() {
        
        if animationPerformed == false {
            
            self.grayView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height))
            self.grayView!.backgroundColor = .lightGray
            self.view.addSubview(self.grayView!)
            
            let dotsView = UIView(frame: CGRect(x: grayView!.bounds.width/2-50, y: self.grayView!.bounds.height/2-15, width: 100, height: 30))
            dotsView.backgroundColor = .gray
            dotsView.layer.cornerRadius = 15
            grayView!.addSubview(dotsView)
            
            let firstDot = UIView(frame: CGRect(x: 10, y: dotsView.bounds.height/2-5, width: 10, height: 10))
            firstDot.backgroundColor = .black
            firstDot.layer.cornerRadius = firstDot.frame.height/2
            dotsView.addSubview(firstDot)
            
            let secondDot = UIView(frame: CGRect(x: dotsView.bounds.width/2-5, y: dotsView.bounds.height/2-5, width: 10, height: 10))
            secondDot.backgroundColor = .black
            secondDot.layer.cornerRadius = firstDot.frame.height/2
            dotsView.addSubview(secondDot)
            
            let thirdDot = UIView(frame: CGRect(x: 80, y: dotsView.bounds.height/2-5, width: 10, height: 10))
            thirdDot.backgroundColor = .black
            thirdDot.layer.cornerRadius = firstDot.frame.height/2
            dotsView.addSubview(thirdDot)
            
            
            var counter = 1
            func repeatAnimation(){
                UIView.animate(withDuration: 0.7, delay: 0, options: .curveEaseInOut, animations: {
                    firstDot.backgroundColor = .white
                }, completion: {_ in
                    firstDot.backgroundColor = .black
                    UIView.animate(withDuration: 0.7, delay: 0, options: .curveEaseInOut, animations: {
                        secondDot.backgroundColor = .white
                    }, completion: {_ in
                        secondDot.backgroundColor = .black
                        UIView.animate(withDuration: 0.7, delay: 0, options: .curveEaseInOut, animations: {
                            thirdDot.backgroundColor = .white
                        }, completion: {_ in
                            thirdDot.backgroundColor = .black
                            counter += 1
                            if counter < 3{
                                repeatAnimation()
                            } else {
                                self.animationPerformed = true
                                self.performSegue(withIdentifier: "enterSegue", sender: self)
                            }
                        })
                    })
                })
            }
            repeatAnimation()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationPerformed = false
        loginTextField.placeholder = "Email или телефон"
        passwordTextField.placeholder = "Пароль"
        enterButtonOutlet.layer.cornerRadius = 5
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if self.grayView != nil {
            self.grayView!.removeFromSuperview()
            self.animationPerformed = false
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if animationPerformed == true{
            return true
        } else {
            return false
        }
//        if loginTextField.text == "admin" && passwordTextField.text == "123456" {
//            clearTextFields()
//            return true
//        } else {
//            showArert()
//            return false
//        }
//    }
    }
    
    
    
}
