//
//  ViewController.swift
//  TestPopup
//
//  Created by xiilab on 2018. 5. 11..
//  Copyright © 2018년 xiilab. All rights reserved.
//

import UIKit
import SwiftMessages

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    let view = MessageView.viewFromNib(layout: .centeredView)
//    view.iconImageView = UIImageView(image: #imageLiteral(resourceName: "imgLevelUpPopup"))
    view.iconImageView?.image = #imageLiteral(resourceName: "imgLevelUpPopup")
    
    view.titleLabel?.text = "축하합니다!\n새로운 프로필을 얻었습니다."
    view.button?.setTitle("나중에 하기", for: .normal)
    view.button?.setTitleColor(.gray, for: .normal)
    
    var config = SwiftMessages.Config()
    config.presentationStyle = .center
    config.duration = .forever
    config.dimMode = .gray(interactive: false)
    config.interactiveHide = false
    
    SwiftMessages.show(config: config, view: view)
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

