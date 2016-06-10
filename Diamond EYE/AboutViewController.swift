//
//  AboutViewController.swift
//  Diamond EYE
//
//  Created by Dmytro Aprelenko on 02.03.16.
//  Copyright © 2016 Dmytro Aprelenko. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    
    
    @IBAction func close() { dismissViewControllerAnimated(true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
