//
//  GameViewController.swift
//  Swiftris
//
//  Created by angel diaz on 7/26/15.
//  Copyright (c) 2015 Angel Diaz. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    var scene: GameScene!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //configure the view.
        let skView = view as! SKView
        skView.multipleTouchEnabled = false
    
        // create and confiugre the scene.
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .AspectFill
        
        // present the scene.
        skView.presentScene(scene)
    }
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
