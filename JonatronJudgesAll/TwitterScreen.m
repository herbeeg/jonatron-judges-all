//
//  TwitterScreen.m
//  JonatronJudgesAll
//
//  Created by Jonathan Herbst on 28/11/2012.
//  Copyright Herbtacular Games 2013. All rights reserved.
//

#import "TwitterScreen.h"
#import "MainMenu.h"
#import "SimpleAudioEngine.h"

CCLayer *twitterBackgroundLayer;
CCLayer *twitterScreenButtons;

CCMenu *twitterMenu;

CCMenuItemImage *twitterBackButton;

CCSprite *twitterBackgroundImage;

#pragma mark - TwitterScreen

@implementation TwitterScreen

+(CCScene *) scene{
    CCScene *twitterScene = [CCScene node];
    
    twitterBackgroundLayer = [TwitterScreen node];
    
    [twitterScene addChild: twitterBackgroundLayer];
    
    return twitterScene;
}

-(id) init{
    if((self = [super init])){
        twitterBackgroundImage = [CCSprite spriteWithFile: @"MenuImages/twitter_screen_background.png"];
        twitterBackgroundImage.position = ccp(240, 160);
        
        [self addChild: twitterBackgroundImage];
        [self drawTwitterElements];
    }
    
    return self;
}

-(void) drawTwitterElements{
    twitterBackButton = [CCMenuItemImage itemWithNormalImage:@"MenuButtons/back_button.png"
                                               selectedImage:@"MenuButtons/back_button_selected.png"
                                                      target:self
                                                    selector:@selector(backTouched:)];
    
    twitterMenu = [CCMenu menuWithItems:twitterBackButton, nil];
    [twitterMenu alignItemsHorizontally];
    twitterMenu.position = ccp(65, 40);
    
    [self addChild: twitterMenu];
}

-(void) backTouched:(id)sender{
    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
    [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene: [MainMenu node]]];
}

- (void) dealloc{
	[super dealloc];
}

-(void) onExit{
    [super onExit];
}

@end
