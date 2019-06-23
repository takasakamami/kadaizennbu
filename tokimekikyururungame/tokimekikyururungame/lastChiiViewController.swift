//
//  lastChiiViewController.swift
//  tokimekikyururungame
//
//  Created by 高坂まみ on 2019/06/22.
//  Copyright © 2019 高坂まみ. All rights reserved.
//

import UIKit

class lastChiiViewController: UIViewController {

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
        if chiiPoint == 2{
            self.lastImage.image = UIImage(named: "syouri-no-chii")
        } else {
            self.lastImage.image = UIImage(named: "haiboku-no-chii")
        }
    }
    
    
    
    func serihu() {
        
        lastLabel.text = ""
        let syouri = "来年も一緒に花火みようね大好き💖"
        let haiboku = "もうすきじゃなくなっちゃった"
        
        if chiiPoint == 3{
            
            for chii in syouri {
                lastLabel.text! += "\(chii)"
                RunLoop.current.run(until: Date()+0.05)
            }
            
        } else{
            for chii in haiboku {
                lastLabel.text! += "\(chii)"
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
