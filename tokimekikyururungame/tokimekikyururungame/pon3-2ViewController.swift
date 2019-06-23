//
//  pon3-2ViewController.swift
//  tokimekikyururungame
//
//  Created by 高坂まみ on 2019/06/21.
//  Copyright © 2019 高坂まみ. All rights reserved.
//

import UIKit

class pon3_2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var serifuLabel: UITextView!
    
    @IBAction func pointButton(_ sender: Any) {
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
        let serihuName = "男の子とツリー見に来るの夢だったんだあって言ってる............くぅぅぅぅぅぅ"
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
