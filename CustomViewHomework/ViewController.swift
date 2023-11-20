//
//  ViewController.swift
//  CustomViewHomework
//
//  Created by Алексей Козел on 14.11.2023.
//

import UIKit

class ViewController: UIViewController /*FirstViewDelegate*/ {

    let customView = FirstView(frame: .zero)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.addSubview(customView)
        customView.delegate = self
        customView.translatesAutoresizingMaskIntoConstraints = false
//        customView.centerXAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
//        customView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        let heightConstraint = NSLayoutConstraint(item: customView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 250.0)
        let widthConstraint = NSLayoutConstraint(item: customView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 370.0)
        customView.addConstraints([heightConstraint, widthConstraint])
        customView.clipsToBounds = true
        }
//    func textFieldDidBeginEditing(text: String) {
//        print("TextField did begin editing with text: \(text)")
//    }
//    
//    func textFieldDidEndEditing(text: String) {
//        print("TextField did end editing with text: \(text)")
//    }

}
extension ViewController: FirstViewDelegate {
    func textFieldDidBeginEditing(text: String) {
        print("TextField did begin editing with text: \(text)")
    }
    
    func textFieldDidEndEditing(text: String) {
        print("TextField did end editing with text: \(text)")
    }
}

