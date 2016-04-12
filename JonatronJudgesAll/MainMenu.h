//
//  MainMenu.h
//  JonatronJudgesAll
//
//  Created by Jonathan Herbst on 16/11/2012.
//  Copyright Herbtacular Games 2013. All rights reserved.
//


#import <GameKit/GameKit.h>

// When you import this file, you import all the cocos2d classes
#import "cocos2d.h"

// HelloWorldLayer
@interface MainMenu : CCLayer <GKAchievementViewControllerDelegate, GKLeaderboardViewControllerDelegate>
{
}

+(CCScene *) scene;

@end
