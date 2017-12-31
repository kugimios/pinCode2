//
//  ViewController.swift
//  pinCodeApp2
//
//  Created by ST13 on 31.12.2017.
//  Copyright © 2017 Kugim. All rights reserved.
//

import UIKit

var userPinCode = "" // Real Pin Code

class ViewController: UIViewController {
    
    // Vars
    
    var userPinCodeInput = "" // User Enter This Pin Code
    
    var userTryPin1 = "" // Try To Save Your Pin Code
    var userTryPin2 = "" // Try To Save Your Pin Code To Save
    
    
    
    
    @IBOutlet weak var infoLabel: UILabel!
    
    @IBOutlet weak var actionIconOutlet: UIImageView!
    
    
    @IBOutlet weak var pinImage1: UIImageView!
    
    @IBOutlet weak var pinImage2: UIImageView!

    @IBOutlet weak var pinImage3: UIImageView!

    @IBOutlet weak var pinImage4: UIImageView!
    
    @IBOutlet weak var infoView: UIView!
    
    @IBOutlet weak var successView: UIView!
    
    
    @IBAction func button1Action(_ sender: UIButton) {
        userPinCodeAppend("1")
    }
    
    @IBAction func button2Action(_ sender: UIButton) {
        userPinCodeAppend("2")
    }
    
    @IBAction func button3Action(_ sender: UIButton) {
        userPinCodeAppend("3")
    }
    
    @IBAction func button4Action(_ sender: UIButton) {
        userPinCodeAppend("4")
    }
    
    
    @IBAction func button5Action(_ sender: UIButton) {
        userPinCodeAppend("5")
    }
    
    
    @IBAction func button6Action(_ sender: UIButton) {
        userPinCodeAppend("6")
    }
    
    
    @IBAction func button7Action(_ sender: UIButton) {
        userPinCodeAppend("7")
    }
    
    
    @IBAction func button8Action(_ sender: UIButton) {
        userPinCodeAppend("8")
    }
    
    
    @IBAction func button9Action(_ sender: UIButton) {
        userPinCodeAppend("9")
    }
    
    
    @IBAction func button0Action(_ sender: UIButton) {
        userPinCodeAppend("0")
    }
    
    @IBAction func buttonBackAction(_ sender: UIButton) {
        userPinCodeInput = String(userPinCodeInput.characters.dropLast())
        print(userPinCodeInput)
    }
    
 
    @IBOutlet weak var loginButtonOutlet: UIButton!
    
    
    func pinImage() {
        if userPinCodeInput.count == 0 {
            pinImage1.image = #imageLiteral(resourceName: "deactive")
            pinImage2.image = #imageLiteral(resourceName: "deactive")
            pinImage3.image = #imageLiteral(resourceName: "deactive")
            pinImage4.image = #imageLiteral(resourceName: "deactive")
        }
        if userPinCodeInput.count == 1 {
            pinImage1.image = #imageLiteral(resourceName: "active")
            pinImage2.image = #imageLiteral(resourceName: "deactive")
            pinImage3.image = #imageLiteral(resourceName: "deactive")
            pinImage4.image = #imageLiteral(resourceName: "deactive")
            
        }
        if userPinCodeInput.count == 2 {
            pinImage1.image = #imageLiteral(resourceName: "active")
            pinImage2.image = #imageLiteral(resourceName: "active")
            pinImage3.image = #imageLiteral(resourceName: "deactive")
            pinImage4.image = #imageLiteral(resourceName: "deactive")
        }
        if userPinCodeInput.count == 3 {
            pinImage1.image = #imageLiteral(resourceName: "active")
            pinImage2.image = #imageLiteral(resourceName: "active")
            pinImage3.image = #imageLiteral(resourceName: "active")
            pinImage4.image = #imageLiteral(resourceName: "deactive")
        }
        if userPinCodeInput.count == 4 {
            pinImage1.image = #imageLiteral(resourceName: "active")
            pinImage2.image = #imageLiteral(resourceName: "active")
            pinImage3.image = #imageLiteral(resourceName: "active")
            pinImage4.image = #imageLiteral(resourceName: "active")
        }
        
    }
    
    
    func saveUserPinCode() 
    {
        if userPinCodeInput.count == 4 && userTryPin1 == "" {
            userTryPin1 = userPinCodeInput
            userPinCodeInput = ""
        } else if userPinCodeInput.count == 4 && userTryPin2 == "" {
            userTryPin2 = userPinCodeInput
            userPinCodeInput = ""
        }
        if userTryPin1.count == 4 && userTryPin2.count == 4 {
            if userTryPin1 == userTryPin2 {
                userPinCode = userTryPin1
            } else {
                userTryPin1 = ""
                userTryPin2 = ""
            }
        }
    }
    
    
    func passCodeCheck() {
        
        print("User Pin Code : \(userPinCode)")
        print("User Pin Input Code : \(userPinCodeInput)")
        print("User Try 1 Pin Code : \(userTryPin1)")
        print("User Try 2 Pin Code : \(userTryPin2)")
        print("--------------")
        if userPinCode == "" {
            saveUserPinCode()
        }
        else if userPinCodeInput.count == 4 && userPinCode == userPinCodeInput {
            loginButtonOutlet.isEnabled = true
            successView.isHidden = false
        } else if userPinCodeInput.count == 4 {
            print("Code Dogru Degil")
            userPinCodeInput = ""
        }
    }
    
    
    
    func userPinCodeAppend(_ userPin:String) {
        if userPinCodeInput.count < 4 {
            userPinCodeInput += userPin
        }
        passCodeCheck()
        informationLabelFunc()
    }
    
    func informationLabelFunc() {
       
        if userPinCode == "" {
            infoLabel.text = "Lutfen Pin Code Olusturunuz"
            
        }
        
        
        if userPinCode != "" {
            infoLabel.text = "Lutfen Pin Codunuzu Giriniz"
            return
        }
        
        if userPinCodeInput.count == 4 && (userPinCode != userPinCodeInput) {
            infoLabel.text = "Pin Code Hatali"
            return
        }
        
        
        if userTryPin1 != "" {
            infoLabel.text = "Lutfen Pin Cod'u Tekrar Girin"
            return
        }
        
        if userTryPin1 != userTryPin2 {
            infoLabel.text = "Girdiginiz Pin Code Eslesmedi!"
            return
        }
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButtonOutlet.isEnabled = false
        informationLabelFunc()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

