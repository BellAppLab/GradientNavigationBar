//
//  GradientNavigationBar.swift
//  Pods
//
//  Created by Bell App Lab on 11/08/2016.
//
//

import UIKit

/**
 
 */
public class GradientNavigationBar: UINavigationBar
{
    //MARK: Consts
    public static var defaultOpacity: Float = 0.5
    
    //MARK: Gradient
    public private(set) weak var gradientLayer: CAGradientLayer?
    
    public dynamic var colors: [UIColor]? {
        didSet {
            guard let colors = self.colors else { self.gradientLayer?.removeFromSuperlayer(); return }
            
            let layer = CAGradientLayer()
            layer.opacity = self.translucent ? GradientNavigationBar.defaultOpacity : 1.0
            self.layer.insertSublayer(layer, atIndex: 1)
            self.gradientLayer = layer
            
            var cgColors = [CGColorRef]()
            for color in colors {
                cgColors.append(color.CGColor)
            }
            layer.colors = cgColors
            
            if let locations = self.locations {
                layer.locations = locations
            }
            
            layer.startPoint = startPoint
            layer.endPoint = endPoint
        }
    }
    
    public dynamic var locations: [Float]? {
        didSet {
            guard let layer = self.gradientLayer, let locations = self.locations else {
                self.gradientLayer?.locations = nil
                return
            }
            layer.locations = locations
        }
    }
    
    public dynamic var startPoint = CGPointZero {
        didSet {
            guard let layer = self.gradientLayer else { return }
            layer.startPoint = self.startPoint
        }
    }
    
    public dynamic var endPoint = CGPointZero {
        didSet {
            guard let layer = self.gradientLayer else { return }
            layer.endPoint = self.endPoint
        }
    }
    
    //MARK: View Life Cycle
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        guard let layer = self.gradientLayer else { return }
        
        let statusBarHeight = UIApplication.sharedApplication().statusBarFrame.size.height
        layer.frame = CGRectMake(0, 0 - statusBarHeight, CGRectGetWidth(self.bounds), CGRectGetHeight(self.bounds) + statusBarHeight)
    }
}
