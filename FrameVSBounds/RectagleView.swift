//
//  RectaglesView.swift
//  FrameVSBounds
//
//  Created by 엄철찬 on 2022/03/02.
//

import Foundation
import UIKit

class RectangleView{
    
    let view1 : UIView = {
       let view = UIView()
        view.backgroundColor = .red
        view.frame = CGRect(x: 50, y: 100, width: 300, height: 300)
        view.bounds.origin.x = 30
        view.bounds.origin.y = 30
        return view
    }()
    
    let view2 : UIView = {
       let view = UIView()
        view.backgroundColor = .green
        view.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        return view
    }()
    
    let view3 : UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        view.frame = CGRect(x: 100, y: 250, width: 200, height: 200)
        return view
    }()
    
    let view4 : UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.frame = CGRect(x: 100, y: 250, width: 200, height: 200)
        return view
    }()
    
    func addRectViews(view : UIView){
        view.addSubview(view1)
        view1.addSubview(view2)
    }
    
    func addRectView(view : UIView){
        view.addSubview(view4)
        view.addSubview(view3)
    }
    
}
