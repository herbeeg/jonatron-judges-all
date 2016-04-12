//
//  Instructions.m
//  JonatronJudgesAll
//
//  Created by Jonathan Herbst on 31/12/2012.
//  Copyright Herbtacular Games 2013. All rights reserved.
//

#import "Instructions.h"
#import "GameSelection.h"
#import "SimpleAudioEngine.h"

CCLayer *instructionsBackgroundLayer;
CCLayer* instructionsButtons;
CCMenu* instructionsMenu;
CCMenuItemImage* instructionsBackButton;

CCSprite* instructionsBackgroundImage;

#pragma mark - Instructions

@implementation Instructions

+(CCScene *) scene{
    CCScene* instructionScene = [CCScene node];
    
    instructionsBackgroundLayer = [Instructions node];
    
    [instructionScene addChild: instructionsBackgroundLayer];
    
    return instructionScene;
}

-(id) init{
    if((self = [super init])){
        instructionsBackgroundImage = [CCSprite spriteWithFile:@"MenuImages/instructions_screen_background.png"];
        instructionsBackgroundImage.position = ccp(240, 160);
        
        [self addChild:instructionsBackgroundImage];
        [self drawInstructionsElements];
    }
    
    return self;
}

-(void) drawInstructionsElements{
    instructionsBackButton = [CCMenuItemImage itemWithNormalImage:@"MenuButtons/back_button.png"
                                                    selectedImage:@"MenuButtons/back_button_selected.png"
                                                           target:self
                                                         selector:@selector(backPressed:)];
    
    instructionsMenu = [CCMenu menuWithItems: instructionsBackButton, nil];
    [instructionsMenu alignItemsHorizontally];
    instructionsMenu.position = ccp(65, 40);
    
    [self addChild: instructionsMenu];
}

-(void) backPressed:(id)sender{
    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
    [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene: [GameSelection node]]];
}

- (void) dealloc{
	[super dealloc];
}

@end
