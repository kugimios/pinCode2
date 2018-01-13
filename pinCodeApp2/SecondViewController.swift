//
//  SecondViewController.swift
//  pinCodeApp2
//
//  Created by ST13 on 6.01.2018.
//  Copyright © 2018 Kugim. All rights reserved.
//

import UIKit



class SecondViewController: UIViewController {
    
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
        
    }
    
    
    
    
    @IBOutlet weak var showHobbyOrPhobiaOutlet: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
