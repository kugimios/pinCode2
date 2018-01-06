//
//  ViewController.swift
//  pinCodeApp2
//
//  Created by ST13 on 31.12.2017.
//  Copyright © 2017 Kugim. All rights reserved.
//

import UIKit

var realPassword = "" // Real Pin Code

class ViewController: UIViewController {
    
    // Vars
    
    var userPasswordInput = "" // User Enter This Pin Code
    
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
        print("1")
        appendAndCheck("1")
    }
    
    @IBAction func button2Action(_ sender: UIButton) {
        print("2")
        appendAndCheck("2")
    }
    
    @IBAction func button3Action(_ sender: UIButton) {
        print("3")
        appendAndCheck("3")
    }
    
    @IBAction func button4Action(_ sender: UIButton) {
        print("4")
        appendAndCheck("4")
    }
    
    
    @IBAction func button5Action(_ sender: UIButton) {
        print("5")
        appendAndCheck("5")
    }
    
    
    @IBAction func button6Action(_ sender: UIButton) {
        print("6")
        appendAndCheck("6")
    }
    
    
    @IBAction func button7Action(_ sender: UIButton) {
        print("7")
        appendAndCheck("7")
    }
    
    
    @IBAction func button8Action(_ sender: UIButton) {
        print("8")
        appendAndCheck("8")
    }
    
    
    @IBAction func button9Action(_ sender: UIButton) {
        print("9")
        appendAndCheck("9")
    }
    
    
    @IBAction func button0Action(_ sender: UIButton) {
        print("0")
        appendAndCheck("0")
    }
    
    @IBAction func buttonBackAction(_ sender: UIButton) {
        print("back")
        
    }
   
 
    @IBOutlet weak var loginButtonOutlet: UIButton!
    
    
    func appendAndCheck(_ input:String) {
        userPasswordInput += input
        
        if userPasswordInput.count == 4 {
            if realPassword != "" && realPassword == userPasswordInput {
                // user pass var ve kaydedilmis
                loginButtonOutlet.isEnabled = true
                loginButtonOutlet.backgroundColor = UIColor.green
                infoView.backgroundColor = UIColor.green
                print("success")
                return
                
            } else if realPassword != "" && realPassword != userPasswordInput {
                infoLabel.text = "Sifrenizi Yalnis Girdiniz"
            } else if realPassword == "" {
                
                if userTryPin1 == "" {
                    userTryPin1 = userPasswordInput
                    infoLabel.text = "Lutfen Ikinci Kez Giriniz"
                    print("pin1 kaydedildi")
                    infoView.backgroundColor = UIColor.clear
                } else if userTryPin1 != "" && userTryPin2 == "" {
                    userTryPin2 = userPasswordInput
                    print("pin 2 kaydedildi")
                    if userTryPin1 != userTryPin2 {
                        // eger userpin1 esit degilse userpin2 ye
                        infoLabel.text = "Girdiginiz Sifreler Uyusmadi"
                        userTryPin1 = ""
                        userTryPin2 = ""
                        infoView.backgroundColor = UIColor.red
                        print("User pin 1 pin 2 ye esit degil")
                    } else if userTryPin1 == userTryPin2 {
                        realPassword = userTryPin1
                        infoView.backgroundColor = UIColor.yellow
                        print("pin kaydedildi")
                    }
                }
            }
            userPasswordInput = ""
        }
       
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButtonOutlet.isEnabled = false
        loginButtonOutlet.backgroundColor = UIColor.gray
        
        if realPassword != "" {
            infoLabel.text = "Sifreyi giriniz"
            
        } else {
            infoLabel.text = "Lutfen Sifrenizi Olusturunuz"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        // Dispose of any resources that can be recreated.
    }


}

