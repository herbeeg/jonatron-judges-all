//
//  MainMenu.m
//  JonatronJudgesAll
//
//  Created by Jonathan Herbst on 16/11/2012.
//  Copyright Herbtacular Games 2013. All rights reserved.
//

#import "MainMenu.h"
#import "TwitterScreen.h"
#import "FacebookScreen.h"
#import "GameSelection.h"
#import "HighScores.h"

#import "CCTouchDispatcher.h"

#import "AppDelegate.h"

#import "SimpleAudioEngine.h"

CCLayer *menuBackgroundLayer;
CCLayer *menuButtonsLayer;

CCSprite *menuBackground;

CCMenu *myMenu;
CCMenu *socialMenu;

CCMenuItemImage *mainMenuItemPlay;
CCMenuItemImage *mainMenuItemScores;

CCMenuItemImage *mainMenuItemTwitter;
CCMenuItemImage *mainMenuItemFacebook;

#pragma mark - MainMenu

@implementation MainMenu

+(CCScene *) scene
{
	CCScene *menuScene = [CCScene node];

	menuBackgroundLayer = [MainMenu node];

	[menuScene addChild: menuBackgroundLayer];

	return menuScene;
}

-(id) init
{
    [[SimpleAudioEngine sharedEngine] playBackgroundMusic:@"AudioFiles/menu_theme.mp3"];

	if( (self=[super init]) ) {
        menuBackground = [CCSprite spriteWithFile:@"MenuImages/main_menu_background.png"];
        menuBackground.position = ccp(240, 160);
        
        [self addChild:menuBackground z:0];
        [self drawMainMenuElements];
	}
	return self;
}

-(void) drawMainMenuElements{
    mainMenuItemPlay = [CCMenuItemImage itemWithNormalImage:@"MenuButtons/menu_button_play.png"
                                              selectedImage:@"MenuButtons/menu_button_play_selected.png"
                                                     target:self
                                                   selector:@selector(playTouched:)];
    
    mainMenuItemScores = [CCMenuItemImage itemWithNormalImage:@"MenuButtons/menu_button_scores.png"
                                                selectedImage:@"MenuButtons/menu_button_scores_selected.png"
                                                       target:self
                                                     selector:@selector(scoresTouched:)];
    
    mainMenuItemTwitter = [CCMenuItemImage itemWithNormalImage:@"MenuButtons/ball_social_template_resized_twitter.png"
                                                 selectedImage:@"MenuButtons/ball_social_template_resized_twitter_selected.png"
                                                        target:self
                                                      selector:@selector(twitterTouched:)];
    
    mainMenuItemFacebook = [CCMenuItemImage itemWithNormalImage:@"MenuButtons/ball_social_template_resized_facebook.png"
                                                  selectedImage:@"MenuButtons/ball_social_template_resized_facebook_selected.png"
                                                         target:self
                                                       selector:@selector(facebookTouched:)];
    
    myMenu = [CCMenu menuWithItems:mainMenuItemPlay, mainMenuItemScores, nil];
    [myMenu alignItemsHorizontallyWithPadding: 180];
    myMenu.position = ccp(240, 50);
    
    socialMenu = [CCMenu menuWithItems:mainMenuItemTwitter, mainMenuItemFacebook, nil];
    [socialMenu alignItemsHorizontallyWithPadding:5];
    socialMenu.position = ccp(425, 290);
    
    [self addChild:myMenu];
    [self addChild:socialMenu];
    
}

-(void) playTouched:(id)sender{
    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
    [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene: [GameSelection node]]];
}

-(void) scoresTouched:(id)sender{
    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
    [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene: [HighScores node]]];
}

-(void) twitterTouched:(id)sender{
    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
    [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene: [TwitterScreen node]]];
}

-(void) facebookTouched:(id)sender{
    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
    [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene: [FacebookScreen node]]];
}

- (void) registerWithTouchDispatcher {
    [[[CCDirector sharedDirector] touchDispatcher] addTargetedDelegate:self priority:0 swallowsTouches:YES];
}

- (BOOL) ccTouchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    return YES;
}

- (void) ccTouchEnded:(UITouch *)touch withEvent:(UIEvent *)event {
    CGPoint location = [self convertTouchToNodeSpace: touch];
}

- (void) onExit{
    [super onExit];
}

- (void) dealloc{
	[super dealloc];
}

#pragma mark GameKit delegate

-(void) achievementViewControllerDidFinish:(GKAchievementViewController *)viewController
{
	AppController *app = (AppController*) [[UIApplication sharedApplication] delegate];
	[[app navController] dismissModalViewControllerAnimated:YES];
}

-(void) leaderboardViewControllerDidFinish:(GKLeaderboardViewController *)viewController
{
	AppController *app = (AppController*) [[UIApplication sharedApplication] delegate];
	[[app navController] dismissModalViewControllerAnimated:YES];
}
@end
