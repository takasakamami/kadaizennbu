//
//  LastSummerViewController.swift
//  tokimekikyururungame
//
//  Created by 高坂まみ on 2019/06/21.
//  Copyright © 2019 高坂まみ. All rights reserved.
//

import UIKit

class LastSummerViewController: UIViewController {
    
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
        if natuPoint == 2{
            self.lastImage.image = UIImage(named: "syouri-no-natumi")
        } else {
            self.lastImage.image = UIImage(named: "haiboku-no-natumi")
        }
    }
    
    
    
    func serihu() {
        
        lastLabel.text = ""
        let syouri = "もうお客さんじゃなくてなつみの彼氏だよ💖"
        let haiboku = "今月でお店やめて地元に帰ることにしたよもう会えないけど◯◯くんのこと忘れないよいままでありがとう。"
        
        if natuPoint == 3{
            
            for natu in syouri {
                lastLabel.text! += "\(natu)"
                RunLoop.current.run(until: Date()+0.01)
            }
            
        } else{
            for natu in haiboku {
                lastLabel.text! += "\(natu)"
                RunLoop.current.run(until: Date()+0.01)
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
