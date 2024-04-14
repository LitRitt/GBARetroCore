//
//  GBATypes.h
//  GBARetroCore
//
//  Created by Chris Rittenhouse on 4/13/24.
//  Copyright © 2024 Lit Apps. All rights reserved.
//

@import CRetroCore;

// Extensible Enums
FOUNDATION_EXPORT GameType const GameTypeGBA NS_SWIFT_NAME(gba);
FOUNDATION_EXPORT GameType const GameTypeGBC NS_SWIFT_NAME(gbc);

FOUNDATION_EXPORT CheatType const CheatTypeActionReplay;
FOUNDATION_EXPORT CheatType const CheatTypeGameShark;
FOUNDATION_EXPORT CheatType const CheatTypeCodeBreaker;
FOUNDATION_EXPORT CheatType const CheatTypeGameGenie;

FOUNDATION_EXPORT NSNotificationName const GBADidActivateGyroNotification NS_REFINED_FOR_SWIFT;
FOUNDATION_EXPORT NSNotificationName const GBADidDeactivateGyroNotification NS_REFINED_FOR_SWIFT;
