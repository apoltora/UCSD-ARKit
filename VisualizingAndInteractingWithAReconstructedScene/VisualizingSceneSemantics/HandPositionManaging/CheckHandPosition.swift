//
//  CheckHandPosition.swift
//  VisualizingSceneSemantics
//
//  Created by Alexandra Poltorak on 8/12/23.
//  Copyright © 2023 Apple. All rights reserved.
//

import Foundation
import RealityKit
import CoreVideo



@available(iOS 14.0, *)
public class CheckHandPosition {
    
    public enum Position: String, CaseIterable {
        case Pinch = "Pinch"
        case ThumbsUp = "ThumbsUp"
    }
    
    private var possiblePositions = [HandPosition]()
        
    private var joints:[HandTracker2D.HandJointName : Entity]
    
    public init(joints: [HandTracker2D.HandJointName : Entity]) {
        // determine which hand position by calling an update on each of them and determining
        self.joints = joints
        
        
        // find a way to loop through all possible positions and initialize in a loop
        let thumbsUp = ThumbsUp(joints:self.joints)
        let pinch = Pinch(joints:self.joints)
        
        self.possiblePositions.append(thumbsUp)
        self.possiblePositions.append(pinch)

    }
    
    public func update() {
        for position in self.possiblePositions {
            position.update()
        }
    }
    
    // returns hand position if position is current, otherwise nil
    public func returnCurrentPosition() -> HandPosition? {
        for position in self.possiblePositions {
            if position.getIsPosition() {
                return position
            }
        }
        return nil
    }
    
}
