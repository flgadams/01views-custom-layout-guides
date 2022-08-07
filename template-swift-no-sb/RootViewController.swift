//
//  ViewController.swift
//  template-swift-no-sb
//
//  Created by Glenn Adams on 7/30/22.
// A Swift project template for UIKit apps, no storyboards
/*
 
 I’ll demonstrate. We have four views that are to remain equally distributed vertically. I constrain the left and right edges of the four views, their heights, and the top of the first view and the bottom of the last view. Now we want to set the vertical position of the two middle views such that they are always equidistant from their vertical neighbors
--------------
   TOP rect
 
   middle rect
 
   middle rect
 
   Bottom rect
-----------------
 Neuburg, Matt. Programming iOS 13 . O'Reilly Media. Kindle Edition.
 */
import UIKit

class RootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemGray
        
        let v1 = UIView()
        v1.translatesAutoresizingMaskIntoConstraints=false
        v1.backgroundColor = .green
        self.view.addSubview(v1)
        
        let v2 = UIView()
        v2.translatesAutoresizingMaskIntoConstraints=false
        v2.backgroundColor = .red
        self.view.addSubview(v2)
        
        let v3 = UIView()
        v3.translatesAutoresizingMaskIntoConstraints = false
        v3.backgroundColor = .purple
        self.view.addSubview(v3)
        
        let v4 = UIView()
        v4.backgroundColor = .blue
        v4.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(v4)
        
        let views = [v1,v2,v3,v4]
        var guides = [UILayoutGuide]()
        // add the guides to the view
        for _ in views.dropLast() {
            let g = UILayoutGuide()
            self.view.addLayoutGuide(g)
            guides.append( g)
            
        }
        
        let anc = self.view.leadingAnchor
        // left anchor and width are arbitrary
        
        
        
        
        
        
        
        
        
        
        
        
    }
}

