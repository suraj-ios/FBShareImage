//
//  ViewController.swift
//  FBSharingTool
//
//  Created by Suraj on 30/11/18.
//  Copyright © 2018 Suraj. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func fbAction(_ sender: Any) {
        
        let screen = UIScreen.main
        
        if let window = UIApplication.shared.keyWindow {
            UIGraphicsBeginImageContextWithOptions(screen.bounds.size, false, 0);
            window.drawHierarchy(in: window.bounds, afterScreenUpdates: false)
            let image = UIImage(named: "2.jpg")
            
            let composeSheet = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
            //composeSheet!.setInitialText("Hello")
            composeSheet!.add(image)
            
            present(composeSheet!, animated: true, completion: nil)
        }
    }
    
    
}

