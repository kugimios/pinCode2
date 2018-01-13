//
//  SecondViewController.swift
//  pinCodeApp2
//
//  Created by ST13 on 6.01.2018.
//  Copyright © 2018 Kugim. All rights reserved.
//

import UIKit



class SecondViewController: UIViewController {
    
    var hobby:Array<String> = []
    var phobia:Array<String> = []
    
    @IBOutlet weak var button: UIButton!
    @IBAction func segmentAction(_ sender: UISegmentedControl) {
    }
    @IBOutlet weak var progressBarOutlet: UIProgressView!
    
    @IBOutlet weak var segmentControllerOutlet: UISegmentedControl!
    
    
    @IBOutlet weak var addTextFieldOutlet: UITextField!
    
    @IBAction func addButtonAction(_ sender: UIButton) {
        // progressBarOutlet.progress = 0.1
        progressBarOutlet.progress += 0.1
        print(progressBarOutlet.progress)
        segmentControllerOutlet.selectedSegmentIndex = 1
        
        if(addTextFieldOutlet.text! != ""){
            addoption(addTextFieldOutlet.text!)
            addTextFieldOutlet.text = ""
            labelcontrol()
        }
        
    }
    
    func addoption(_ text:String)  {
        
        if(segmentControllerOutlet.selectedSegmentIndex == 0){
            
            hobby.append(text)
            if(hobby.count == 5){
                
                segmentControllerOutlet.setEnabled(true, forSegmentAt: 1)
            }
        }else if(segmentControllerOutlet.selectedSegmentIndex == 1){
            
            phobia.append(text)
            if(phobia.count == 5){
                button.isEnabled = false
            }
        }
    }
    
    func labelcontrol()  {
        showHobbyOrPhobiaOutlet.text = ""
        progressBarOutlet.progress = 0
        if(segmentControllerOutlet.selectedSegmentIndex == 0){
            
            for i in 0 ..< hobby.count{
                progressBarOutlet.progress = Float(0.20 * Double(i+1))
                addTextFieldOutlet.text = showHobbyOrPhobiaOutlet.text! + String(hobby[i]) + "\n"
            }
        }
        else if segmentControllerOutlet.selectedSegmentIndex == 1{
            for i in 0 ..< phobia.count{
                
                progressBarOutlet.progress = Float(0.20 * Double(i+1))
                print(Float(0.20 * Double(i+1)))
                showHobbyOrPhobiaOutlet.text = showHobbyOrPhobiaOutlet.text! + phobia[i] + "\n"
            }
        }
    }
    
    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        
        print(segmentControllerOutlet.selectedSegmentIndex)
        labelcontrol()
    }
    
    
    @IBOutlet weak var showHobbyOrPhobiaOutlet: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(segmentControllerOutlet.selectedSegmentIndex)
        print(progressBarOutlet.progress)
        
        segmentControllerOutlet.setEnabled(false, forSegmentAt: 1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
