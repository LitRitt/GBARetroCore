//
//  mGBA.swift
//  mGBADeltaCore
//
//  Created by Ian Clawson on 7/26/21.
//  Copyright © 2021 Riley Testut. All rights reserved.
//

import Foundation
import AVFoundation

import RetroCore
@_exported import GBABridge
@_exported import GBASwift

extension GBAGameInput: Input
{
    public var type: InputType {
        return .game(.gba)
    }
}

extension GBCGameInput: Input
{
    public var type: InputType {
        return .game(.gbc)
    }
}

public struct GBA: RetroCoreProtocol
{
    public static let core = GBA()
    
    public var name: String { "GBA" }
    public var identifier: String { "com.litritt.GBARetroCore" }
    
    public var gameType: GameType { .gba }
    public var gameInputType: Input.Type { GBAGameInput.self }
    public var gameSaveFileExtension: String { "sav" }
    
    public let audioFormat = AVAudioFormat(commonFormat: .pcmFormatInt16, sampleRate: 32768, channels: 2, interleaved: true)!
    public let videoFormat = VideoFormat(format: .bitmap(.rgba8), dimensions: CGSize(width: 240, height: 160))

    public var supportedCheatFormats: Set<CheatFormat> {
        let actionReplayFormat = CheatFormat(name: NSLocalizedString("Action Replay", comment: ""), format: "XXXXXXXX YYYYYYYY", type: .actionReplay)
        let gameSharkFormat = CheatFormat(name: NSLocalizedString("GameShark", comment: ""), format: "XXXXXXXX YYYYYYYY", type: .gameShark)
        let codeBreakerFormat = CheatFormat(name: NSLocalizedString("Code Breaker", comment: ""), format: "XXXXXXXX YYYY", type: .codeBreaker)
        return [actionReplayFormat, gameSharkFormat, codeBreakerFormat]
    }

    public var emulatorBridge: EmulatorBridging { GBAEmulatorBridge.shared as! EmulatorBridging }
    
    public var resourceBundle: Bundle { Bundle.module }
    
    private init()
    {
    }
}

public struct GBC: RetroCoreProtocol
{
    public static let core = GBC()
    
    public var name: String { "GBC" }
    public var identifier: String { "com.litritt.GBCRetroCore" }
    
    public var gameType: GameType { .gbc }
    public var gameInputType: Input.Type { GBCGameInput.self }
    public var gameSaveFileExtension: String { "sav" }
    
    public let audioFormat = AVAudioFormat(commonFormat: .pcmFormatInt16, sampleRate: 32768, channels: 2, interleaved: true)!
    public let videoFormat = VideoFormat(format: .bitmap(.rgba8), dimensions: CGSize(width: 256, height: 224))

    public var supportedCheatFormats: Set<CheatFormat> {
        let gameGenieFormat = CheatFormat(name: NSLocalizedString("Game Genie", comment: ""), format: "XXX-YYY-ZZZ", type: .gameGenie)
        let gameSharkFormat = CheatFormat(name: NSLocalizedString("GameShark", comment: ""), format: "XXXXXXXX", type: .gameShark)
        return [gameGenieFormat, gameSharkFormat]
    }

    public var emulatorBridge: EmulatorBridging { GBCEmulatorBridge.shared as! EmulatorBridging }
    
    public var resourceBundle: Bundle { Bundle.module }
    
    private init()
    {
    }
}
