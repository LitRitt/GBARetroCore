//
//  GBAGameInput.swift
//  GBADeltaCore
//
//  Created by Ian Clawson on 7/26/21.
//  Copyright © 2021 Riley Testut. All rights reserved.
//


import RetroCore

// Declared in GBASwift so we can use it from mGBABridge.
@objc public enum GBAGameInput: Int, _Input
{
    case up = 6
    case down = 7
    case left = 5
    case right = 4
    case a = 0
    case b = 1
    case l = 9
    case r = 8
    case start = 3
    case select = 2
}

@objc public enum GBCGameInput: Int, _Input
{
    case up = 6
    case down = 7
    case left = 5
    case right = 4
    case a = 0
    case b = 1
    case l = 9
    case r = 8
    case start = 3
    case select = 2
}
