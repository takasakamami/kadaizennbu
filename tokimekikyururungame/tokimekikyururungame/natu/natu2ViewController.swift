//
//  natu2ViewController.swift
//  tokimekikyururungame
//
//  Created by 高坂まみ on 2019/06/20.
//  Copyright © 2019 高坂まみ. All rights reserved.
//

import UIKit

class natu2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var serihuLabel: UITextView!
    
  
    @IBAction func pointButton(_ sender: Any) {
        natuPoint += 1
        print(natuPoint)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.serihu()
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func serihu() {
        serihuLabel.text = ""
        let serihuName = "今日も来てくれたんだうれしい💖なつみの夢一緒に叶えてね💖今月バースデーがあるんだけど。。。"
        for natu in serihuName {
            serihuLabel.text! += "\(natu)"
            RunLoop.current.run(until: Date()+0.01)
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
