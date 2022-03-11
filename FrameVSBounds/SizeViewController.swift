//
//  SizeViewController.swift
//  FrameVSBounds
//
//  Created by 엄철찬 on 2022/03/02.
//

import UIKit
import SnapKit

class SizeViewController: UIViewController {

    let rectView = RectangleView()
    let buttons  = Buttons()
    let labels   = Labels()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //add components to view
        rectView.addRectView(view: self.view)
        buttons.addButtonsForSizeViewController(view: self.view)
        labels.addLabelsForSizeViewController(view: self.view)
        //constraints
        buttons.setConstraintsForSizeViewController(view: self.view)
        labels.setConstraintsForSizeViewController(buttons: buttons.rotateLeftButton)
        //update label content
        updateLabel()
    }
    //MARK: - objc functions
    @objc func back(){
        self.dismiss(animated: false, completion: nil)
    }
    @objc func turnLeft(){
        rotateOrangeView(angle: -.pi / 180)
        updateLabel()
        updateBlueView()
    }
    @objc func turnRight(){
        rotateOrangeView(angle: .pi / 180)
        updateLabel()
        updateBlueView()
    }
    
    func rotateOrangeView(angle : CGFloat){
        rectView.view3.transform = rectView.view3.transform.rotated(by:angle)
    }
    func updateLabel(){
        labels.view3FrameLabel.text = "Frame size : (\(round(rectView.view3.frame.size.height)) , \(round(rectView.view3.frame.size.width)))"
        labels.view3BoundsLabel.text = "Bounds size :  \(rectView.view3.bounds.size)"
    }
    func updateBlueView(){
        rectView.view4.transform = CGAffineTransform(scaleX: rectView.view3.frame.size.height/rectView.view3.bounds.size.height, y: rectView.view3.frame.size.width/rectView.view3.bounds.size.width)
    }
}
