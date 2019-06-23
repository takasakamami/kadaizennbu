//
//  natu1maimeViewController.swift
//  tokimekikyururungame
//
//  Created by 高坂まみ on 2019/06/20.
//  Copyright © 2019 高坂まみ. All rights reserved.
//

import UIKit

class natu1maimeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var serifuLabel: UITextView!
    
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
        serifuLabel.text = ""
        let serihuName = "はじめましてなっちゃんってよんでね💖たくさん会いにきてくれたら好きになっちゃうかも💖今日は◯◯くんとの記念日だね💖シャンパン飲も💖"
        for natu in serihuName {
            serifuLabel.text! += "\(natu)"
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
