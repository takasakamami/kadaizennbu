//
//  ViewController.swift
//  syoryuken
//
//  Created by 高坂まみ on 2019/06/06.
//  Copyright © 2019 高坂まみ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

var imgArray = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgArray += [ UIImage(named: "attak1")!,
                      UIImage(named: "attak2")!,
                      UIImage(named: "attak3")!,
                      UIImage(named: "attak4")!,
                      UIImage(named: "attak5")!,
                      UIImage(named: "attak6")!,
                      UIImage(named: "attak7")!,
                      UIImage(named: "attak8")!,
                      UIImage(named: "attak9")!,
                      UIImage(named: "attak10")!,
                      UIImage(named: "attak11")!,
                      UIImage(named: "attak12")!,
                      UIImage(named: "attak13")!,
                      UIImage(named: "attak14")!,
                      UIImage(named: "attak15")!,
                      UIImage(named: "attak16")!,
                      UIImage(named: "attak17")!,
                      UIImage(named: "attak18")!,
                      UIImage(named: "attak19")!,
                      UIImage(named: "attak20")!
        ]
    }

    @IBOutlet weak var ugokuyatu: UIImageView!
    
    @IBAction func button(_ sender: Any) {
        ugokuyatu.animationImages = imgArray
        ugokuyatu.animationDuration = 0.5
        ugokuyatu.animationRepeatCount = 1
        ugokuyatu.startAnimating()
    }
    
}

