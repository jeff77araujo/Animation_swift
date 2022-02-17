//
//  ViewController.swift
//  Animacoes
//
//  Created by Jefferson Oliveira de Araujo on 13/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: IBOutlets
    
    @IBOutlet weak var viewAnimation: UIView!
    @IBOutlet weak var viewRed: UIView!
    @IBOutlet weak var viewYellow: UIView!
    
    // MARK: View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewAnimation.layer.cornerRadius = 25
        viewAnimation.layer.masksToBounds = true
        
        viewRed.layer.cornerRadius = 25
        viewRed.layer.masksToBounds = true
        
        viewYellow.layer.cornerRadius = 25
        viewYellow.layer.masksToBounds = true
    }

    // MARK: IBActions
    
    @IBAction func buttonInitAnimation(_ sender: Any) {
        UIView.animate(withDuration: 1, delay: 0.5, options: [.repeat, .autoreverse], animations: {
            self.viewAnimation.frame = CGRect(x: self.viewAnimation.frame.origin.x, y: 800, width: self.viewAnimation.frame.size.width, height: self.viewAnimation.frame.size.height)
        }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 0.5, options: [.repeat, .autoreverse, .curveEaseIn], animations: {
            self.viewRed.frame = CGRect(x: self.viewRed.frame.origin.x, y: 800, width: self.viewRed.frame.size.width, height: self.viewRed.frame.size.height)
        }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 0.5, options: [.repeat, .autoreverse, .curveEaseOut], animations: {
            self.viewYellow.frame = CGRect(x: self.viewYellow.frame.origin.x, y: 800, width: self.viewYellow.frame.size.width, height: self.viewYellow.frame.size.height)
        }, completion: nil)
    }
}
