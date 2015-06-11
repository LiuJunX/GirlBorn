//
//  ViewController.swift
//  GirlBorn
//
//  Created by JunMac on 5/30/15.
//  Copyright (c) 2015 JunMac. All rights reserved.
//

import UIKit





class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}





class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var userName: UITextField!
    @IBOutlet var password: UITextField!
    
    @IBAction func Login(sender: UIButton) {
        println("login clicked")
        println("userName:" + userName.text)
        println("password:" + password.text)
        
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.socket.writeString("login:" + userName.text + ":" + password.text)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        //textField.resignFirstResponder()
        //self.view.endEditing(true)
        //println("userName" + userName.text)
        //let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        //appDelegate.socket.writeString("userName:" + userName.text)
        return false
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
}





class RegistViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

