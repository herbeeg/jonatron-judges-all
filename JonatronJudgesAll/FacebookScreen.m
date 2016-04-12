//
//  FacebookScreen.m
//  JonatronJudgesAll
//
//  Created by Jonathan Herbst on 28/11/2012.
//  Copyright Herbtacular Games 2013. All rights reserved.
//

#import "FacebookScreen.h"
#import "MainMenu.h"
#import "SimpleAudioEngine.h"

CCLayer *facebookBackgroundLayer;
CCLayer *facebookButtonLayer;

CCMenu *facebookMenu;

CCMenuItemImage *facebookBackButton;

CCSprite *facebookBackgroundImage;

#pragma mark - FacebookScreen

@implementation FacebookScreen
    
+(CCScene *) scene{
    CCScene *facebookScene = [CCScene node];
    
    facebookBackgroundLayer = [FacebookScreen node];
    
    [facebookScene addChild: facebookBackgroundLayer];
    
    return facebookScene;
}

-(id) init{
    if((self = [super init])){
        facebookBackgroundImage = [CCSprite spriteWithFile: @"MenuImages/facebook_screen_background.png"];
        facebookBackgroundImage.position = ccp(240, 160);
        
        [self addChild: facebookBackgroundImage];
        [self drawFacebookElements];
    }
    
    return self;
}

-(void) drawFacebookElements{
    facebookBackButton = [CCMenuItemImage itemWithNormalImage:@"MenuButtons/back_button.png"
                                                selectedImage:@"MenuButtons/back_button_selected.png"
                                                       target:self
                                                     selector:@selector(backTouched:)];
    
    facebookMenu = [CCMenu menuWithItems: facebookBackButton, nil];
    [facebookMenu alignItemsHorizontally];
    facebookMenu.position = ccp(65, 40);
    
    [self addChild: facebookMenu];
}

-(void)backTouched:(id)sender{
    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
    [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene: [MainMenu node]]];
}

- (void) dealloc{
	[super dealloc];
}

@end
