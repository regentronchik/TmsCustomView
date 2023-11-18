//
//  FirstView.swift
//  CustomViewHomework
//
//  Created by Алексей Козел on 14.11.2023.
//

import UIKit

protocol FirstViewDelegate: AnyObject {
    func textFieldDidBeginEditing(text: String)
    func textFieldDidEndEditing(text: String)
}

class FirstView: UIView, UITextFieldDelegate {
    
    
    
    
    
    @IBOutlet weak var text11: UITextField!
    
    @IBOutlet weak var text22: UITextField!
    
    
    @IBOutlet weak var text33: UITextField!
    
    
    
    
    weak var delegate: FirstViewDelegate?
    override init(frame: CGRect) {
        super.init(frame: frame)
        let xib = UINib(nibName: "FirstView", bundle: nil)
        let view = xib.instantiate(withOwner: self).first as! UIView
        view.frame = self.bounds
        addSubview(view)
//        text11.delegate = self
//        text22.delegate = self
//        text33.delegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if let text = textField.text {
            delegate?.textFieldDidBeginEditing(text: text)
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if let text = textField.text {
            delegate?.textFieldDidEndEditing(text: text)
        }
    }
    
}
