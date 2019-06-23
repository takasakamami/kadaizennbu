//
//  chiiirumiViewController.swift
//  tokimekikyururungame
//
//  Created by 高坂まみ on 2019/06/22.
//  Copyright © 2019 高坂まみ. All rights reserved.
//

import UIKit

class chiiirumiViewController: UIViewController {

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
        let serihuName = "もうすぐクリスマスだ...............ちいちゃんかわいいなあ3回目のデートだし今日は進展あるといいな............"
        for chii in serihuName {
            serifuLabel.text! += "\(chii)"
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
