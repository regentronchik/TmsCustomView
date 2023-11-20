//
//  ViewController.swift
//  CustomViewHomework
//
//  Created by Алексей Козел on 14.11.2023.
//

import UIKit

class ViewController: UIViewController /*FirstViewDelegate*/ {

    let customView = FirstView(frame: .zero)
    let joystickView = JoystickView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
         joystickView.translatesAutoresizingMaskIntoConstraints = false
         view.addSubview(joystickView)
         
         NSLayoutConstraint.activate([
            joystickView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            joystickView.topAnchor.constraint(equalTo: view.centerYAnchor, constant: 100),
            joystickView.widthAnchor.constraint(equalToConstant: 200),
            joystickView.heightAnchor.constraint(equalToConstant: 200)
         ])

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

