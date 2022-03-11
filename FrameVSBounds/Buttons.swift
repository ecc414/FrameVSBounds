//
//  Buttons.swift
//  FrameVSBounds
//
//  Created by 엄철찬 on 2022/03/03.
//

import Foundation
import UIKit
import SnapKit

class Buttons : NSObject {
    //MARK: - For ViewController
    //MARK: - addSubView
    func addButtonsForViewController(view : UIView){
        view.addSubview(frameButtonIncreaseX)
        view.addSubview(frameButtonDecreaseX)
        view.addSubview(frameButtonIncreaseY)
        view.addSubview(frameButtonDecreaseY)
        view.addSubview(BoundsButtonIncreaseX)
        view.addSubview(BoundsButtonDecreaseX)
        view.addSubview(BoundsButtonIncreaseY)
        view.addSubview(BoundsButtonDecreaseY)
        view.addSubview(view2frameButtonIncreaseX)
        view.addSubview(view2frameButtonDecreaseX)
        view.addSubview(view2frameButtonIncreaseY)
        view.addSubview(view2frameButtonDecreaseY)
        view.addSubview(nextButton)
    }
    //MARK: - Constraints
    func setConstraintsForViewController(view:UIView){
        frameButtonIncreaseX.snp.makeConstraints{ make in
            make.size.equalTo(50)
            make.leading.equalToSuperview().offset(10)
            make.bottom.equalTo(frameButtonDecreaseX.snp.top).offset(-10)
        }
        frameButtonDecreaseX.snp.makeConstraints{make in
            make.size.equalTo(50)
            make.leading.equalToSuperview().inset(10)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
        }
        frameButtonIncreaseY.snp.makeConstraints{ make in
            make.size.equalTo(50)
            make.leading.equalTo(frameButtonIncreaseX.snp.trailing).offset(10)
            make.bottom.equalTo(frameButtonDecreaseY.snp.top).offset(-10)
        }
        frameButtonDecreaseY.snp.makeConstraints{make in
            make.size.equalTo(50)
            make.leading.equalTo(frameButtonDecreaseX.snp.trailing).offset(10)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
        }
        BoundsButtonIncreaseX.snp.makeConstraints{ make in
            make.size.equalTo(50)
            make.leading.equalTo(frameButtonIncreaseY.snp.trailing).offset(10)
            make.bottom.equalTo(BoundsButtonDecreaseX.snp.top).offset(-10)
        }
        BoundsButtonDecreaseX.snp.makeConstraints{make in
            make.size.equalTo(50)
            make.leading.equalTo(frameButtonDecreaseY.snp.trailing).offset(10)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
        }
        BoundsButtonIncreaseY.snp.makeConstraints{ make in
            make.size.equalTo(50)
            make.leading.equalTo(BoundsButtonIncreaseX.snp.trailing).offset(10)
            make.bottom.equalTo(BoundsButtonDecreaseY.snp.top).offset(-10)
        }
        BoundsButtonDecreaseY.snp.makeConstraints{make in
            make.size.equalTo(50)
            make.leading.equalTo(BoundsButtonDecreaseX.snp.trailing).offset(10)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
        }
        view2frameButtonIncreaseX.snp.makeConstraints{ make in
            make.size.equalTo(50)
            make.trailing.equalTo(view2frameButtonIncreaseY.snp.leading).offset(-10)
            make.bottom.equalTo(view2frameButtonDecreaseX.snp.top).offset(-10)
        }
        view2frameButtonDecreaseX.snp.makeConstraints{make in
            make.size.equalTo(50)
            make.trailing.equalTo(view2frameButtonDecreaseY.snp.leading).offset(-10)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
        }
        view2frameButtonIncreaseY.snp.makeConstraints{ make in
            make.size.equalTo(50)
            make.trailing.equalToSuperview().offset(-10)
            make.bottom.equalTo(view2frameButtonDecreaseY.snp.top).offset(-10)
        }
        view2frameButtonDecreaseY.snp.makeConstraints{make in
            make.size.equalTo(50)
            make.trailing.equalToSuperview().offset(-10)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
        }
        nextButton.snp.makeConstraints{ make in
            make.top.trailing.equalTo(view.safeAreaLayoutGuide).inset(10)
        }
    }
    //MARK: - Buttons Declaration
    let frameButtonIncreaseX : UIButton = {
       let button = UIButton()
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 10
        let configuration = UIImage.SymbolConfiguration(pointSize: 20, weight: .regular, scale: .large)
        let Image = UIImage(systemName: "arrow.up", withConfiguration: configuration)
        button.setImage(Image, for: .normal)
        button.tintColor = .white
        button.addTarget(self, action: #selector(ViewController.frameIncreaseX), for: .touchUpInside)
        return button
    }()
    let frameButtonDecreaseX : UIButton = {
       let button = UIButton()
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 10
        let configuration = UIImage.SymbolConfiguration(pointSize: 20, weight: .regular, scale: .large)
        let Image = UIImage(systemName: "arrow.down", withConfiguration: configuration)
        button.setImage(Image, for: .normal)
        button.tintColor = .white
        button.addTarget(self, action: #selector(ViewController.frameDecreaseX), for: .touchUpInside)
        return button
    }()
    let frameButtonIncreaseY : UIButton = {
       let button = UIButton()
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 10
        let configuration = UIImage.SymbolConfiguration(pointSize: 20, weight: .regular, scale: .large)
        let Image = UIImage(systemName: "arrow.up", withConfiguration: configuration)
        button.setImage(Image, for: .normal)
        button.tintColor = .white
        button.addTarget(self, action: #selector(ViewController.frameIncreaseY), for: .touchUpInside)
        return button
    }()
    let frameButtonDecreaseY : UIButton = {
       let button = UIButton()
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 10
        let configuration = UIImage.SymbolConfiguration(pointSize: 20, weight: .regular, scale: .large)
        let Image = UIImage(systemName: "arrow.down", withConfiguration: configuration)
        button.setImage(Image, for: .normal)
        button.tintColor = .white
        button.addTarget(self, action: #selector(ViewController.frameDecreaseY), for: .touchUpInside)
        return button
    }()
    let BoundsButtonIncreaseX : UIButton = {
       let button = UIButton()
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 10
        let configuration = UIImage.SymbolConfiguration(pointSize: 20, weight: .regular, scale: .large)
        let Image = UIImage(systemName: "arrow.up", withConfiguration: configuration)
        button.setImage(Image, for: .normal)
        button.tintColor = .white
        button.addTarget(self, action: #selector(ViewController.BoundsIncreaseX), for: .touchUpInside)
        return button
    }()
    let BoundsButtonDecreaseX : UIButton = {
       let button = UIButton()
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 10
        let configuration = UIImage.SymbolConfiguration(pointSize: 20, weight: .regular, scale: .large)
        let Image = UIImage(systemName: "arrow.down", withConfiguration: configuration)
        button.setImage(Image, for: .normal)
        button.tintColor = .white
        button.addTarget(self, action: #selector(ViewController.BoundsDecreaseX), for: .touchUpInside)
        return button
    }()
    let BoundsButtonIncreaseY : UIButton = {
       let button = UIButton()
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 10
        let configuration = UIImage.SymbolConfiguration(pointSize: 20, weight: .regular, scale: .large)
        let Image = UIImage(systemName: "arrow.up", withConfiguration: configuration)
        button.setImage(Image, for: .normal)
        button.tintColor = .white
        button.addTarget(self, action: #selector(ViewController.BoundsIncreaseY), for: .touchUpInside)
        return button
    }()
    let BoundsButtonDecreaseY : UIButton = {
       let button = UIButton()
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 10
        let configuration = UIImage.SymbolConfiguration(pointSize: 20, weight: .regular, scale: .large)
        let Image = UIImage(systemName: "arrow.down", withConfiguration: configuration)
        button.setImage(Image, for: .normal)
        button.tintColor = .white
        button.addTarget(self, action: #selector(ViewController.BoundsDecreaseY), for: .touchUpInside)
        return button
    }()

    let view2frameButtonIncreaseX : UIButton = {
       let button = UIButton()
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 10
        let configuration = UIImage.SymbolConfiguration(pointSize: 20, weight: .regular, scale: .large)
        let Image = UIImage(systemName: "arrow.up", withConfiguration: configuration)
        button.setImage(Image, for: .normal)
        button.tintColor = .white
        button.addTarget(self, action: #selector(ViewController.view2frameIncreaseX), for: .touchUpInside)
        return button
    }()
    let view2frameButtonDecreaseX : UIButton = {
       let button = UIButton()
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 10
        let configuration = UIImage.SymbolConfiguration(pointSize: 20, weight: .regular, scale: .large)
        let Image = UIImage(systemName: "arrow.down", withConfiguration: configuration)
        button.setImage(Image, for: .normal)
        button.tintColor = .white
        button.addTarget(self, action: #selector(ViewController.view2frameDecreaseX), for: .touchUpInside)
        return button
    }()
    let view2frameButtonIncreaseY : UIButton = {
       let button = UIButton()
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 10
        let configuration = UIImage.SymbolConfiguration(pointSize: 20, weight: .regular, scale: .large)
        let Image = UIImage(systemName: "arrow.up", withConfiguration: configuration)
        button.setImage(Image, for: .normal)
        button.tintColor = .white
        button.addTarget(self, action: #selector(ViewController.view2frameIncreaseY), for: .touchUpInside)
        return button
    }()
    let view2frameButtonDecreaseY : UIButton = {
       let button = UIButton()
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 10
        let configuration = UIImage.SymbolConfiguration(pointSize: 20, weight: .regular, scale: .large)
        let Image = UIImage(systemName: "arrow.down", withConfiguration: configuration)
        button.setImage(Image, for: .normal)
        button.tintColor = .white
        button.addTarget(self, action: #selector(ViewController.view2frameDecreaseY), for: .touchUpInside)
        return button
    }()
    let nextButton : UIButton = {
        let button = UIButton()
        let configuration = UIImage.SymbolConfiguration(pointSize: 20, weight: .regular, scale: .large)
        let Image = UIImage(systemName: "arrow.right", withConfiguration: configuration)
        button.setImage(Image, for: .normal)
        button.addTarget(self, action: #selector(ViewController.nextView), for: .touchUpInside)
        return button
    }()
    
    //MARK: - For SizeViewController
    func addButtonsForSizeViewController(view : UIView){
        view.addSubview(backButton)
        view.addSubview(rotateLeftButton)
        view.addSubview(rotateRightButton)
    }
    
    func setConstraintsForSizeViewController(view:UIView){
        backButton.snp.makeConstraints{ make in
            make.top.trailing.equalTo(view.safeAreaLayoutGuide).inset(10)
        }
        rotateRightButton.snp.makeConstraints{ make in
            make.size.equalTo(50)
            make.centerX.equalToSuperview().offset(-30)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
        }
        rotateLeftButton.snp.makeConstraints{ make in
            make.size.equalTo(50)
            make.centerX.equalToSuperview().offset(30)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
        }
    }
    
    let backButton : UIButton = {
       let button = UIButton()
        let configuration = UIImage.SymbolConfiguration(pointSize: 20, weight: .regular, scale: .large)
        let image = UIImage(systemName: "arrow.left", withConfiguration: configuration)
        button.setImage(image, for: .normal)
        button.addTarget(self, action: #selector(SizeViewController.back), for: .touchUpInside)
        return button
    }()
    let rotateLeftButton : UIButton = {
       let button = UIButton()
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 10
        let configuration = UIImage.SymbolConfiguration(pointSize: 20, weight: .regular, scale: .large)
        let Image = UIImage(systemName: "arrow.counterclockwise", withConfiguration: configuration)
        button.setImage(Image, for: .normal)
        button.tintColor = .white
        button.addTarget(self, action: #selector(SizeViewController.turnLeft), for: .touchUpInside)
        return button
    }()
    let rotateRightButton : UIButton = {
       let button = UIButton()
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 10
        let configuration = UIImage.SymbolConfiguration(pointSize: 20, weight: .regular, scale: .large)
        let Image = UIImage(systemName: "arrow.clockwise", withConfiguration: configuration)
        button.setImage(Image, for: .normal)
        button.tintColor = .white
        button.addTarget(self, action: #selector(SizeViewController.turnRight), for: .touchUpInside)
        return button
    }()

}
