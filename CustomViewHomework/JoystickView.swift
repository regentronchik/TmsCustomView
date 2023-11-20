import UIKit

class JoystickView: UIView {
    
    var buttonPressed: ((String) -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        let upImageView = UIImageView(frame: CGRect(x: frame.width/2 - 25, y: 0, width: 50, height: 50))
            upImageView.image = UIImage(named: "upArrow")
            upImageView.isUserInteractionEnabled = true
            let upTapGesture = UITapGestureRecognizer(target: self, action: #selector(upButtonPressed))
            upImageView.addGestureRecognizer(upTapGesture)
            addSubview(upImageView)
        
        let downImageView = UIImageView(frame: CGRect(x: frame.width/2 - 25, y: frame.height - 50, width: 50, height: 50))
            downImageView.image = UIImage(named: "downArrow")
            downImageView.isUserInteractionEnabled = true
            let downTapGesture = UITapGestureRecognizer(target: self, action: #selector(downButtonPressed))
            downImageView.addGestureRecognizer(downTapGesture)
            addSubview(downImageView)
        
        let rightImageView = UIImageView(frame: CGRect(x: frame.width - 50, y: frame.height/2 - 25, width: 50, height: 50))
            rightImageView.image = UIImage(named: "rightArrow")
            rightImageView.isUserInteractionEnabled = true
            let rightTapGesture = UITapGestureRecognizer(target: self, action: #selector(rightButtonPressed))
            rightImageView.addGestureRecognizer(rightTapGesture)
            addSubview(rightImageView)
        
        let leftImageView = UIImageView(frame: CGRect(x: 0, y: frame.height/2 - 25, width: 50, height: 50))
            leftImageView.image = UIImage(named: "leftArrow")
            leftImageView.isUserInteractionEnabled = true
            let leftTapGesture = UITapGestureRecognizer(target: self, action: #selector(leftButtonPressed))
            leftImageView.addGestureRecognizer(leftTapGesture)
            addSubview(leftImageView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    @objc func upButtonPressed() {
        buttonPressed?("Up")
    }
    
    @objc func downButtonPressed() {
        buttonPressed?("Down")
    }
    
    @objc func leftButtonPressed() {
        buttonPressed?("Left")
    }
    
    @objc func rightButtonPressed() {
        buttonPressed?("Right")
    }
}
