//
//  GBATypes.m
//  GBARetroCore
//
//  Created by Ian Clawson on 7/26/21.
//  Copyright © 2021 Riley Testut. All rights reserved.
//

#import "GBATypes.h"

GameType const GameTypeGBA = @"com.litritt.reignited.game.gba";
GameType const GameTypeGBC = @"com.litritt.reignited.game.gbc";

CheatType const CheatTypeActionReplay = @"ActionReplay";
CheatType const CheatTypeGameShark = @"GameShark";
CheatType const CheatTypeCodeBreaker = @"CodeBreaker";
CheatType const CheatTypeGameGenie = @"GameGenie";

NSNotificationName const GBADidActivateGyroNotification = @"GBADidActivateGyroNotification";
NSNotificationName const GBADidDeactivateGyroNotification = @"GBADidDeactivateGyroNotification";
