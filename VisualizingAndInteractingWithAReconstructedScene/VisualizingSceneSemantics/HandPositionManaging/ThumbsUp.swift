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
import Vision

@available(iOS 14.0, *)
public class ThumbsUp: HandPosition {
    
    var thumbsUp: Bool = false // status of whether hand is in a thumbs up position
    
    override public var typeName: String {
        return String(describing: ThumbsUp.self)
    }
    
    override public func update() { // wondering if 'update' should return a bool for whether the position is happening
        // check if is thumbs up

        // requires that there exists at least two frames in a row of thumbsUp to return true for isPosition
        if isPosition() && self.previous{
                self.thumbsUp = true
            }
            else{
                self.thumbsUp = false
            }
        self.previous = self.thumbsUp
    }
    
    override public func isPosition() -> Bool {
        // checks if the thumb is above all other fingers y axis, with all fingers being relatively close on x axis to thumb
        
        // logic in here
        // self.joints - must grab thumb and compare with other fingers
        
        let thumbTip = self.joints[VNHumanHandPoseObservation.JointName.thumbTip]
        
        let otherTips = [self.joints[VNHumanHandPoseObservation.JointName.indexTip], self.joints[VNHumanHandPoseObservation.JointName.middleTip], self.joints[VNHumanHandPoseObservation.JointName.ringTip], self.joints[VNHumanHandPoseObservation.JointName.littleTip]]
        
        // top right of screen is (0,0)
        for tip in otherTips {
            if (tip!.y < thumbTip!.y) {
                return false
            }
        }
        return true
    }
    
    override public func getIsPosition() -> Bool {
        return self.thumbsUp
    }
    
    override public func execute() {
        // want to control what happens when we detect a thumbs up
        
    }
    
}
