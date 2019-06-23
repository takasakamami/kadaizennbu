//
//  lastPonViewController.swift
//  tokimekikyururungame
//
//  Created by 高坂まみ on 2019/06/22.
//  Copyright © 2019 高坂まみ. All rights reserved.
//

import UIKit

class lastPonViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        changeImage()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.serihu()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    @IBOutlet weak var lastImage: UIImageView!
    
    
    @IBOutlet weak var lastLabel: UITextView!
    
    
    
    @IBAction func resetButton(_ sender: Any) {
    }
    
    func changeImage(){
        if ponPoint == 4{
            self.lastImage.image = UIImage(named: "syouri-no-pon")
        } else {
            self.lastImage.image = UIImage(named: "haiboku-no-pon")
            
            
            
        }
    }
    
    
    
    func serihu() {
        
        lastLabel.text = ""
        let syouri = "ぴぴぴぴぃ！"
        let haiboku = "しーね！"
        
        if ponPoint == 4{
            
            for pon in syouri {
                lastLabel.text! += "\(pon)"
                RunLoop.current.run(until: Date()+0.05)
            }
            
        } else{
            for pon in haiboku {
                lastLabel.text! += "\(pon)"
                RunLoop.current.run(until: Date()+0.05)
            }
        }
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
