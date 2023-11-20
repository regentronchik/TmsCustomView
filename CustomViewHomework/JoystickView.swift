import UIKit

class JoystickView: UIView {
    
    var buttonPressed: ((String) -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        let upImageView = UIImageView()
            upImageView.image = UIImage(named: "upArrow")
            upImageView.isUserInteractionEnabled = true
            let upTapGesture = UITapGestureRecognizer(target: self, action: #selector(upButtonPressed))
            upImageView.addGestureRecognizer(upTapGesture)
            addSubview(upImageView)
        
        let downImageView = UIImageView()
            downImageView.image = UIImage(named: "downArrow")
            downImageView.isUserInteractionEnabled = true
            let downTapGesture = UITapGestureRecognizer(target: self, action: #selector(downButtonPressed))
            downImageView.addGestureRecognizer(downTapGesture)
            addSubview(downImageView)
        
        let rightImageView = UIImageView()
            rightImageView.image = UIImage(named: "rightArrow")
            rightImageView.isUserInteractionEnabled = true
            let rightTapGesture = UITapGestureRecognizer(target: self, action: #selector(rightButtonPressed))
            rightImageView.addGestureRecognizer(rightTapGesture)
            addSubview(rightImageView)
        
        let leftImageView = UIImageView()
            leftImageView.image = UIImage(named: "leftArrow")
            leftImageView.isUserInteractionEnabled = true
            let leftTapGesture = UITapGestureRecognizer(target: self, action: #selector(leftButtonPressed))
            leftImageView.addGestureRecognizer(leftTapGesture)
            addSubview(leftImageView)
        
        upImageView.translatesAutoresizingMaskIntoConstraints = false
        upImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        upImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        upImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        upImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
                
        downImageView.translatesAutoresizingMaskIntoConstraints = false
        downImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        downImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10).isActive = true
        downImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        downImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
                
        leftImageView.translatesAutoresizingMaskIntoConstraints = false
        leftImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        leftImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10).isActive = true
        leftImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        leftImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
                
        rightImageView.translatesAutoresizingMaskIntoConstraints = false
        rightImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        rightImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10).isActive = true
        rightImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        rightImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true

        
        
        
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
