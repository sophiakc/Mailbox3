//
//  MailboxViewController.swift
//  Mailbox
//
//  Created by Sophia KC on 27/10/2016.
//  Copyright © 2016 Sophia KC. All rights reserved.
//

import UIKit

class MailboxViewController: UIViewController, UIScrollViewDelegate {

    
    // Outlets
    @IBOutlet var mailView: UIView!
    @IBOutlet var imageView: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var singleMessageView: UIView!
    
    @IBOutlet weak var feedView: UIImageView!
    
    
    
    // Global variables
    var originalCenter: CGPoint!
    var scrollViewOffset: CGFloat!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        scrollView.contentSize = CGSize(width: 320, height: 1430)
        scrollView.delegate = self
        
    }
    

    // Create action for pan gesture recognizer
    @IBAction func panMessage(_ sender: UIPanGestureRecognizer) {
        
        var location = sender.location(in: view)
        var velocity = sender.velocity(in: view)
        var translation = sender.translation(in: view)
        
        print ("working")
        
        if sender.state == .began {
            
            originalCenter = singleMessageView.center
            
        } else if sender.state == .changed {
            
            singleMessageView.center = CGPoint(x: originalCenter.x + translation.x, y: originalCenter.y)
            
            if translation.x > 0 && translation.x < 60 {
                // show grey from right
                print ("grey")
                
            } else if translation.x >= 60 && translation.x < 260 {
                // show green
                print ("green")
                
            } else if translation.x >= 260 {
                // show red
                print ("red")
                
            }
        } else if sender.state == .ended {
            
        }
    }
    
    
    
    
   
}






