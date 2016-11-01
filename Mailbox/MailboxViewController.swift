//
//  MailboxViewController.swift
//  Mailbox
//
//  Created by Sophia KC on 27/10/2016.
//  Copyright © 2016 Sophia KC. All rights reserved.
//

import UIKit

class MailboxViewController: UIViewController {

    
    // Outlets
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var feedView: UIImageView!
    
    
    
    // Global variables
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        scrollView.contentSize = CGSize(width: 320, height: 1430)
        
    }
    
    
    
    @IBAction func didPanMessage(_ sender: UIPanGestureRecognizer) {
        
        
    }
    
    
    
    
    
    

}






