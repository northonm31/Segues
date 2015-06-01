//
//  ViewController.swift
//  Segues
//
//  Created by Adam Corcoran on 28/05/2015.
//  Copyright (c) 2015 Adam Corcoran. All rights reserved.
//

import Foundation
import UIKit

class SegueTestViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToSegueTestViewController(segue: UIStoryboardSegue, sender: AnyObject?) {
        }
    
    var textToSendViewController2 = ""
    
    @IBAction func unwindToHome(segue: UIStoryboardSegue, sender: AnyObject?) {}
    
    //  override func viewDidAppear(animated: Bool) {
    //    performSegueWithIdentifier("segueToScreen2", sender: nil)
    //  }
    
    //Is this properly targeting the "titleText" variable in "SegueSecondViewController.swift"?
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let viewController2 = segue.destinationViewController as! SegueSecondViewController
        viewController2.titleText = textToSendViewController2
    }
    
    @IBAction func accessCameraButtonTapped(sender: AnyObject) {
        textToSendViewController2 = "Camera"
        performSegueWithIdentifier("segueToScreen2", sender: self)
    }
    
    @IBAction func accessLibraryButtonTapped(sender: AnyObject) {
        textToSendViewController2 = "Library"
        performSegueWithIdentifier("segueToScreen2", sender: self)
    }
    
//    @IBAction func button1Tapped(sender: AnyObject) {
//        textToSendViewController2 = "Hello from Button 1"
//        performSegueWithIdentifier("segueToScreen2", sender: self)
//    }
//    
//    @IBAction func button2Tapped(sender: AnyObject) {
//        textToSendViewController2 = "Hello from Button 2"
//        performSegueWithIdentifier("segueToScreen2", sender: self)
//    }

    
}

