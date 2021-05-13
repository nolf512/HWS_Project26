//
//  GameScene.swift
//  HWS_Project26
//
//  Created by J on 2021/05/13.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
  
    override func didMove(to view: SKView) {
     
        }
        
    func loadView() {
        guard let levelURL = Bundle.main.url(forResource: "level1", withExtension: "txt") else { fatalError("Could not find level1.txt in the app bundle")
        }
        guard let levelString = try? String(contentsOf: levelURL) else {
            fatalError("Could not load level1.txt from the app bundle")
        }
        
        let lines = levelString.components(separatedBy: "\n")
        
        for (row, line) in lines.reversed().enumerated() {
            for (column, letter) in line.enumerated() {
                let position = CGPoint(x: (64 * column) + 32, y: (64 * row) + 32)
                
                if letter == "x" {
                    //wall
                } else if letter == "v" {
                    //vortex
                } else if letter == "s" {
                    //star
                } else if letter == "f" {
                    //finish point
                } else {
                    fatalError("Unknown level letter: \(letter)")
                }
            }
        }
    }
}
