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
    
    let v1 = UIView()
    let v2 = UIView()
    let v3 = UIView()
    let v4 = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemMint
        
       // let v1 = UIView()
        v1.translatesAutoresizingMaskIntoConstraints=false
        v1.backgroundColor = .green
        self.view.addSubview(v1)
        
      //  let v2 = UIView()
        v2.translatesAutoresizingMaskIntoConstraints=false
        v2.backgroundColor = .red
        self.view.addSubview(v2)
        
        //let v3 = UIView()
        v3.translatesAutoresizingMaskIntoConstraints = false
        v3.backgroundColor = .purple
        self.view.addSubview(v3)
        
        //let v4 = UIView()
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
        
        let viewsLeading = self.view.leadingAnchor
        // left anchor and width are arbitrary
        for g in guides {
            g.leadingAnchor.constraint(equalTo: viewsLeading).isActive=true
            g.widthAnchor.constraint(equalToConstant: 10).isActive=true
        }
        
        // the stripes bottom is guides'top
        for (v,g) in zip(views.dropLast(), guides){
            v.bottomAnchor.constraint(equalTo: g.topAnchor).isActive=true
        }
        
        //the stripes top is guides bottom
        for (v,g) in zip(views.dropFirst(), guides) {
            v.topAnchor.constraint(equalTo: g.bottomAnchor).isActive=true
        }
        // all guides have eq height
        let h = guides[0].heightAnchor
        for g in guides.dropFirst() {
            g.heightAnchor.constraint(equalTo: h).isActive=true
        }
        
        let v5 = UIView()
        v5.translatesAutoresizingMaskIntoConstraints=false
        v5.backgroundColor = .red
        self.view.addSubview(v5)
        NSLayoutConstraint.activate([
            v5.topAnchor.constraint(equalTo: self.view.topAnchor),
            v5.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            v5.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            v5.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        
        
        
        
    }
}
/*
 var guides = [UILayoutGuide]()
 // one fewer guides than views
 for _ in views.dropLast() {
     let g = UILayoutGuide()
     self.view.addLayoutGuide(g)
     guides.append(g)
 }
 // guides leading and width are arbitrary
 let anc = self.view.leadingAnchor
 for g in guides {
     g.leadingAnchor.constraint(equalTo:anc).isActive = true
     g.widthAnchor.constraint(equalToConstant:10).isActive = true
 }
 // guides top to previous view
 for (v,g) in zip(views.dropLast(), guides) {
     v.bottomAnchor.constraint(equalTo:g.topAnchor).isActive = true
 }
 // guides bottom to next view
 for (v,g) in zip(views.dropFirst(), guides) {
     v.topAnchor.constraint(equalTo:g.bottomAnchor).isActive = true
 }
 // guide heights equal to each other!
 let h = guides[0].heightAnchor
 for g in guides.dropFirst() {
     g.heightAnchor.constraint(equalTo:h).isActive = true
 }

 
 */
