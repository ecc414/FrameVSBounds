//
//  ViewController.swift
//  FrameVSBounds
//
//  Created by 엄철찬 on 2022/03/01.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let rectView = RectangleView()
    let labels   = Labels()
    let buttons  = Buttons()

    override func viewDidLoad() {
        super.viewDidLoad()
        //add components to view
        rectView.addRectViews(view: self.view)
        labels.addLabelsForViewController(view: self.view)
        buttons.addButtonsForViewController(view: self.view)
        //constraints
        buttons.setConstraintsForViewController(view: self.view)
        labels.setConstraintsForViewController(buttons: buttons.frameButtonIncreaseX,buttons.frameButtonIncreaseY,buttons.BoundsButtonIncreaseX,buttons.BoundsButtonIncreaseY,buttons.view2frameButtonIncreaseX,buttons.view2frameButtonIncreaseY)
        //update label content
        updateLabel()
    }
    
    func updateLabel(){
        labels.view1FrameLabel.text = "RedView's Frame origin:  \(rectView.view1.frame.origin.x) , \(rectView.view1.frame.origin.y)  "
        labels.view1BoundsLabel.text = "RedView's Bounds origin:  \(rectView.view1.bounds.origin.x) , \(rectView.view1.bounds.origin.y)  "
        labels.view2FrameLabel.text = "GreenView's Frame origin:  \(rectView.view2.frame.origin.x) , \(rectView.view2.frame.origin.y)  "
        labels.view2BoundsLabel.text = "GreenView's Bounds origin:  \(rectView.view2.bounds.origin.x) , \(rectView.view2.bounds.origin.y)  "
    }
    //MARK: - objc functions
    @objc func frameIncreaseX(){
        rectView.view1.frame.origin.x += 1
        updateLabel()
    }
    @objc func frameDecreaseX(){
        rectView.view1.frame.origin.x -= 1
        updateLabel()
    }
    @objc func frameIncreaseY(){
        rectView.view1.frame.origin.y += 1
        updateLabel()
    }
    @objc func frameDecreaseY(){
        rectView.view1.frame.origin.y -= 1
        updateLabel()
    }
    @objc func BoundsIncreaseX(){
        rectView.view1.bounds.origin.x += 1
        updateLabel()
    }
    @objc func BoundsDecreaseX(){
        rectView.view1.bounds.origin.x -= 1
        updateLabel()
    }
    @objc func BoundsIncreaseY(){
        rectView.view1.bounds.origin.y += 1
        updateLabel()
    }
    @objc func BoundsDecreaseY(){
        rectView.view1.bounds.origin.y -= 1
        updateLabel()
    }
    @objc func view2frameIncreaseX(){
        rectView.view2.frame.origin.x += 1
        updateLabel()
    }
    @objc func view2frameDecreaseX(){
        rectView.view2.frame.origin.x -= 1
        updateLabel()
    }
    @objc func view2frameIncreaseY(){
        rectView.view2.frame.origin.y += 1
        updateLabel()
    }
    @objc func view2frameDecreaseY(){
        rectView.view2.frame.origin.y -= 1
        updateLabel()
    }
    @objc func nextView(){
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "SizeView") as? SizeViewController else { return }
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
}


