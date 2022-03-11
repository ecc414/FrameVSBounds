//
//  RectangleController.swift
//  FrameVSBounds
//
//  Created by 엄철찬 on 2022/03/03.
//

import Foundation
import UIKit
import SnapKit

class Labels {
    //MARK: - For ViewController
    //MARK: - Labels
    let view1FrameLabel : UILabel = {
       let label = UILabel()
        label.textAlignment = .center
        return label
    }()
    let view1BoundsLabel : UILabel = {
       let label = UILabel()
        label.textAlignment = .center
        return label
    }()
    let view2FrameLabel : UILabel = {
       let label = UILabel()
        label.textAlignment = .center
        return label
    }()
    let view2BoundsLabel : UILabel = {
       let label = UILabel()
        label.textAlignment = .center
        return label
    }()
    let view1FrameXLabel : UILabel = {
       let label = UILabel()
        label.textAlignment = .center
        label.text = "frame\nX"
        label.textColor = .red
        label.numberOfLines = 2
        return label
    }()
    let view1FrameYLabel : UILabel = {
       let label = UILabel()
        label.textAlignment = .center
        label.text = "frame\nY"
        label.textColor = .red
        label.numberOfLines = 2
        return label
    }()
    let view1BoundsXLabel : UILabel = {
       let label = UILabel()
        label.textAlignment = .center
        label.text = "bounds\nX"
        label.textColor = .red
        label.numberOfLines = 2
        return label
    }()
    let view1BoundsYLabel : UILabel = {
       let label = UILabel()
        label.textAlignment = .center
        label.text = "bounds\nY"
        label.textColor = .red
        label.numberOfLines = 2
        return label
    }()
    let view2FrameXLabel : UILabel = {
       let label = UILabel()
        label.textAlignment = .center
        label.text = "frame\nX"
        label.textColor = .green
        label.numberOfLines = 2
        return label
    }()
    let view2FrameYLabel : UILabel = {
       let label = UILabel()
        label.textAlignment = .center
        label.text = "frame\nY"
        label.textColor = .green
        label.numberOfLines = 2
        return label
    }()
    
    func addLabelsForViewController(view:UIView){
        view.addSubview(view1FrameLabel)
        view.addSubview(view1BoundsLabel)
        view.addSubview(view2FrameLabel)
        view.addSubview(view2BoundsLabel)
        view.addSubview(view1FrameXLabel)
        view.addSubview(view1FrameYLabel)
        view.addSubview(view1BoundsXLabel)
        view.addSubview(view1BoundsYLabel)
        view.addSubview(view2FrameXLabel)
        view.addSubview(view2FrameYLabel)
    }
    
    func setConstraintsForViewController(buttons : UIButton...) {
        view1FrameLabel.snp.makeConstraints{ make in
            make.width.centerX.equalToSuperview()
            make.bottom.equalTo(buttons[3].snp.top).offset(-60)
        }
        view1BoundsLabel.snp.makeConstraints{ make in
            make.width.centerX.equalToSuperview()
            make.bottom.equalTo(buttons[3].snp.top).offset(-90)
        }
        view2FrameLabel.snp.makeConstraints{ make in
            make.width.centerX.equalToSuperview()
            make.bottom.equalTo(buttons[3].snp.top).offset(-120)
        }
        view2BoundsLabel.snp.makeConstraints{ make in
            make.width.centerX.equalToSuperview()
            make.bottom.equalTo(buttons[3].snp.top).offset(-150)
        }
        view1FrameXLabel.snp.makeConstraints{ make in
            make.bottom.equalTo(buttons[0].snp.top).offset(-10)
            make.centerX.equalTo(buttons[0].snp.centerX)
        }
        view1FrameYLabel.snp.makeConstraints{ make in
            make.bottom.equalTo(buttons[1].snp.top).offset(-10)
            make.centerX.equalTo(buttons[1].snp.centerX)
        }
        view1BoundsXLabel.snp.makeConstraints{ make in
            make.bottom.equalTo(buttons[2].snp.top).offset(-10)
            make.centerX.equalTo(buttons[2].snp.centerX)
        }
        view1BoundsYLabel.snp.makeConstraints{ make in
            make.bottom.equalTo(buttons[3].snp.top).offset(-10)
            make.centerX.equalTo(buttons[3].snp.centerX)
        }
        view2FrameXLabel.snp.makeConstraints{ make in
            make.bottom.equalTo(buttons[4].snp.top).offset(-10)
            make.centerX.equalTo(buttons[4].snp.centerX)
        }
        view2FrameYLabel.snp.makeConstraints{ make in
            make.bottom.equalTo(buttons[5].snp.top).offset(-10)
            make.centerX.equalTo(buttons[5].snp.centerX)
        }
    }
    
    //MARK: - For SizeViewController
    func addLabelsForSizeViewController(view:UIView){
        view.addSubview(view3FrameLabel)
        view.addSubview(view3BoundsLabel)
    }
    func setConstraintsForSizeViewController(buttons : UIButton) {
        view3BoundsLabel.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(buttons.snp.top).offset(-20)
        }
        view3FrameLabel.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(view3BoundsLabel.snp.top).offset(-10)
        }
    }
    
    let view3FrameLabel : UILabel = {
       let label = UILabel()
        label.textAlignment = .center
        label.textColor = .blue
        return label
    }()
    
    let view3BoundsLabel : UILabel = {
       let label = UILabel()
        label.textAlignment = .center
        label.textColor = .orange
        return label
    }()
    
 
}
