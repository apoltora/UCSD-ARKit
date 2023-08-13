//
//  ThumbsUp.swift
//  VisualizingSceneSemantics
//
//  Created by Alexandra Poltorak on 8/12/23.
//  Copyright © 2023 Apple. All rights reserved.
//

import Foundation
import RealityKit
import CoreVideo

@available(iOS 14.0, *)
public class ThumbsUp: HandPosition {
    
    var thumbsUp: Bool = false // status of whether hand is in a thumbs up position
    
    override public func update() { // wondering if 'update' should return a bool for whether the position is happening
        // check if is thumbs up

            if isPosition() {
                self.thumbsUp = true
            }
            else{
                self.thumbsUp = false
            }
    }
    
    override public func isPosition() -> Bool {
        // checks if the thumb is above all other fingers y axis, with all fingers being relatively close on x axis to thumb
        
        // logic in here
        
        // self.joints - must grab thumb and compare with other fingers

            return false
    }
    
    override public func getIsPosition() -> Bool {
        return self.thumbsUp
    }
    
    override public var typeName: String {
        return String(describing: ThumbsUp.self)
    }
    
}
