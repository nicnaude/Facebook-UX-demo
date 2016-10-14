//
//  ThrillistViewController.swift
//  Facebook demo
//
//  Created by Nicholas Naudé on 13/10/2016.
//  Copyright © 2016 Nicholas Naudé. All rights reserved.
//

import UIKit

class ThrillistViewController: ViewController, UIGestureRecognizerDelegate {
    
    @IBOutlet weak var commentTextView: UITextField!
    @IBOutlet weak var thumbsUp: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var thrillistImage: UIImageView!
    @IBOutlet var tapGestureRecogniser: UITapGestureRecognizer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = thrillistImage.frame.size
        let recognizer = UITapGestureRecognizer(target: self, action:Selector("handleTap:"))
        recognizer.delegate = self
        view.addGestureRecognizer(recognizer)
    }
    
    @IBAction func handleTap(_ sender: AnyObject) {
        print("Bunnies!")
        commentTextView.resignFirstResponder()
        commentTextView.text = ""
    }
    
    
    @IBAction func onLikeTapped(_ sender: AnyObject) {
        if thumbsUp.image == UIImage(named:"like_btn"){
            thumbsUp.image = UIImage(named:"like_btn_selected")
            likeButton.setTitleColor(UIColor(red:0.21, green:0.37, blue:0.70, alpha:1.0), for: .normal)
            
        } else if thumbsUp.image == UIImage(named:"like_btn_selected"){
            thumbsUp.image = UIImage(named:"like_btn")
        }
    }
}
