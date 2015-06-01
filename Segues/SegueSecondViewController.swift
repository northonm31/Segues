//
//  SegueSecondViewController.swift
//  Segues
//
//  Created by Adam Corcoran on 28/05/2015.
//  Copyright (c) 2015 Adam Corcoran. All rights reserved.
//

import Foundation
import UIKit

class SegueSecondViewController: UIViewController {

  // As you're NavBar is not in a UINavigationController, you need to create an outlet 
  // to it in order to change its properties
  @IBOutlet weak var navigationBar: UINavigationBar!

  var titleText = ""
    
  // Is code not working because I'm not explicitly targeting "UINavigationBar" for targeting the "title" attribute?
  override func viewDidLoad() {
      self.title = titleText
    
      // This is just API knowledge... Setting the title attribute of a UINavigationBar
      navigationBar.topItem?.title = titleText
  }
  
    //Also tried these unsuccessfully
//    override func viewDidLoad() {
//        self.navigationItem.title = titleText
//    }
    
//    override func viewDidLoad() {
//        navigationItem.title = titleText
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}