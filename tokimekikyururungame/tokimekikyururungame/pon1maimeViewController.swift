//
//  pon1maimeViewController.swift
//  tokimekikyururungame
//
//  Created by 高坂まみ on 2019/06/21.
//  Copyright © 2019 高坂まみ. All rights reserved.
//

import UIKit

class pon1maimeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBOutlet weak var serifuLabel: UITextView!
    
    
    
    @IBAction func pointLabel(_ sender: Any) {
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
        let serihuName = "お花畑たのしいね♡お花とわたしどっちがすき♡？"
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
