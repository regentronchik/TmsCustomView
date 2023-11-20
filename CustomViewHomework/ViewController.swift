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
        
        let joystickView = JoystickView(frame: CGRect(x: 50, y: 300, width: 150, height: 150))
        joystickView.backgroundColor = .gray
        joystickView.buttonPressed = { direction in
                    print("Pressed \(direction) button")}
        view.addSubview(joystickView)
        
        view.addSubview(customView)
        customView.delegate = self
        customView.translatesAutoresizingMaskIntoConstraints = false
        let heightConstraint = NSLayoutConstraint(item: customView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 250.0)
        let widthConstraint = NSLayoutConstraint(item: customView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 370.0)
        customView.addConstraints([heightConstraint, widthConstraint])
        customView.clipsToBounds = true
        }

}
extension ViewController: FirstViewDelegate {
    func textFieldDidBeginEditing(text: String) {
        print("TextField did begin editing with text: \(text)")
    }
    
    func textFieldDidEndEditing(text: String) {
        print("TextField did end editing with text: \(text)")
    }
}

