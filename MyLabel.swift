import Foundation
import UIKit

@IBDesignable
class MyLabel: UILabel {
    
    public override func awakeFromNib(){
        super.awakeFromNib()
        configureLabel()
    }
    
    public override func prepareForInterfaceBuilder(){
        super.prepareForInterfaceBuilder()
        configureLabel()
    }
    
    func configureLabel(){
        
        
        //self.layer.shadowColor = UIColor.cyan.cgColor
        //self.layer.shadowRadius = 6
        self.layer.zPosition = 4
        self.layer.shadowOpacity = 0.9
        //MotivateLabel.layer.shadowOffset = CGSize(0)
        self.layer.masksToBounds = false
 
        
    }
    
}

extension MyLabel {
    
    @IBInspectable
    var shadowRadius: CGFloat {
        get { return layer.shadowRadius }
        set { layer.shadowRadius = newValue }
    }
    
    @IBInspectable
    override var shadowColor: UIColor? {
        get {
            if let color = layer.shadowColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.shadowColor = color.cgColor
                
            } else {
                layer.shadowColor = nil
            }
        }
    }
    
    @IBInspectable
    var shadowOpacity: Float {
        get { return layer.shadowOpacity }
        set { layer.shadowOpacity = newValue }
    }
}
