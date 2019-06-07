//
//  ViewController.swift
//  tableviewkadai
//
//  Created by 高坂まみ on 2019/06/07.
//  Copyright © 2019 高坂まみ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 var contents:[String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        if UserDefaults.standard.object(forKey:"List") != nil{
            
            contents = UserDefaults.standard.object(forKey:"List") as! [String]
        }
    
        // Do any additional setup after loading the view.
    }
   
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func addButton(_ sender: UIButton) {
        contents.append(textField.text!)
        textField.text = ""
        UserDefaults.standard.set( contents, forKey: "List")
    
    }
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
