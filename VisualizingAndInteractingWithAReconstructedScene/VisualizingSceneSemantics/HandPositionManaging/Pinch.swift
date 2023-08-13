//
//  Pinch.swift
//  VisualizingSceneSemantics
//
//  Created by Alexandra Poltorak on 8/12/23.
//  Copyright © 2023 Apple. All rights reserved.
//

import Foundation
import RealityKit
import CoreVideo


@available(iOS 14.0, *)
public class Pinch: HandPosition {
    
    var pinch: Bool = false // status of whether hand is in a thumbs up position
    
    override public func update() { // wondering if 'update' should return a bool for whether the position is happening
        // check if is thumbs up

            if isPosition() {
                self.pinch = true
            }
            else{
                self.pinch = false
            }
    }
    
    override public func isPosition() -> Bool {
        // checks if thumb and forefinger are very close together in both x, y, and z
        
        // logic in here
        
        // self.joints - must grab forefinger and thumb
        
        return false
    }
    
    override public func getIsPosition() -> Bool {
        return self.pinch
    }
    
    override public var typeName: String {
        return String(describing: Pinch.self)
    }
    
}
