//
//  FastTapping.m
//  JonatronJudgesAll
//
//  Created by Jonathan Herbst on 29/11/2012.
//  Copyright Herbtacular Games 2013. All rights reserved.
//

#import "FastTapping.h"
#import "MainMenu.h"
#import "GameFinish.h"
#import "SimpleAudioEngine.h"

CCLayer *fastBackgroundLayer;
CCLayer *fastButtonLayer;
CCLayer *fastScoreTimeLayer;
CCLayer *fastFaceLayer;

CCMenu *fastScoreMenu;
CCMenu *fastTimeMenu;
CCMenu *fastButtonMenu;

CCMenuItemImage *fastTappingMainButton;

CCSprite *fastBackgroundImage;

CCSprite *tappingFaceBean;
CCSprite *tappingFaceJackie;
CCSprite *tappingFacePixelJon;
CCSprite *tappingFaceTrololol;
CCSprite *tappingFaceJonatron;

CCMenuItemImage *fastScoreLetterS;
CCMenuItemImage *fastScoreLetterC;
CCMenuItemImage *fastScoreLetterO;
CCMenuItemImage *fastScoreLetterR;
CCMenuItemImage *fastScoreLetterE;
CCMenuItemImage *fastScoreLetterColon;
CCMenuItemImage *fastTimeLetterT;
CCMenuItemImage *fastTimeLetterI;
CCMenuItemImage *fastTimeLetterM;
CCMenuItemImage *fastTimeLetterE;
CCMenuItemImage *fastTimeLetterPoint;
CCMenuItemImage *fastTimeLetterColon;

//Numbers 1-3 reserved for scoring display and numbers 4-6 reserved for the time display
CCSprite *fastScoreNumber0_1;
CCSprite *fastScoreNumber0_2;
CCSprite *fastScoreNumber0_3;
CCSprite *fastScoreNumber0_4;
CCSprite *fastScoreNumber0_5;
CCSprite *fastScoreNumber0_6;
CCSprite *fastScoreNumber1_1;
CCSprite *fastScoreNumber1_2;
CCSprite *fastScoreNumber1_3;
CCSprite *fastScoreNumber1_4;
CCSprite *fastScoreNumber1_5;
CCSprite *fastScoreNumber1_6;
CCSprite *fastScoreNumber2_1;
CCSprite *fastScoreNumber2_2;
CCSprite *fastScoreNumber2_3;
CCSprite *fastScoreNumber2_4;
CCSprite *fastScoreNumber2_5;
CCSprite *fastScoreNumber2_6;
CCSprite *fastScoreNumber3_1;
CCSprite *fastScoreNumber3_2;
CCSprite *fastScoreNumber3_3;
CCSprite *fastScoreNumber3_4;
CCSprite *fastScoreNumber3_5;
CCSprite *fastScoreNumber3_6;
CCSprite *fastScoreNumber4_1;
CCSprite *fastScoreNumber4_2;
CCSprite *fastScoreNumber4_3;
CCSprite *fastScoreNumber4_4;
CCSprite *fastScoreNumber4_5;
CCSprite *fastScoreNumber4_6;
CCSprite *fastScoreNumber5_1;
CCSprite *fastScoreNumber5_2;
CCSprite *fastScoreNumber5_3;
CCSprite *fastScoreNumber5_4;
CCSprite *fastScoreNumber5_5;
CCSprite *fastScoreNumber5_6;
CCSprite *fastScoreNumber6_1;
CCSprite *fastScoreNumber6_2;
CCSprite *fastScoreNumber6_3;
CCSprite *fastScoreNumber6_4;
CCSprite *fastScoreNumber6_5;
CCSprite *fastScoreNumber6_6;
CCSprite *fastScoreNumber7_1;
CCSprite *fastScoreNumber7_2;
CCSprite *fastScoreNumber7_3;
CCSprite *fastScoreNumber7_4;
CCSprite *fastScoreNumber7_5;
CCSprite *fastScoreNumber7_6;
CCSprite *fastScoreNumber8_1;
CCSprite *fastScoreNumber8_2;
CCSprite *fastScoreNumber8_3;
CCSprite *fastScoreNumber8_4;
CCSprite *fastScoreNumber8_5;
CCSprite *fastScoreNumber8_6;
CCSprite *fastScoreNumber9_1;
CCSprite *fastScoreNumber9_2;
CCSprite *fastScoreNumber9_3;
CCSprite *fastScoreNumber9_4;
CCSprite *fastScoreNumber9_5;
CCSprite *fastScoreNumber9_6;

CCMenuItemSprite *fastScoreDigitOne;
CCMenuItemSprite *fastScoreDigitTwo;
CCMenuItemSprite *fastScoreDigitThree;
CCMenuItemSprite *fastTimeDigitOne;
CCMenuItemSprite *fastTimeDigitTwo;
CCMenuItemSprite *fastTimeDigitThree;

CCSprite *fastIntro3;
CCSprite *fastIntro2;
CCSprite *fastIntro1;
CCSprite *fastIntroGo;

CCSprite *fastTimeUp;

ccTime fastGameTime = 0.0f;
BOOL fastIntroFinished = NO;
BOOL fastAllChange = FALSE;
int fastTick = 0;
int fastTimeInt = 0;
float fastTimeLeft = 60.0f;
int fastUpdateCount = 0;

int fastScoreInt = 0;
int fastCurrentScore = 0;
int fastPrevScore = 0;

float fastJonatronTimeIntervals[21];
int fastFaceXPositions[14];
int fastFaceYPositions[9];

int faceRandomNumberXPos = -1;
int faceRandomNumberYPos = -1;

float faceChangeCountdownTimer = 0.0f;
BOOL otherFaceAllChange = FALSE;

BOOL fastJonatronInPlay = FALSE;
BOOL jonatronPlaced = FALSE;
float jonatronTimeInPlay = 0.0f;
float jonatronFaceCountdownTimer = 0.0f;
BOOL newJonatronCountdownNeeded = FALSE;

BOOL fastSelectionMade = FALSE;
BOOL fastTimeUpDrawn = FALSE;

#pragma mark - FastTapping

@implementation FastTapping

+(CCScene *) scene{
    CCScene *fastTappingScene = [CCScene node];
    
    fastBackgroundLayer = [FastTapping node];
    
    [fastTappingScene addChild: fastBackgroundLayer];
    
    return fastTappingScene;
}

-(void) onEnter{
    [self schedule:@selector(update:)];
    [super onEnter];
}

-(id) init{
    fastScoreTimeLayer = [CCLayer node];
    fastButtonLayer = [CCLayer node];
    fastFaceLayer = [CCLayer node];
    
    if((self = [super init])){
        fastBackgroundImage = [CCSprite spriteWithFile: @"MenuImages/blank_background.png"];
        fastBackgroundImage.position = ccp(240, 160);
        
        [self addChild: fastBackgroundImage];
        [self addChild: fastButtonLayer];
        [self addChild: fastScoreTimeLayer];
        [self addChild: fastFaceLayer];
        [self initScoreTimeElements];
        [self initFastOtherGraphics];
    }
    
    fastFaceXPositions[0] = 40;
    fastFaceXPositions[1] = 70;
    fastFaceXPositions[2] = 100;
    fastFaceXPositions[3] = 130;
    fastFaceXPositions[4] = 160;
    fastFaceXPositions[5] = 190;
    fastFaceXPositions[6] = 220;
    fastFaceXPositions[7] = 250;
    fastFaceXPositions[8] = 280;
    fastFaceXPositions[9] = 310;
    fastFaceXPositions[10] = 340;
    fastFaceXPositions[11] = 370;
    fastFaceXPositions[12] = 400;
    fastFaceXPositions[13] = 430;
    
    fastFaceYPositions[0] = 40;
    fastFaceYPositions[1] = 70;
    fastFaceYPositions[2] = 100;
    fastFaceYPositions[3] = 130;
    fastFaceYPositions[4] = 160;
    fastFaceYPositions[5] = 190;
    fastFaceYPositions[6] = 220;
    fastFaceYPositions[7] = 250;
    fastFaceYPositions[8] = 280;
    
    faceChangeCountdownTimer = 0.2f;
    
    fastJonatronTimeIntervals[0] = 1.0f;
    fastJonatronTimeIntervals[1] = 1.05f;
    fastJonatronTimeIntervals[2] = 1.1f;
    fastJonatronTimeIntervals[3] = 1.15f;
    fastJonatronTimeIntervals[4] = 1.20f;
    fastJonatronTimeIntervals[5] = 1.25f;
    fastJonatronTimeIntervals[6] = 1.30f;
    fastJonatronTimeIntervals[7] = 1.35f;
    fastJonatronTimeIntervals[8] = 1.40f;
    fastJonatronTimeIntervals[9] = 1.45f;
    fastJonatronTimeIntervals[10] = 1.50f;
    fastJonatronTimeIntervals[11] = 1.55f;
    fastJonatronTimeIntervals[12] = 1.60f;
    fastJonatronTimeIntervals[13] = 1.65f;
    fastJonatronTimeIntervals[14] = 1.70f;
    fastJonatronTimeIntervals[15] = 1.75f;
    fastJonatronTimeIntervals[16] = 1.80f;
    fastJonatronTimeIntervals[17] = 1.85f;
    fastJonatronTimeIntervals[18] = 1.90f;
    fastJonatronTimeIntervals[19] = 1.95f;
    fastJonatronTimeIntervals[20] = 2.0f;
    
    newJonatronCountdownNeeded = TRUE;
    
    fastGameTime = 0.0f;
    fastIntroFinished = NO;
    fastAllChange = FALSE;
    fastTick = 0;
    fastTimeInt = 0;
    fastTimeLeft = 60.0f;
    fastUpdateCount = 0;
    fastScoreInt = 0;
    fastCurrentScore = 0;
    fastPrevScore = 0;
    faceRandomNumberXPos = -1;
    faceRandomNumberYPos = -1;
    otherFaceAllChange = FALSE;
    fastJonatronInPlay = FALSE;
    jonatronPlaced = FALSE;
    jonatronTimeInPlay = 0.0f;
    jonatronFaceCountdownTimer = 0.0f;
    fastSelectionMade = FALSE;
    fastTimeUpDrawn = FALSE;
    
    return self;
}

-(void) update:(ccTime)dt{
    fastGameTime += dt;
    
    if (fastGameTime < 5 && fastIntroFinished == NO){
        if(fastGameTime > 0 && fastGameTime < 1.5){
            if(fastTick == 0){
                fastIntro3 = [CCSprite spriteWithFile: @"GameSplashImages/splash_3.png"];
                fastIntro3.position = ccp(240, 160);
                [self addChild: fastIntro3];
                fastTick = 1;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_three.mp3"];
            }
        }
        else if(fastGameTime > 1.5 && fastGameTime < 2.5){
            if(fastTick == 1) {
                fastIntro2 = [CCSprite spriteWithFile: @"GameSplashImages/splash_2.png"];
                fastIntro2.position = ccp(240, 160);
                [self addChild: fastIntro2];
                fastTick = 2;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_two.mp3"];
            }
            else if(fastTick == 2){
                [self removeChild: fastIntro3 cleanup:YES];
                fastTick = 3;
            }
        }
        else if(fastGameTime > 2.5 && fastGameTime < 3.5){
            if(fastTick == 3){
                fastIntro1 = [CCSprite spriteWithFile: @"GameSplashImages/splash_1.png"];
                fastIntro1.position = ccp(240, 160);
                [self addChild: fastIntro1];
                fastTick = 4;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_one.mp3"];
            }
            else if(fastTick == 4) {
                [self removeChild: fastIntro2 cleanup:YES];
                fastTick = 5;
            }
        }
        else if(fastGameTime > 3.5 && fastGameTime < 4.5){
            if(fastTick == 5){
                fastIntroGo = [CCSprite spriteWithFile: @"GameSplashImages/splash_go.png"];
                fastIntroGo.position = ccp(240, 160);
                [self addChild: fastIntroGo];
                fastTick = 6;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_go.mp3"];
            }
            else if(fastTick == 6) {
                [self removeChild: fastIntro1 cleanup:YES];
                fastTick = 7;
            }
        }
        else{
            if(fastTick == 7){
                fastIntroFinished = YES;
                [self removeChild: fastIntroGo cleanup:YES];
                fastTick = 8;
                fastAllChange = TRUE;
            }
        }
    }
    
    else if(fastTick == 8){
        //Do everything else
        if(fastAllChange){
            fastAllChange = FALSE;
            [[SimpleAudioEngine sharedEngine] playBackgroundMusic:@"AudioFiles/fast_tapping.mp3"];
            [self drawFastTappingElements];
        }
        
        if(fastTimeLeft > 0){
            fastTimeLeft -= dt;
            fastTimeLeft *= 10;
            fastTimeInt = (int) fastTimeLeft;
            fastTimeLeft /= 10;
            
            fastUpdateCount = 0;
            
            //TIME DIGIT CALCULATIONS
            if(fastTimeLeft >= 10){
                while(fastTimeInt > 0){
                    int lSD = fastTimeInt % 10;
                    if(lSD == 0) {
                        if(fastUpdateCount == 0){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 203] setNormalImage:fastScoreNumber0_6];
                        }
                        
                        else if(fastUpdateCount == 1){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 202] setNormalImage:fastScoreNumber0_5];
                        }
                        
                        else if(fastUpdateCount == 2){
                            //Do nothing
                        }
                    }
                    
                    else if(lSD == 1) {
                        if(fastUpdateCount == 0){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 203] setNormalImage:fastScoreNumber1_6];
                        }
                        
                        else if(fastUpdateCount == 1){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 202] setNormalImage:fastScoreNumber1_5];
                        }
                        
                        else if(fastUpdateCount == 2){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 201] setNormalImage:fastScoreNumber1_4];
                        }
                    }
                    
                    else if(lSD == 2) {
                        if(fastUpdateCount == 0){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 203] setNormalImage:fastScoreNumber2_6];
                        }
                        
                        else if(fastUpdateCount == 1){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 202] setNormalImage:fastScoreNumber2_5];
                        }
                        
                        else if(fastUpdateCount == 2){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 201] setNormalImage:fastScoreNumber2_4];
                        }
                    }
                    
                    else if(lSD == 3) {
                        if(fastUpdateCount == 0){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 203] setNormalImage:fastScoreNumber3_6];
                        }
                        
                        else if(fastUpdateCount == 1){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 202] setNormalImage:fastScoreNumber3_5];
                        }
                        
                        else if(fastUpdateCount == 2){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 201] setNormalImage:fastScoreNumber3_4];
                        }
                    }
                    
                    else if(lSD == 4) {
                        if(fastUpdateCount == 0){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 203] setNormalImage:fastScoreNumber4_6];
                        }
                        
                        else if(fastUpdateCount == 1){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 202] setNormalImage:fastScoreNumber4_5];
                        }
                        
                        else if(fastUpdateCount == 2){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 201] setNormalImage:fastScoreNumber4_4];
                        }
                    }
                    
                    else if(lSD == 5) {
                        if(fastUpdateCount == 0){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 203] setNormalImage:fastScoreNumber5_6];
                        }
                        
                        else if(fastUpdateCount == 1){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 202] setNormalImage:fastScoreNumber5_5];
                        }
                        
                        else if(fastUpdateCount == 2){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 201] setNormalImage:fastScoreNumber5_4];
                        }
                    }
                    
                    else if(lSD == 6) {
                        if(fastUpdateCount == 0){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 203] setNormalImage:fastScoreNumber6_6];
                        }
                        
                        else if(fastUpdateCount == 1){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 202] setNormalImage:fastScoreNumber6_5];
                        }
                        
                        else if(fastUpdateCount == 2){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 201] setNormalImage:fastScoreNumber6_4];
                        }
                    }
                    
                    else if(lSD == 7) {
                        if(fastUpdateCount == 0){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 203] setNormalImage:fastScoreNumber7_6];
                        }
                        
                        else if(fastUpdateCount == 1){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 202] setNormalImage:fastScoreNumber7_5];
                        }
                        
                        else if(fastUpdateCount == 2){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 201] setNormalImage:fastScoreNumber7_4];
                        }
                    }
                    
                    else if(lSD == 8) {
                        if(fastUpdateCount == 0){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 203] setNormalImage:fastScoreNumber8_6];
                        }
                        
                        else if(fastUpdateCount == 1){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 202] setNormalImage:fastScoreNumber8_5];
                        }
                        
                        else if(fastUpdateCount == 2){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 201] setNormalImage:fastScoreNumber8_4];
                        }
                    }
                    
                    else if(lSD == 9) {
                        if(fastUpdateCount == 0){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 203] setNormalImage:fastScoreNumber9_6];
                        }
                        
                        else if(fastUpdateCount == 1){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 202] setNormalImage:fastScoreNumber9_5];
                        }
                        
                        else if(fastUpdateCount == 2){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 201] setNormalImage:fastScoreNumber9_4];
                        }
                    }
                    
                    fastTimeInt /= 10;
                    fastUpdateCount++;
                }
            }
            
            else if(fastTimeLeft >= 1 && fastTimeLeft < 10){
                while (fastTimeInt > 0){
                    int lSD = fastTimeInt % 10;
                    
                    if(lSD == 0) {
                        if(fastUpdateCount == 0){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 203] setNormalImage:fastScoreNumber0_6];
                        }
                    }
                    
                    else if(lSD == 1) {
                        if(fastUpdateCount == 0){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 203] setNormalImage:fastScoreNumber1_6];
                        }
                        
                        else if(fastUpdateCount == 1){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 202] setNormalImage:fastScoreNumber1_5];
                        }
                        
                        [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 201] setNormalImage:fastScoreNumber0_4];
                    }
                    
                    else if(lSD == 2) {
                        if(fastUpdateCount == 0){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 203] setNormalImage:fastScoreNumber2_6];
                        }
                        
                        else if(fastUpdateCount == 1){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 202] setNormalImage:fastScoreNumber2_5];
                        }
                        
                        [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 201] setNormalImage:fastScoreNumber0_4];
                    }
                    
                    else if(lSD == 3) {
                        if(fastUpdateCount == 0){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 203] setNormalImage:fastScoreNumber3_6];
                        }
                        
                        else if(fastUpdateCount == 1){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 202] setNormalImage:fastScoreNumber3_5];
                        }
                        
                        [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 201] setNormalImage:fastScoreNumber0_4];
                    }
                    
                    else if(lSD == 4) {
                        if(fastUpdateCount == 0){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 203] setNormalImage:fastScoreNumber4_6];
                        }
                        
                        else if(fastUpdateCount == 1){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 202] setNormalImage:fastScoreNumber4_5];
                        }
                        
                        [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 201] setNormalImage:fastScoreNumber0_4];
                    }
                    
                    else if(lSD == 5) {
                        if(fastUpdateCount == 0){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 203] setNormalImage:fastScoreNumber5_6];
                        }
                        
                        else if(fastUpdateCount == 1){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 202] setNormalImage:fastScoreNumber5_5];
                        }
                        
                        [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 201] setNormalImage:fastScoreNumber0_4];
                    }
                    
                    else if(lSD == 6) {
                        if(fastUpdateCount == 0){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 203] setNormalImage:fastScoreNumber6_6];
                        }
                        
                        else if(fastUpdateCount == 1){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 202] setNormalImage:fastScoreNumber6_5];
                        }
                        
                        [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 201] setNormalImage:fastScoreNumber0_4];
                    }
                    
                    else if(lSD == 7) {
                        if(fastUpdateCount == 0){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 203] setNormalImage:fastScoreNumber7_6];
                        }
                        
                        else if(fastUpdateCount == 1){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 202] setNormalImage:fastScoreNumber7_5];
                        }
                        
                        [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 201] setNormalImage:fastScoreNumber0_4];
                    }
                    
                    else if(lSD == 8) {
                        if(fastUpdateCount == 0){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 203] setNormalImage:fastScoreNumber8_6];
                        }
                        
                        else if(fastUpdateCount == 1){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 202] setNormalImage:fastScoreNumber8_5];
                        }
                        
                        [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 201] setNormalImage:fastScoreNumber0_4];
                    }
                    
                    else if(lSD == 9) {
                        if(fastUpdateCount == 0){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 203] setNormalImage:fastScoreNumber9_6];
                        }
                        
                        else if(fastUpdateCount == 1){
                            [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 202] setNormalImage:fastScoreNumber9_5];
                        }
                        
                        [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 201] setNormalImage:fastScoreNumber0_4];
                    }
                    
                    fastTimeInt /= 10;
                    fastUpdateCount++;
                }
            }
            
            else if(fastTimeLeft > 0 && fastTimeLeft < 1){
                int lSD = fastTimeInt % 10;
                
                if(lSD == 0) {
                    if(fastUpdateCount == 0){
                        [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 203] setNormalImage:fastScoreNumber0_6];
                    }
                    
                    [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 202] setNormalImage:fastScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 201] setNormalImage:fastScoreNumber0_4];
                }
                
                else if(lSD == 1) {
                    if(fastUpdateCount == 0){
                        [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 203] setNormalImage:fastScoreNumber1_6];
                    }
                    
                    [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 202] setNormalImage:fastScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 201] setNormalImage:fastScoreNumber0_4];
                }
                
                else if(lSD == 2) {
                    if(fastUpdateCount == 0){
                        [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 203] setNormalImage:fastScoreNumber2_6];
                    }
                    
                    [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 202] setNormalImage:fastScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 201] setNormalImage:fastScoreNumber0_4];
                }
                
                else if(lSD == 3) {
                    if(fastUpdateCount == 0){
                        [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 203] setNormalImage:fastScoreNumber3_6];
                    }
                    
                    [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 202] setNormalImage:fastScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 201] setNormalImage:fastScoreNumber0_4];
                }
                
                else if(lSD == 4) {
                    if(fastUpdateCount == 0){
                        [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 203] setNormalImage:fastScoreNumber4_6];
                    }
                    
                    [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 202] setNormalImage:fastScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 201] setNormalImage:fastScoreNumber0_4];
                }
                
                else if(lSD == 5) {
                    if(fastUpdateCount == 0){
                        [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 203] setNormalImage:fastScoreNumber5_6];
                    }
                    
                    [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 202] setNormalImage:fastScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 201] setNormalImage:fastScoreNumber0_4];
                }
                
                else if(lSD == 6) {
                    if(fastUpdateCount == 0){
                        [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 203] setNormalImage:fastScoreNumber6_6];
                    }
                    
                    [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 202] setNormalImage:fastScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 201] setNormalImage:fastScoreNumber0_4];
                }
                
                else if(lSD == 7) {
                    if(fastUpdateCount == 0){
                        [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 203] setNormalImage:fastScoreNumber7_6];
                    }
                    
                    [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 202] setNormalImage:fastScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 201] setNormalImage:fastScoreNumber0_4];
                }
                
                else if(lSD == 8) {
                    if(fastUpdateCount == 0){
                        [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 203] setNormalImage:fastScoreNumber8_6];
                    }
                    
                    [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 202] setNormalImage:fastScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 201] setNormalImage:fastScoreNumber0_4];
                }
                
                else if(lSD == 9) {
                    if(fastUpdateCount == 0){
                        [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 203] setNormalImage:fastScoreNumber9_6];
                    }
                    
                    [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 202] setNormalImage:fastScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[fastTimeMenu getChildByTag: 201] setNormalImage:fastScoreNumber0_4];
                }
                
                fastTimeInt /= 10;
                fastUpdateCount++;
            }
            
            fastScoreInt = fastCurrentScore;
            
            //SCORE DIGIT CALCULATIONS
            if(fastTimeLeft > 0) {
                if(fastCurrentScore != fastPrevScore){
                    if(fastCurrentScore >= 0 && fastCurrentScore < 10){
                        if(fastCurrentScore == 0){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 303] setNormalImage:fastScoreNumber0_3];
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 302] setNormalImage:fastScoreNumber0_2];
                        }
                        else if(fastCurrentScore == 1){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 303] setNormalImage:fastScoreNumber1_3];
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 302] setNormalImage:fastScoreNumber0_2];
                        }
                        else if(fastCurrentScore == 2){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 303] setNormalImage:fastScoreNumber2_3];
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 302] setNormalImage:fastScoreNumber0_2];
                        }
                        else if(fastCurrentScore == 3){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 303] setNormalImage:fastScoreNumber3_3];
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 302] setNormalImage:fastScoreNumber0_2];
                        }
                        else if(fastCurrentScore == 4){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 303] setNormalImage:fastScoreNumber4_3];
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 302] setNormalImage:fastScoreNumber0_2];
                        }
                        else if(fastCurrentScore == 5){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 303] setNormalImage:fastScoreNumber5_3];
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 302] setNormalImage:fastScoreNumber0_2];
                        }
                        else if(fastCurrentScore == 6){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 303] setNormalImage:fastScoreNumber6_3];
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 302] setNormalImage:fastScoreNumber0_2];
                        }
                        else if(fastCurrentScore == 7){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 303] setNormalImage:fastScoreNumber7_3];
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 302] setNormalImage:fastScoreNumber0_2];
                        }
                        else if(fastCurrentScore == 8){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 303] setNormalImage:fastScoreNumber8_3];
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 302] setNormalImage:fastScoreNumber0_2];
                        }
                        else if(fastCurrentScore == 9){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 303] setNormalImage:fastScoreNumber9_3];
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 302] setNormalImage:fastScoreNumber0_2];
                        }
                        [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 301] setNormalImage:fastScoreNumber0_1];
                    }
                    
                    else if(fastCurrentScore >= 10 && fastCurrentScore <= 99){
                        int lSDS = fastScoreInt % 10;
                        if(lSDS == 0){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 303] setNormalImage:fastScoreNumber0_3];
                        }
                        else if(lSDS == 1){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 303] setNormalImage:fastScoreNumber1_3];
                        }
                        else if(lSDS == 2){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 303] setNormalImage:fastScoreNumber2_3];
                        }
                        else if(lSDS == 3){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 303] setNormalImage:fastScoreNumber3_3];
                        }
                        else if(lSDS == 4){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 303] setNormalImage:fastScoreNumber4_3];
                        }
                        else if(lSDS == 5){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 303] setNormalImage:fastScoreNumber5_3];
                        }
                        else if(lSDS == 6){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 303] setNormalImage:fastScoreNumber6_3];
                        }
                        else if(lSDS == 7){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 303] setNormalImage:fastScoreNumber7_3];
                        }
                        else if(lSDS == 8){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 303] setNormalImage:fastScoreNumber8_3];
                        }
                        else if(lSDS == 9){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 303] setNormalImage:fastScoreNumber9_3];
                        }
                        
                        if(fastCurrentScore >= 10 && fastCurrentScore <= 19){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 302] setNormalImage:fastScoreNumber1_2];
                        }
                        else if(fastCurrentScore >= 20 && fastCurrentScore <= 29){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 302] setNormalImage:fastScoreNumber2_2];
                        }
                        else if(fastCurrentScore >= 30 && fastCurrentScore <= 39){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 302] setNormalImage:fastScoreNumber3_2];
                        }
                        else if(fastCurrentScore >= 40 && fastCurrentScore <= 49){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 302] setNormalImage:fastScoreNumber4_2];
                        }
                        else if(fastCurrentScore >= 50 && fastCurrentScore <= 59){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 302] setNormalImage:fastScoreNumber5_2];
                        }
                        else if(fastCurrentScore >= 60 && fastCurrentScore <= 69){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 302] setNormalImage:fastScoreNumber6_2];
                        }
                        else if(fastCurrentScore >= 70 && fastCurrentScore <= 79){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 302] setNormalImage:fastScoreNumber7_2];
                        }
                        else if(fastCurrentScore >= 80 && fastCurrentScore <= 89){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 302] setNormalImage:fastScoreNumber8_2];
                        }
                        else if(fastCurrentScore >= 90 && fastCurrentScore <= 99){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 302] setNormalImage:fastScoreNumber9_2];
                        }
                        [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 301] setNormalImage:fastScoreNumber0_1];
                    }
                    
                    else if(fastCurrentScore >= 100 && fastCurrentScore <= 999){
                        int fastCount = 0;
                        while(fastCount < 2){
                            int lSDSs = fastScoreInt % 10;
                            if(fastCount == 0){
                                if(lSDSs == 0){
                                    [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 303] setNormalImage:fastScoreNumber0_3];
                                }
                                else if(lSDSs == 1){
                                    [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 303] setNormalImage:fastScoreNumber1_3];
                                }
                                else if(lSDSs == 2){
                                    [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 303] setNormalImage:fastScoreNumber2_3];
                                }
                                else if(lSDSs == 3){
                                    [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 303] setNormalImage:fastScoreNumber3_3];
                                }
                                else if(lSDSs == 4){
                                    [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 303] setNormalImage:fastScoreNumber4_3];
                                }
                                else if(lSDSs == 5){
                                    [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 303] setNormalImage:fastScoreNumber5_3];
                                }
                                else if(lSDSs == 6){
                                    [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 303] setNormalImage:fastScoreNumber6_3];
                                }
                                else if(lSDSs == 7){
                                    [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 303] setNormalImage:fastScoreNumber7_3];
                                }
                                else if(lSDSs == 8){
                                    [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 303] setNormalImage:fastScoreNumber8_3];
                                }
                                else if(lSDSs == 9){
                                    [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 303] setNormalImage:fastScoreNumber9_3];
                                }
                            }
                            else if(fastCount == 1){
                                if(lSDSs == 0){
                                    [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 302] setNormalImage:fastScoreNumber0_2];
                                }
                                else if(lSDSs == 1){
                                    [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 302] setNormalImage:fastScoreNumber1_2];
                                }
                                else if(lSDSs == 2){
                                    [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 302] setNormalImage:fastScoreNumber2_2];
                                }
                                else if(lSDSs == 3){
                                    [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 302] setNormalImage:fastScoreNumber3_2];
                                }
                                else if(lSDSs == 4){
                                    [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 302] setNormalImage:fastScoreNumber4_2];
                                }
                                else if(lSDSs == 5){
                                    [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 302] setNormalImage:fastScoreNumber5_2];
                                }
                                else if(lSDSs == 6){
                                    [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 302] setNormalImage:fastScoreNumber6_2];
                                }
                                else if(lSDSs == 7){
                                    [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 302] setNormalImage:fastScoreNumber7_2];
                                }
                                else if(lSDSs == 8){
                                    [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 302] setNormalImage:fastScoreNumber8_2];
                                }
                                else if(lSDSs == 9){
                                    [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 302] setNormalImage:fastScoreNumber9_2];
                                }
                            }
                            fastScoreInt /= 10;
                            fastCount++;
                        }
                        
                        if(fastCurrentScore >= 100 && fastCurrentScore <= 199){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 301] setNormalImage:fastScoreNumber1_1];
                        }
                        else if(fastCurrentScore >= 200 && fastCurrentScore <= 299){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 301] setNormalImage:fastScoreNumber2_1];
                        }
                        else if(fastCurrentScore >= 300 && fastCurrentScore <= 399){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 301] setNormalImage:fastScoreNumber3_1];
                        }
                        else if(fastCurrentScore >= 400 && fastCurrentScore <= 499){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 301] setNormalImage:fastScoreNumber4_1];
                        }
                        else if(fastCurrentScore >= 500 && fastCurrentScore <= 599){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 301] setNormalImage:fastScoreNumber5_1];
                        }
                        else if(fastCurrentScore >= 600 && fastCurrentScore <= 699){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 301] setNormalImage:fastScoreNumber6_1];
                        }
                        else if(fastCurrentScore >= 700 && fastCurrentScore <= 799){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 301] setNormalImage:fastScoreNumber7_1];
                        }
                        else if(fastCurrentScore >= 800 && fastCurrentScore <= 899){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 301] setNormalImage:fastScoreNumber8_1];
                        }
                        else if(fastCurrentScore >= 900 && fastCurrentScore <= 999){
                            [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 301] setNormalImage:fastScoreNumber9_1];
                        }
                    }
                    else if(fastCurrentScore <= 0){
                        [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 303] setNormalImage:fastScoreNumber0_3];
                        [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 302] setNormalImage:fastScoreNumber0_2];
                        [(CCMenuItemSprite*)[fastScoreMenu getChildByTag: 301] setNormalImage:fastScoreNumber0_1];
                    }
                }
            }
            
            fastPrevScore = fastCurrentScore;
            
            if(fastSelectionMade){
                fastSelectionMade = FALSE;
                [self fastTappingItemChanges];
            }
            
            if(faceChangeCountdownTimer >= 0){
                faceChangeCountdownTimer -= dt;
            }
            else{
                [self updateFacePositions];
                faceChangeCountdownTimer = 0.2f;
            }
            
            if(newJonatronCountdownNeeded){
                int i = ((arc4random() % (21)));
                jonatronFaceCountdownTimer = fastJonatronTimeIntervals[i];
                newJonatronCountdownNeeded = FALSE;
            }
            else{
                jonatronFaceCountdownTimer -= dt;
            }
            
            if(jonatronFaceCountdownTimer <= 0){
                fastJonatronInPlay = TRUE;
            }
            
            if(fastJonatronInPlay){
                jonatronTimeInPlay += dt;
            }
        }
        
        else if(fastTimeLeft <= 0 && !fastTimeUpDrawn){
            fastTimeUp = [CCSprite spriteWithFile:@"GameSplashImages/time_up_splash.png"];
            fastTimeUp.position = ccp(240, 160);
            [self addChild: fastTimeUp];
            [self scheduleOnce:@selector(fastGameOver:) delay:2];
            [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_finish.mp3"];
            fastTimeUpDrawn = TRUE;
        }
    
        else {
            //Do nothing
        }
    }
}

-(void) initScoreTimeElements{
    //ITEM IMAGES
    fastScoreLetterS = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_s_30px.png"
                                                selectedImage:NULL];
    
    fastScoreLetterC = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_c_30px.png"
                                                selectedImage:NULL];
    
    fastScoreLetterO = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_o_30px.png"
                                                selectedImage:NULL];
    
    fastScoreLetterR = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_r_30px.png"
                                                selectedImage:NULL];
    
    fastScoreLetterE = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_e_30px.png"
                                                selectedImage:NULL];
    
    fastTimeLetterT = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_t_30px.png"
                                               selectedImage:NULL];
    
    fastTimeLetterI = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_i_30px.png"
                                               selectedImage:NULL];
    
    fastTimeLetterM = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_m_30px.png"
                                               selectedImage:NULL];
    
    fastTimeLetterE = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_e_30px.png"
                                               selectedImage:NULL];
    
    fastScoreLetterColon = [CCMenuItemImage itemWithNormalImage:@"NumberSigns/signs_30px/letters_colon_30px.png"
                                                    selectedImage:NULL];
    
    fastTimeLetterColon = [CCMenuItemImage itemWithNormalImage:@"NumberSigns/signs_30px/letters_colon_30px.png"
                                                   selectedImage:NULL];
    
    fastTimeLetterPoint = [CCMenuItemImage itemWithNormalImage:@"NumberSigns/signs_30px/letter_point_30px.png"
                                                   selectedImage:NULL];
    
    //ITEM SPRITES
    fastScoreNumber0_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_0_30px.png"] retain];
    fastScoreNumber0_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_0_30px.png"] retain];
    fastScoreNumber0_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_0_30px.png"] retain];
    fastScoreNumber0_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_0_30px.png"] retain];
    fastScoreNumber0_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_0_30px.png"] retain];
    fastScoreNumber0_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_0_30px.png"] retain];
    fastScoreNumber1_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_1_30px.png"] retain];
    fastScoreNumber1_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_1_30px.png"] retain];
    fastScoreNumber1_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_1_30px.png"] retain];
    fastScoreNumber1_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_1_30px.png"] retain];
    fastScoreNumber1_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_1_30px.png"] retain];
    fastScoreNumber1_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_1_30px.png"] retain];
    fastScoreNumber2_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_2_30px.png"] retain];
    fastScoreNumber2_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_2_30px.png"] retain];
    fastScoreNumber2_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_2_30px.png"] retain];
    fastScoreNumber2_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_2_30px.png"] retain];
    fastScoreNumber2_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_2_30px.png"] retain];
    fastScoreNumber2_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_2_30px.png"] retain];
    fastScoreNumber3_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_3_30px.png"] retain];
    fastScoreNumber3_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_3_30px.png"] retain];
    fastScoreNumber3_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_3_30px.png"] retain];
    fastScoreNumber3_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_3_30px.png"] retain];
    fastScoreNumber3_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_3_30px.png"] retain];
    fastScoreNumber3_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_3_30px.png"] retain];
    fastScoreNumber4_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_4_30px.png"] retain];
    fastScoreNumber4_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_4_30px.png"] retain];
    fastScoreNumber4_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_4_30px.png"] retain];
    fastScoreNumber4_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_4_30px.png"] retain];
    fastScoreNumber4_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_4_30px.png"] retain];
    fastScoreNumber4_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_4_30px.png"] retain];
    fastScoreNumber5_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_5_30px.png"] retain];
    fastScoreNumber5_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_5_30px.png"] retain];
    fastScoreNumber5_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_5_30px.png"] retain];
    fastScoreNumber5_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_5_30px.png"] retain];
    fastScoreNumber5_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_5_30px.png"] retain];
    fastScoreNumber5_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_5_30px.png"] retain];
    fastScoreNumber6_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_6_30px.png"] retain];
    fastScoreNumber6_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_6_30px.png"] retain];
    fastScoreNumber6_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_6_30px.png"] retain];
    fastScoreNumber6_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_6_30px.png"] retain];
    fastScoreNumber6_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_6_30px.png"] retain];
    fastScoreNumber6_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_6_30px.png"] retain];
    fastScoreNumber7_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_7_30px.png"] retain];
    fastScoreNumber7_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_7_30px.png"] retain];
    fastScoreNumber7_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_7_30px.png"] retain];
    fastScoreNumber7_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_7_30px.png"] retain];
    fastScoreNumber7_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_7_30px.png"] retain];
    fastScoreNumber7_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_7_30px.png"] retain];
    fastScoreNumber8_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_8_30px.png"] retain];
    fastScoreNumber8_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_8_30px.png"] retain];
    fastScoreNumber8_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_8_30px.png"] retain];
    fastScoreNumber8_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_8_30px.png"] retain];
    fastScoreNumber8_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_8_30px.png"] retain];
    fastScoreNumber8_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_8_30px.png"] retain];
    fastScoreNumber9_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_9_30px.png"] retain];
    fastScoreNumber9_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_9_30px.png"] retain];
    fastScoreNumber9_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_9_30px.png"] retain];
    fastScoreNumber9_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_9_30px.png"] retain];
    fastScoreNumber9_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_9_30px.png"] retain];
    fastScoreNumber9_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_9_30px.png"] retain];
    
    fastScoreDigitOne = [CCMenuItemSprite itemWithNormalSprite:fastScoreNumber0_1
                                                  selectedSprite:NULL];
    
    fastScoreDigitTwo = [CCMenuItemSprite itemWithNormalSprite:fastScoreNumber0_2
                                                  selectedSprite:NULL];
    
    fastScoreDigitThree = [CCMenuItemSprite itemWithNormalSprite:fastScoreNumber0_3
                                                    selectedSprite:NULL];
    
    fastTimeDigitOne = [CCMenuItemSprite itemWithNormalSprite:fastScoreNumber6_4
                                                 selectedSprite:NULL];
    
    fastTimeDigitTwo = [CCMenuItemSprite itemWithNormalSprite:fastScoreNumber0_5
                                                 selectedSprite:NULL];
    
    fastTimeDigitThree = [CCMenuItemSprite itemWithNormalSprite:fastScoreNumber0_6
                                                   selectedSprite:NULL];
    
    [fastScoreDigitOne setTag: 301];
    [fastScoreDigitTwo setTag: 302];
    [fastScoreDigitThree setTag: 303];
    
    [fastTimeDigitOne setTag: 201];
    [fastTimeDigitTwo setTag: 202];
    [fastTimeDigitThree setTag: 203];
    
    fastScoreMenu = [CCMenu menuWithItems:fastScoreLetterS, fastScoreLetterC, fastScoreLetterO, fastScoreLetterR, fastScoreLetterE, fastScoreLetterColon, fastScoreDigitOne, fastScoreDigitTwo, fastScoreDigitThree, nil];
    
    fastTimeMenu = [CCMenu menuWithItems:fastTimeLetterT, fastTimeLetterI, fastTimeLetterM, fastTimeLetterE, fastTimeLetterColon, fastTimeDigitOne, fastTimeDigitTwo, fastTimeLetterPoint, fastTimeDigitThree, nil];
    
    [fastScoreMenu alignItemsHorizontallyWithPadding:2];
    [fastTimeMenu alignItemsHorizontallyWithPadding:2];
    fastScoreMenu.position = ccp(60, 305);
    fastTimeMenu.position = ccp(420, 305);
    [fastScoreTimeLayer addChild:fastScoreMenu];
    [fastScoreTimeLayer addChild:fastTimeMenu];
    fastScoreTimeLayer.position = ccp(1000, 1000);
}

-(void) initFastOtherGraphics{
    fastTappingMainButton = [CCMenuItemImage itemWithNormalImage:@"FastTappingElements/fast_tapping_button.png"
                                                   selectedImage:@"FastTappingElements/fast_tapping_button_selected.png"
                                                          target:self
                                                        selector:@selector(touchMePressed:)];
    
    tappingFaceBean = [CCSprite spriteWithFile:@"FastTappingElements/face_bean.png"];
    tappingFaceJackie = [CCSprite spriteWithFile:@"FastTappingElements/face_jackie.png"];
    tappingFaceJonatron = [CCSprite spriteWithFile:@"FastTappingElements/face_jonatron.png"];
    tappingFacePixelJon = [CCSprite spriteWithFile:@"FastTappingElements/face_pixeljon.png"];
    tappingFaceTrololol = [CCSprite spriteWithFile:@"FastTappingElements/face_trololol.png"];
    
    tappingFaceBean.position = ccp(1000, 1000);
    tappingFaceJackie.position = ccp(1000, 1000);
    tappingFaceJonatron.position = ccp(1000, 1000);
    tappingFacePixelJon.position = ccp(1000, 1000);
    tappingFaceTrololol.position = ccp(1000, 1000);
    
    fastButtonMenu = [CCMenu menuWithItems:fastTappingMainButton, nil];
    [fastButtonMenu alignItemsHorizontally];
    fastButtonMenu.position = ccp(240, 160);
    
    [fastFaceLayer addChild: tappingFaceBean];
    [fastFaceLayer addChild: tappingFaceJackie];
    [fastFaceLayer addChild: tappingFaceJonatron];
    [fastFaceLayer addChild: tappingFacePixelJon];
    [fastFaceLayer addChild: tappingFaceTrololol];
    [fastButtonLayer addChild: fastButtonMenu];
    
    fastButtonLayer.position = ccp(1000, 1000);
    fastFaceLayer.position = ccp(1000, 1000);
}

-(void) drawFastTappingElements{
    fastScoreTimeLayer.position = ccp(0, 0);
    fastButtonLayer.position = ccp(0, 0);
    fastFaceLayer.position = ccp(0, 0);
    [self fastTappingItemChanges];
}

-(void) fastTappingItemChanges{
    [self updateFacePositions];
}

-(void) updateFacePositions{
    if(fastJonatronInPlay && !jonatronPlaced){
        faceRandomNumberXPos = ((arc4random() % (14)));
        faceRandomNumberYPos = ((arc4random() % (9)));
        tappingFaceJonatron.position = ccp(fastFaceXPositions[faceRandomNumberXPos], fastFaceYPositions[faceRandomNumberYPos]);
        jonatronPlaced = TRUE;
    }
    
    faceRandomNumberXPos = ((arc4random() % (14)));
    faceRandomNumberYPos = ((arc4random() % (9)));
    tappingFaceBean.position = ccp(fastFaceXPositions[faceRandomNumberXPos], fastFaceYPositions[faceRandomNumberYPos]);
    
    faceRandomNumberXPos = ((arc4random() % (14)));
    faceRandomNumberYPos = ((arc4random() % (9)));
    tappingFaceJackie.position = ccp(fastFaceXPositions[faceRandomNumberXPos], fastFaceYPositions[faceRandomNumberYPos]);
    
    faceRandomNumberXPos = ((arc4random() % (14)));
    faceRandomNumberYPos = ((arc4random() % (9)));
    tappingFacePixelJon.position = ccp(fastFaceXPositions[faceRandomNumberXPos], fastFaceYPositions[faceRandomNumberYPos]);
    
    faceRandomNumberXPos = ((arc4random() % (14)));
    faceRandomNumberYPos = ((arc4random() % (9)));
    tappingFaceTrololol.position = ccp(fastFaceXPositions[faceRandomNumberXPos], fastFaceYPositions[faceRandomNumberYPos]);
}

-(void) touchMePressed:(id)sender{
    if(!fastTimeUpDrawn){
        if(!fastJonatronInPlay){
            if(fastCurrentScore <= 0){
                fastCurrentScore = 0;
            }
            else{
                fastCurrentScore -= 5;
            }
            [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
        }
        else if(jonatronTimeInPlay <= 0.5f){
            fastCurrentScore += 20;
            [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
        }
        else if(jonatronTimeInPlay <= 1.0f){
            fastCurrentScore += 15;
            [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
        }
        else if(jonatronTimeInPlay <= 1.5f){
            fastCurrentScore += 10;
            [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
        }
        else if(jonatronTimeInPlay > 1.5f){
            fastCurrentScore += 5;
            [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
        }
        
        tappingFaceJonatron.position = ccp(1000, 1000);
        fastJonatronInPlay = FALSE;
        jonatronPlaced = FALSE;
        newJonatronCountdownNeeded = TRUE;
        fastSelectionMade = TRUE;
        jonatronTimeInPlay = 0.0f;
    }
    else{
        
    }
}

-(void) fastGameOver:(ccTime)dt{
    //Sort scores etc
    [[NSUserDefaults standardUserDefaults] setInteger:1 forKey:@"gameID"];
    [[NSUserDefaults standardUserDefaults] setInteger:fastCurrentScore forKey:@"fScoreNew"];
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:.5 scene: [GameFinish node] withColor:ccWHITE]];
}

-(void) onExit{
    [self unschedule:@selector(update:)];
    fastGameTime = 0;
    [[SimpleAudioEngine sharedEngine] stopBackgroundMusic];
    [super onExit];
}

- (void) dealloc{
    [fastScoreNumber0_1 release];
    [fastScoreNumber0_2 release];
    [fastScoreNumber0_3 release];
    [fastScoreNumber0_4 release];
    [fastScoreNumber0_5 release];
    [fastScoreNumber0_6 release];
    [fastScoreNumber1_1 release];
    [fastScoreNumber1_2 release];
    [fastScoreNumber1_3 release];
    [fastScoreNumber1_4 release];
    [fastScoreNumber1_5 release];
    [fastScoreNumber1_6 release];
    [fastScoreNumber2_1 release];
    [fastScoreNumber2_2 release];
    [fastScoreNumber2_3 release];
    [fastScoreNumber2_4 release];
    [fastScoreNumber2_5 release];
    [fastScoreNumber2_6 release];
    [fastScoreNumber3_1 release];
    [fastScoreNumber3_2 release];
    [fastScoreNumber3_3 release];
    [fastScoreNumber3_4 release];
    [fastScoreNumber3_5 release];
    [fastScoreNumber3_6 release];
    [fastScoreNumber4_1 release];
    [fastScoreNumber4_2 release];
    [fastScoreNumber4_3 release];
    [fastScoreNumber4_4 release];
    [fastScoreNumber4_5 release];
    [fastScoreNumber4_6 release];
    [fastScoreNumber5_1 release];
    [fastScoreNumber5_2 release];
    [fastScoreNumber5_3 release];
    [fastScoreNumber5_4 release];
    [fastScoreNumber5_5 release];
    [fastScoreNumber5_6 release];
    [fastScoreNumber6_1 release];
    [fastScoreNumber6_2 release];
    [fastScoreNumber6_3 release];
    [fastScoreNumber6_4 release];
    [fastScoreNumber6_5 release];
    [fastScoreNumber6_6 release];
    [fastScoreNumber7_1 release];
    [fastScoreNumber7_2 release];
    [fastScoreNumber7_3 release];
    [fastScoreNumber7_4 release];
    [fastScoreNumber7_5 release];
    [fastScoreNumber7_6 release];
    [fastScoreNumber8_1 release];
    [fastScoreNumber8_2 release];
    [fastScoreNumber8_3 release];
    [fastScoreNumber8_4 release];
    [fastScoreNumber8_5 release];
    [fastScoreNumber8_6 release];
    [fastScoreNumber9_1 release];
    [fastScoreNumber9_2 release];
    [fastScoreNumber9_3 release];
    [fastScoreNumber9_4 release];
    [fastScoreNumber9_5 release];
    [fastScoreNumber9_6 release];
    
	[self unscheduleAllSelectors];
    [self removeAllChildrenWithCleanup:YES];
	[self release];
	[super dealloc];
}

@end
