//
//  pon4ViewController.swift
//  tokimekikyururungame
//
//  Created by 高坂まみ on 2019/06/21.
//  Copyright © 2019 高坂まみ. All rights reserved.
//

import UIKit

class pon4ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBOutlet weak var serifuLabel: UITextView!
    
    
    @IBAction func pointButton(_ sender: Any) {
        ponPoint += 1
    }
    
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.serihu()
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func serihu() {
        serifuLabel.text = ""
        let serihuName = "楽しかったね♡プレゼントもありがとう♡中身なあに♡"
        for pon in serihuName {
            serifuLabel.text! += "\(pon)"
            RunLoop.current.run(until: Date()+0.05)
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
