//
//  GameSelection.m
//  JonatronJudgesAll
//
//  Created by Jonathan Herbst on 29/11/2012.
//  Copyright Herbtacular Games 2013. All rights reserved.
//

#import "GameSelection.h"
#import "EquationDiscombobulation.h"
#import "Instructions.h"
#import "ColourTypeMismatch.h"
#import "LexicalLinguine.h"
#import "FastTapping.h"
#import "MainMenu.h"

#import "SimpleAudioEngine.h"

CCLayer *selectionBackgroundLayer;
CCLayer *selectionButtonLayer;

CCMenuItemImage *buttonEquation;
CCMenuItemImage *buttonTapping;
CCMenuItemImage *buttonInstructions;
CCMenuItemImage *buttonColour;
CCMenuItemImage *buttonLexcial;
CCMenuItemImage *buttonBack;

CCMenu *selectionButtonMenu;

CCSprite *selectionBackgroundImage;
CCSprite *gameSelectionTitle;

BOOL backToMenu = FALSE;

#pragma mark - GameSelection

@implementation GameSelection

+(CCScene *) scene{
    CCScene *gameSelectionScene = [CCScene node];
    
    selectionBackgroundLayer = [GameSelection node];
    
    [gameSelectionScene addChild: selectionBackgroundLayer];
    
    return gameSelectionScene;
}

-(id) init{
    if((self = [super init])){
        selectionBackgroundImage = [CCSprite spriteWithFile: @"MenuImages/blank_background.png"];
        selectionBackgroundImage.position = ccp(240, 160);
        
        gameSelectionTitle = [CCSprite spriteWithFile:@"MenuImages/game_selection_title_45px.png"];
        gameSelectionTitle.position = ccp(130, 304);
        
        [self addChild: selectionBackgroundImage];
        [self addChild: gameSelectionTitle];
        [self drawGameSelectionElements];
    }
    
    backToMenu = FALSE;
    
    return self;
}

-(void) drawGameSelectionElements{
    buttonBack = [CCMenuItemImage itemWithNormalImage:@"MenuButtons/back_button.png"
                                            selectedImage:@"MenuButtons/back_button_selected.png"
                                                   target:self
                                                 selector:@selector(backSelected:)];
    
    buttonEquation = [CCMenuItemImage itemWithNormalImage:@"MenuButtons/menu_button_equation.png"
                                            selectedImage:@"MenuButtons/menu_button_equation_selected.png"
                                                   target:self
                                                 selector:@selector(equationSelected:)];
    
    buttonTapping = [CCMenuItemImage itemWithNormalImage:@"MenuButtons/menu_button_tapping.png"
                                           selectedImage:@"MenuButtons/menu_button_tapping_selected.png"
                                                  target:self
                                                selector:@selector(tappingSelected:)];
    
    buttonInstructions = [CCMenuItemImage itemWithNormalImage:@"MenuButtons/menu_button_instructions.png"
                                                selectedImage:@"MenuButtons/menu_button_instructions_selected.png"
                                                       target:self
                                                     selector:@selector(instructionsSelected:)];
    
    buttonColour = [CCMenuItemImage itemWithNormalImage:@"MenuButtons/menu_button_colour_type.png"
                                          selectedImage:@"MenuButtons/menu_button_colour_type_selected.png"
                                                 target:self
                                               selector:@selector(colourSelected:)];
    
    buttonLexcial = [CCMenuItemImage itemWithNormalImage:@"MenuButtons/menu_button_lexical.png"
                                          selectedImage:@"MenuButtons/menu_button_lexical_selected.png"
                                                 target:self
                                               selector:@selector(lexicalSelected:)];
    
    selectionButtonMenu = [CCMenu menuWithItems: buttonEquation, buttonTapping, buttonInstructions, buttonColour, buttonLexcial, buttonBack, nil];
    
    buttonEquation.position = ccp(-160, 90);
    buttonTapping.position = ccp(160, 90);
    buttonInstructions.position = ccp(0, 25);
    buttonColour.position = ccp(-160, -40);
    buttonLexcial.position = ccp(160, -40);
    buttonBack.position = ccp(0, -120);
    
    [self addChild: selectionButtonMenu];
}

-(void) backSelected:(id)sender{
    backToMenu = TRUE;
    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
    [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene: [MainMenu node]]];
}

-(void) equationSelected:(id)sender{
    backToMenu = FALSE;
    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
    [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene: [EquationDiscombobulation node]]];
}

-(void) tappingSelected:(id)sender{
    backToMenu = FALSE;
    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
    [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene: [FastTapping node]]];
}

-(void) instructionsSelected:(id)sender{
    backToMenu = TRUE;
    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
    [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene: [Instructions node]]];
}

-(void) colourSelected:(id)sender{
    backToMenu = FALSE;
    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
    [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene: [ColourTypeMismatch node]]];
}

-(void) lexicalSelected:(id)sender{
    backToMenu = FALSE;
    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
    [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene: [LexicalLinguine node]]];
}

-(void) onExit{
    if(!backToMenu){
        [[SimpleAudioEngine sharedEngine] stopBackgroundMusic];
    }
    [super onExit];
}

- (void) dealloc{
	[super dealloc];
}

@end
