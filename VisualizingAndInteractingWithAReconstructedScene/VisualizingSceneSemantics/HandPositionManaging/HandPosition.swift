//
//  HandPosition.swift
//  VisualizingSceneSemantics
//
//  Created by Alexandra Poltorak on 8/12/23.
//  Copyright © 2023 Apple. All rights reserved.
//

import Foundation
import RealityKit
import CoreVideo

@available(iOS 14.0, *)
public class HandPosition {
    
    private var joints: [HandTracker2D.HandJointName : Entity]
    // init will take in the current hand position in the frame
    public required init(joints: [HandTracker2D.HandJointName : Entity]) {
        self.joints = joints
    }
    
    public func isPosition() -> Bool {
        return false
    }
    
    public func update() {
        // override this function here for each hand position
        
        // in code checking if joints create a certain hand position
        // want to return a Bool
        
    }
    public func getIsPosition() -> Bool {
        return false
    }
    
    public var hashValue: Int {
        return ObjectIdentifier(self).hashValue
    }
    
    public var typeName: String {
        return String(describing: HandPosition.self)
    }
    
}
