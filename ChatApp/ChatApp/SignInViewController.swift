//
//  SignInViewController.swift
//  ChatApp
//
//  Created by 高坂まみ on 2019/06/09.
//  Copyright © 2019 高坂まみ. All rights reserved.
//

import UIKit
import Firebase        //追加
import GoogleSignIn//追加

class SignInViewController: UIViewController, GIDSignInUIDelegate, GIDSignInDelegate {

 

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance()?.uiDelegate = self
        GIDSignIn.sharedInstance()?.delegate = self

        // Do any additional setup after loading the view.
    }
    func transitionToChatRoom() {
        performSegue(withIdentifier: "toChatRoom", sender: self)//"toChatRoom"というIDで識別
    }

    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        if let error = error {
            print(error.localizedDescription)
            return
        }
        
        guard let authentication = user.authentication else { return }
        let credential = GoogleAuthProvider.credential(withIDToken: authentication.idToken, accessToken: authentication.accessToken)
        
        
        //最後に、認証情報を使用して Firebase での認証を行います
        Auth.auth().signInAndRetrieveData(with: credential) { (authDataResult, error) in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            print("\nSignin succeeded\n")
            self.transitionToChatRoom()
        }
    }

    @IBAction func tappedSignOut(_ sender: Any) {
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
            print("SignOut is succeeded")
            reloadInputViews()
        } catch let signOutError as NSError {
            print("Error signing out: %@", signOutError)
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
