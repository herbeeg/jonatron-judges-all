//
//  EquationDiscombobulation.m
//  JonatronJudgesAll
//
//  Created by Jonathan Herbst on 29/11/2012.
//  Copyright Herbtacular Games 2013. All rights reserved.
//

#import "EquationDiscombobulation.h"
#import "GameFinish.h"
#import "MainMenu.h"
#import "SimpleAudioEngine.h"

CCLayer *equationBackgroundLayer;
CCLayer *equationButtonLayer;
CCLayer *equationSumLayer;
CCLayer *equationScoreTimeLayer;

CCSprite *equationBackgroundImage;

CCSprite *intro3;
CCSprite *intro2;
CCSprite *intro1;
CCSprite *introGo;

int equationImageNumberArray[12];

CCMenu *equationSumMenu;

CCMenuItemSprite *equationSumSpriteOne;
CCMenuItemSprite *equationSumSpriteTwo;
CCMenuItemSprite *equationSumSpriteThree;

CCSprite *equationNumberZeroLeft;
CCSprite *equationNumberOneLeft;
CCSprite *equationNumberTwoLeft;
CCSprite *equationNumberThreeLeft;
CCSprite *equationNumberFourLeft;
CCSprite *equationNumberFiveLeft;
CCSprite *equationNumberSixLeft;
CCSprite *equationNumberSevenLeft;
CCSprite *equationNumberEightLeft;
CCSprite *equationNumberNineLeft;

CCSprite *equationNumberZeroRight;
CCSprite *equationNumberOneRight;
CCSprite *equationNumberTwoRight;
CCSprite *equationNumberThreeRight;
CCSprite *equationNumberFourRight;
CCSprite *equationNumberFiveRight;
CCSprite *equationNumberSixRight;
CCSprite *equationNumberSevenRight;
CCSprite *equationNumberEightRight;
CCSprite *equationNumberNineRight;

CCSprite *equationSignPlus;
CCSprite *equationSignMultiply;

CCMenu *equationDynamicAnswer;

//DYNAMIC ANSWER IMAGES
CCSprite *equationDynamicZeroLeft;
CCSprite *equationDynamicOneLeft;
CCSprite *equationDynamicTwoLeft;
CCSprite *equationDynamicThreeLeft;
CCSprite *equationDynamicFourLeft;
CCSprite *equationDynamicFiveLeft;
CCSprite *equationDynamicSixLeft;
CCSprite *equationDynamicSevenLeft;
CCSprite *equationDynamicEightLeft;
CCSprite *equationDynamicNineLeft;
CCSprite *equationDynamicZeroRight;
CCSprite *equationDynamicOneRight;
CCSprite *equationDynamicTwoRight;
CCSprite *equationDynamicThreeRight;
CCSprite *equationDynamicFourRight;
CCSprite *equationDynamicFiveRight;
CCSprite *equationDynamicSixRight;
CCSprite *equationDynamicSevenRight;
CCSprite *equationDynamicEightRight;
CCSprite *equationDynamicNineRight;

//DYNAMIC ANSWER IMAGE COPIES
CCSprite *equationDynamicZeroLeftCopy;
CCSprite *equationDynamicOneLeftCopy;
CCSprite *equationDynamicTwoLeftCopy;
CCSprite *equationDynamicThreeLeftCopy;
CCSprite *equationDynamicFourLeftCopy;
CCSprite *equationDynamicFiveLeftCopy;
CCSprite *equationDynamicSixLeftCopy;
CCSprite *equationDynamicSevenLeftCopy;
CCSprite *equationDynamicEightLeftCopy;
CCSprite *equationDynamicNineLeftCopy;
CCSprite *equationDynamicZeroRightCopy;
CCSprite *equationDynamicOneRightCopy;
CCSprite *equationDynamicTwoRightCopy;
CCSprite *equationDynamicThreeRightCopy;
CCSprite *equationDynamicFourRightCopy;
CCSprite *equationDynamicFiveRightCopy;
CCSprite *equationDynamicSixRightCopy;
CCSprite *equationDynamicSevenRightCopy;
CCSprite *equationDynamicEightRightCopy;
CCSprite *equationDynamicNineRightCopy;

CCMenuItemSprite *equationDynamicAnswerSpriteOne;
CCMenuItemSprite *equationDynamicAnswerSpriteTwo;

CCMenu *equationButtonMenuTop;
CCMenu *equationButtonMenuBot;
CCMenu *equationButtonLargeMenu;

//NORMAL BUTTON IMAGES
CCSprite *equationButtonImageZeroSmall;
CCSprite *equationButtonImageZeroLarge;
CCSprite *equationButtonImageOneSmall;
CCSprite *equationButtonImageOneLarge;
CCSprite *equationButtonImageTwoSmall;
CCSprite *equationButtonImageTwoLarge;
CCSprite *equationButtonImageThreeSmall;
CCSprite *equationButtonImageThreeLarge;
CCSprite *equationButtonImageFourSmall;
CCSprite *equationButtonImageFourLarge;
CCSprite *equationButtonImageFiveSmall;
CCSprite *equationButtonImageFiveLarge;
CCSprite *equationButtonImageSixSmall;
CCSprite *equationButtonImageSixLarge;
CCSprite *equationButtonImageSevenSmall;
CCSprite *equationButtonImageSevenLarge;
CCSprite *equationButtonImageEightSmall;
CCSprite *equationButtonImageEightLarge;
CCSprite *equationButtonImageNineSmall;
CCSprite *equationButtonImageNineLarge;
CCSprite *equationButtonImageEqualsSmall1;
CCSprite *equationButtonImageEqualsSmall2;
CCSprite *equationButtonImageEqualsLarge1;
CCSprite *equationButtonImageEqualsLarge2;

//NORMAL BUTTON IMAGE COPIES
CCSprite *equationButtonImageZeroSmallCopy;
CCSprite *equationButtonImageZeroLargeCopy;
CCSprite *equationButtonImageOneSmallCopy;
CCSprite *equationButtonImageOneLargeCopy;
CCSprite *equationButtonImageTwoSmallCopy;
CCSprite *equationButtonImageTwoLargeCopy;
CCSprite *equationButtonImageThreeSmallCopy;
CCSprite *equationButtonImageThreeLargeCopy;
CCSprite *equationButtonImageFourSmallCopy;
CCSprite *equationButtonImageFourLargeCopy;
CCSprite *equationButtonImageFiveSmallCopy;
CCSprite *equationButtonImageFiveLargeCopy;
CCSprite *equationButtonImageSixSmallCopy;
CCSprite *equationButtonImageSixLargeCopy;
CCSprite *equationButtonImageSevenSmallCopy;
CCSprite *equationButtonImageSevenLargeCopy;
CCSprite *equationButtonImageEightSmallCopy;
CCSprite *equationButtonImageEightLargeCopy;
CCSprite *equationButtonImageNineSmallCopy;
CCSprite *equationButtonImageNineLargeCopy;
CCSprite *equationButtonImageEqualsSmall1Copy;
CCSprite *equationButtonImageEqualsSmall2Copy;
CCSprite *equationButtonImageEqualsLarge1Copy;
CCSprite *equationButtonImageEqualsLarge2Copy;

//SELECTED BUTTON IMAGES
CCSprite *equationButtonImageZeroSmallSelected;
CCSprite *equationButtonImageZeroLargeSelected;
CCSprite *equationButtonImageOneSmallSelected;
CCSprite *equationButtonImageOneLargeSelected;
CCSprite *equationButtonImageTwoSmallSelected;
CCSprite *equationButtonImageTwoLargeSelected;
CCSprite *equationButtonImageThreeSmallSelected;
CCSprite *equationButtonImageThreeLargeSelected;
CCSprite *equationButtonImageFourSmallSelected;
CCSprite *equationButtonImageFourLargeSelected;
CCSprite *equationButtonImageFiveSmallSelected;
CCSprite *equationButtonImageFiveLargeSelected;
CCSprite *equationButtonImageSixSmallSelected;
CCSprite *equationButtonImageSixLargeSelected;
CCSprite *equationButtonImageSevenSmallSelected;
CCSprite *equationButtonImageSevenLargeSelected;
CCSprite *equationButtonImageEightSmallSelected;
CCSprite *equationButtonImageEightLargeSelected;
CCSprite *equationButtonImageNineSmallSelected;
CCSprite *equationButtonImageNineLargeSelected;
CCSprite *equationButtonImageEqualsSmall1Selected;
CCSprite *equationButtonImageEqualsSmall2Selected;
CCSprite *equationButtonImageEqualsLarge1Selected;
CCSprite *equationButtonImageEqualsLarge2Selected;

//SELECTED BUTTON IMAGE COPIES
CCSprite *equationButtonImageZeroSmallSelectedCopy;
CCSprite *equationButtonImageZeroLargeSelectedCopy;
CCSprite *equationButtonImageOneSmallSelectedCopy;
CCSprite *equationButtonImageOneLargeSelectedCopy;
CCSprite *equationButtonImageTwoSmallSelectedCopy;
CCSprite *equationButtonImageTwoLargeSelectedCopy;
CCSprite *equationButtonImageThreeSmallSelectedCopy;
CCSprite *equationButtonImageThreeLargeSelectedCopy;
CCSprite *equationButtonImageFourSmallSelectedCopy;
CCSprite *equationButtonImageFourLargeSelectedCopy;
CCSprite *equationButtonImageFiveSmallSelectedCopy;
CCSprite *equationButtonImageFiveLargeSelectedCopy;
CCSprite *equationButtonImageSixSmallSelectedCopy;
CCSprite *equationButtonImageSixLargeSelectedCopy;
CCSprite *equationButtonImageSevenSmallSelectedCopy;
CCSprite *equationButtonImageSevenLargeSelectedCopy;
CCSprite *equationButtonImageEightSmallSelectedCopy;
CCSprite *equationButtonImageEightLargeSelectedCopy;
CCSprite *equationButtonImageNineSmallSelectedCopy;
CCSprite *equationButtonImageNineLargeSelectedCopy;
CCSprite *equationButtonImageEqualsSmall1SelectedCopy;
CCSprite *equationButtonImageEqualsSmall2SelectedCopy;
CCSprite *equationButtonImageEqualsLarge1SelectedCopy;
CCSprite *equationButtonImageEqualsLarge2SelectedCopy;

CCMenuItemSprite *equationSmallButtonSpriteOne;
CCMenuItemSprite *equationSmallButtonSpriteTwo;
CCMenuItemSprite *equationSmallButtonSpriteThree;
CCMenuItemSprite *equationSmallButtonSpriteFour;
CCMenuItemSprite *equationSmallButtonSpriteFive;
CCMenuItemSprite *equationSmallButtonSpriteSix;
CCMenuItemSprite *equationSmallButtonSpriteSeven;
CCMenuItemSprite *equationSmallButtonSpriteEight;
CCMenuItemSprite *equationSmallButtonSpriteNine;
CCMenuItemSprite *equationSmallButtonSpriteTen;
CCMenuItemSprite *equationLargeButtonSpriteLeft;
CCMenuItemSprite *equationLargeButtonSpriteRight;

CCSprite *equationTimeUp;

ccTime gameTime = 0.0f;
BOOL introFinished = NO;
BOOL introThreeFinished = NO;
BOOL introTwoFinished = NO;
BOOL introOneFinished = NO;
int tick = 0;

int randomButtonGenNumber = 0;
int randomSumGenNumber = 0;
int randomSumGenSign = 0;

int timeInt = 0;
int scoreInt = 0;

float timeLeft = 60.0f;

int playerAnswers = 0;

BOOL allChange = FALSE;

CCMenu *equationScoreMenu;
CCMenu *equationTimeMenu;

CCMenuItemImage *equationScoreLetterS;
CCMenuItemImage *equationScoreLetterC;
CCMenuItemImage *equationScoreLetterO;
CCMenuItemImage *equationScoreLetterR;
CCMenuItemImage *equationScoreLetterE;
CCMenuItemImage *equationScoreLetterColon;
CCMenuItemImage *equationTimeLetterT;
CCMenuItemImage *equationTimeLetterI;
CCMenuItemImage *equationTimeLetterM;
CCMenuItemImage *equationTimeLetterE;
CCMenuItemImage *equationTimeLetterPoint;
CCMenuItemImage *equationTimeLetterColon;

//Numbers 1-3 reserved for scoring display and numbers 4-6 reserved for the time display
CCSprite *equationScoreNumber0_1;
CCSprite *equationScoreNumber0_2;
CCSprite *equationScoreNumber0_3;
CCSprite *equationScoreNumber0_4;
CCSprite *equationScoreNumber0_5;
CCSprite *equationScoreNumber0_6;
CCSprite *equationScoreNumber1_1;
CCSprite *equationScoreNumber1_2;
CCSprite *equationScoreNumber1_3;
CCSprite *equationScoreNumber1_4;
CCSprite *equationScoreNumber1_5;
CCSprite *equationScoreNumber1_6;
CCSprite *equationScoreNumber2_1;
CCSprite *equationScoreNumber2_2;
CCSprite *equationScoreNumber2_3;
CCSprite *equationScoreNumber2_4;
CCSprite *equationScoreNumber2_5;
CCSprite *equationScoreNumber2_6;
CCSprite *equationScoreNumber3_1;
CCSprite *equationScoreNumber3_2;
CCSprite *equationScoreNumber3_3;
CCSprite *equationScoreNumber3_4;
CCSprite *equationScoreNumber3_5;
CCSprite *equationScoreNumber3_6;
CCSprite *equationScoreNumber4_1;
CCSprite *equationScoreNumber4_2;
CCSprite *equationScoreNumber4_3;
CCSprite *equationScoreNumber4_4;
CCSprite *equationScoreNumber4_5;
CCSprite *equationScoreNumber4_6;
CCSprite *equationScoreNumber5_1;
CCSprite *equationScoreNumber5_2;
CCSprite *equationScoreNumber5_3;
CCSprite *equationScoreNumber5_4;
CCSprite *equationScoreNumber5_5;
CCSprite *equationScoreNumber5_6;
CCSprite *equationScoreNumber6_1;
CCSprite *equationScoreNumber6_2;
CCSprite *equationScoreNumber6_3;
CCSprite *equationScoreNumber6_4;
CCSprite *equationScoreNumber6_5;
CCSprite *equationScoreNumber6_6;
CCSprite *equationScoreNumber7_1;
CCSprite *equationScoreNumber7_2;
CCSprite *equationScoreNumber7_3;
CCSprite *equationScoreNumber7_4;
CCSprite *equationScoreNumber7_5;
CCSprite *equationScoreNumber7_6;
CCSprite *equationScoreNumber8_1;
CCSprite *equationScoreNumber8_2;
CCSprite *equationScoreNumber8_3;
CCSprite *equationScoreNumber8_4;
CCSprite *equationScoreNumber8_5;
CCSprite *equationScoreNumber8_6;
CCSprite *equationScoreNumber9_1;
CCSprite *equationScoreNumber9_2;
CCSprite *equationScoreNumber9_3;
CCSprite *equationScoreNumber9_4;
CCSprite *equationScoreNumber9_5;
CCSprite *equationScoreNumber9_6;
CCMenuItemSprite *equationScoreDigitOne;
CCMenuItemSprite *equationScoreDigitTwo;
CCMenuItemSprite *equationScoreDigitThree;
CCMenuItemSprite *equationTimeDigitOne;
CCMenuItemSprite *equationTimeDigitTwo;
CCMenuItemSprite *equationTimeDigitThree;

int playerScoreDigitOne = -1;
int playerScoreDigitTwo = -1;
int playerScoreDigitThree = -1;
int playerTimeDigitOne = -1;
int playerTimeDigitTwo = -1;
int playerTimeDigitThree = -1;
int equationScore = 0;
int prevEquationScore = 0;

int equationActualAnswer = 0;
int equationGivenAnswer = 0;

int equationButtonsPressed = 0;

NSString *equationSignIdent = @"";

int equationButtonOneID = 0;
int equationButtonTwoID = 0;
int equationButtonThreeID = 0;
int equationButtonFourID = 0;
int equationButtonFiveID = 0;
int equationButtonSixID = 0;
int equationButtonSevenID = 0;
int equationButtonEightID = 0;
int equationButtonNineID = 0;
int equationButtonTenID = 0;
int equationButtonLeftID = 0;
int equationButtonRightID = 0;

BOOL equationSelectionMade = FALSE;
BOOL equationFirstSum = TRUE;
BOOL equationTimeUpDrawn = FALSE;

int numOfAnswers = 0;
int firstNumPressed = 100;
int secondNumPressed = 100;

#pragma mark - EquationDiscombobulation

@implementation EquationDiscombobulation

+(CCScene *) scene{
    CCScene *equationScene = [CCScene node];
    
    equationBackgroundLayer = [EquationDiscombobulation node];
    
    [equationScene addChild: equationBackgroundLayer];
    
    return equationScene;
}

-(void) onEnter{
    [self schedule:@selector(update:)];
    [super onEnter];
}

-(id) init{
    equationButtonLayer = [CCLayer node];
    equationScoreTimeLayer = [CCLayer node];
    equationSumLayer = [CCLayer node];
    
    [self initSmallEquationElements];
    [self initLargeEquationElements];
    [self initSumEquationElements];
    [self initScoreTimeElements];
    [self initEquationDynamicElements];
        
    if((self = [super init])){
        equationBackgroundImage = [CCSprite spriteWithFile: @"MenuImages/blank_background.png"];
        equationBackgroundImage.position = ccp(240, 160);
        
        [self addChild: equationBackgroundImage];
        [self addChild: equationScoreTimeLayer];
        [self addChild: equationButtonLayer];
        [self addChild: equationSumLayer];
    }
    
    //INIT VARS
    gameTime = 0.0f;
    introFinished = NO;
    introThreeFinished = NO;
    introTwoFinished = NO;
    introOneFinished = NO;
    tick = 0;
    randomButtonGenNumber = 0;
    randomSumGenNumber = 0;
    randomSumGenSign = 0;
    timeInt = 0;
    scoreInt = 0;
    timeLeft = 60.0f;
    playerAnswers = 0;
    allChange = FALSE;
    playerScoreDigitOne = -1;
    playerScoreDigitTwo = -1;
    playerScoreDigitThree = -1;
    playerTimeDigitOne = -1;
    playerTimeDigitTwo = -1;
    playerTimeDigitThree = -1;
    equationScore = 0;
    prevEquationScore = 0;
    equationActualAnswer = 0;
    equationGivenAnswer = 0;
    equationButtonsPressed = 0;
    equationSignIdent = @"";
    equationButtonOneID = 0;
    equationButtonTwoID = 0;
    equationButtonThreeID = 0;
    equationButtonFourID = 0;
    equationButtonFiveID = 0;
    equationButtonSixID = 0;
    equationButtonSevenID = 0;
    equationButtonEightID = 0;
    equationButtonNineID = 0;
    equationButtonTenID = 0;
    equationButtonLeftID = 0;
    equationButtonRightID = 0;
    equationSelectionMade = FALSE;
    equationFirstSum = TRUE;
    equationTimeUpDrawn = FALSE;
    numOfAnswers = 0;
    firstNumPressed = 100;
    secondNumPressed = 100;
    
    return self;
}

-(void) update:(ccTime)dt{
    gameTime += dt;
    
    if (gameTime < 5 && introFinished == NO){
        if(gameTime > 0 && gameTime < 1.5){
            if(tick == 0){
                intro3 = [CCSprite spriteWithFile: @"GameSplashImages/splash_3.png"];
                intro3.position = ccp(240, 160);
                [self addChild: intro3];
                tick = 1;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_three.mp3"];
            }
        }
        else if(gameTime > 1.5 && gameTime < 2.5){
            if(tick == 1) {
                intro2 = [CCSprite spriteWithFile: @"GameSplashImages/splash_2.png"];
                intro2.position = ccp(240, 160);
                [self addChild: intro2];
                tick = 2;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_two.mp3"];
            }
            else if(tick == 2){
                [self removeChild: intro3 cleanup:YES];
                tick = 3;
            }
        }
        else if(gameTime > 2.5 && gameTime < 3.5){
            if(tick == 3){
                intro1 = [CCSprite spriteWithFile: @"GameSplashImages/splash_1.png"];
                intro1.position = ccp(240, 160);
                [self addChild: intro1];
                tick = 4;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_one.mp3"];
            }
            else if(tick == 4) {
                [self removeChild: intro2 cleanup:YES];
                tick = 5;
            }
        }
        else if(gameTime > 3.5 && gameTime < 4.5){
            if(tick == 5){
                introGo = [CCSprite spriteWithFile: @"GameSplashImages/splash_go.png"];
                introGo.position = ccp(240, 160);
                [self addChild: introGo];
                tick = 6;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_go.mp3"];
            }
            else if(tick == 6) {
                [self removeChild: intro1 cleanup:YES];
                tick = 7;
            }
        }
        else{
            if(tick == 7){
                introFinished = YES;
                [self removeChild: introGo cleanup:YES];
                tick = 8;
                allChange = TRUE;
            }
        }
    }
    
    else if(tick == 8){
        //Do everything else
        if(allChange){
            [[SimpleAudioEngine sharedEngine] playBackgroundMusic:@"AudioFiles/equation_discombobulation.mp3"];
            [self drawEquationElements];
            [self randomiseEquationButtons];
            [self generateNewSum];
            allChange = false;
        }
        
        if(timeLeft >= 0){
            timeLeft -= dt;
            timeLeft *= 10;
            
            timeInt = (int) timeLeft;
            
            timeLeft /= 10;
            
            int count = 0;
            
            //TIME DIGIT CALCULATIONS
            if(timeLeft >= 10){
                while(timeInt > 0){
                    int lSD = timeInt % 10;
                    
                    if(lSD == 0) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 203] setNormalImage:equationScoreNumber0_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 202] setNormalImage:equationScoreNumber0_5];
                        }
                        
                        else if(count == 2){
                            //Do nothing
                        }
                    }
                    
                    else if(lSD == 1) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 203] setNormalImage:equationScoreNumber1_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 202] setNormalImage:equationScoreNumber1_5];
                        }
                        
                        else if(count == 2){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 201] setNormalImage:equationScoreNumber1_4];
                        }
                    }
                    
                    else if(lSD == 2) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 203] setNormalImage:equationScoreNumber2_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 202] setNormalImage:equationScoreNumber2_5];
                        }
                        
                        else if(count == 2){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 201] setNormalImage:equationScoreNumber2_4];
                        }
                    }
                    
                    else if(lSD == 3) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 203] setNormalImage:equationScoreNumber3_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 202] setNormalImage:equationScoreNumber3_5];
                        }
                        
                        else if(count == 2){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 201] setNormalImage:equationScoreNumber3_4];
                        }
                    }
                    
                    else if(lSD == 4) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 203] setNormalImage:equationScoreNumber4_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 202] setNormalImage:equationScoreNumber4_5];
                        }
                        
                        else if(count == 2){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 201] setNormalImage:equationScoreNumber4_4];
                        }
                    }
                    
                    else if(lSD == 5) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 203] setNormalImage:equationScoreNumber5_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 202] setNormalImage:equationScoreNumber5_5];
                        }
                        
                        else if(count == 2){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 201] setNormalImage:equationScoreNumber5_4];
                        }
                    }
                    
                    else if(lSD == 6) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 203] setNormalImage:equationScoreNumber6_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 202] setNormalImage:equationScoreNumber6_5];
                        }
                        
                        else if(count == 2){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 201] setNormalImage:equationScoreNumber6_4];
                        }
                    }

                    else if(lSD == 7) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 203] setNormalImage:equationScoreNumber7_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 202] setNormalImage:equationScoreNumber7_5];
                        }
                        
                        else if(count == 2){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 201] setNormalImage:equationScoreNumber7_4];
                        }
                    }
    
                    else if(lSD == 8) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 203] setNormalImage:equationScoreNumber8_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 202] setNormalImage:equationScoreNumber8_5];
                        }
                        
                        else if(count == 2){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 201] setNormalImage:equationScoreNumber8_4];
                        }
                    }

                    else if(lSD == 9) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 203] setNormalImage:equationScoreNumber9_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 202] setNormalImage:equationScoreNumber9_5];
                        }
                        
                        else if(count == 2){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 201] setNormalImage:equationScoreNumber9_4];
                        }
                    }
                    
                    timeInt /= 10;
                    count++;
                }
            }
            
            else if(timeLeft >= 1 && timeLeft < 10){
                while (timeInt > 0){
                    int lSD = timeInt % 10;
                    
                    if(lSD == 0) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 203] setNormalImage:equationScoreNumber0_6];
                        }
                    }
                    
                    else if(lSD == 1) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 203] setNormalImage:equationScoreNumber1_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 202] setNormalImage:equationScoreNumber1_5];
                        }
                        
                        [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 201] setNormalImage:equationScoreNumber0_4];
                    }
                    
                    else if(lSD == 2) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 203] setNormalImage:equationScoreNumber2_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 202] setNormalImage:equationScoreNumber2_5];
                        }
                        
                        [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 201] setNormalImage:equationScoreNumber0_4];
                    }
                    
                    else if(lSD == 3) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 203] setNormalImage:equationScoreNumber3_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 202] setNormalImage:equationScoreNumber3_5];
                        }
                        
                        [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 201] setNormalImage:equationScoreNumber0_4];
                    }
                    
                    else if(lSD == 4) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 203] setNormalImage:equationScoreNumber4_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 202] setNormalImage:equationScoreNumber4_5];
                        }
                        
                        [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 201] setNormalImage:equationScoreNumber0_4];
                    }
                    
                    else if(lSD == 5) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 203] setNormalImage:equationScoreNumber5_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 202] setNormalImage:equationScoreNumber5_5];
                        }
                        
                        [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 201] setNormalImage:equationScoreNumber0_4];
                    }
                    
                    else if(lSD == 6) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 203] setNormalImage:equationScoreNumber6_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 202] setNormalImage:equationScoreNumber6_5];
                        }
                        
                        [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 201] setNormalImage:equationScoreNumber0_4];
                    }
                    
                    else if(lSD == 7) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 203] setNormalImage:equationScoreNumber7_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 202] setNormalImage:equationScoreNumber7_5];
                        }
                        
                        [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 201] setNormalImage:equationScoreNumber0_4];
                    }
                    
                    else if(lSD == 8) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 203] setNormalImage:equationScoreNumber8_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 202] setNormalImage:equationScoreNumber8_5];
                        }
                        
                        [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 201] setNormalImage:equationScoreNumber0_4];
                    }
                    
                    else if(lSD == 9) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 203] setNormalImage:equationScoreNumber9_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 202] setNormalImage:equationScoreNumber9_5];
                        }
                        
                        [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 201] setNormalImage:equationScoreNumber0_4];
                    }
                    
                    timeInt /= 10;
                    count++;
                }
            }
            
            else if(timeLeft > 0 && timeLeft < 1){
                int lSD = timeInt % 10;
                
                if(lSD == 0) {
                    if(count == 0){
                        [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 203] setNormalImage:equationScoreNumber0_6];
                    }
                    
                    [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 202] setNormalImage:equationScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 201] setNormalImage:equationScoreNumber0_4];
                }
                
                else if(lSD == 1) {
                    if(count == 0){
                        [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 203] setNormalImage:equationScoreNumber1_6];
                    }
                    
                    [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 202] setNormalImage:equationScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 201] setNormalImage:equationScoreNumber0_4];
                }
                
                else if(lSD == 2) {
                    if(count == 0){
                        [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 203] setNormalImage:equationScoreNumber2_6];
                    }
                    
                    [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 202] setNormalImage:equationScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 201] setNormalImage:equationScoreNumber0_4];
                }
                
                else if(lSD == 3) {
                    if(count == 0){
                        [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 203] setNormalImage:equationScoreNumber3_6];
                    }
                    
                    [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 202] setNormalImage:equationScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 201] setNormalImage:equationScoreNumber0_4];
                }
                
                else if(lSD == 4) {
                    if(count == 0){
                        [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 203] setNormalImage:equationScoreNumber4_6];
                    }
                    
                    [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 202] setNormalImage:equationScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 201] setNormalImage:equationScoreNumber0_4];
                }
                
                else if(lSD == 5) {
                    if(count == 0){
                        [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 203] setNormalImage:equationScoreNumber5_6];
                    }
                    
                    [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 202] setNormalImage:equationScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 201] setNormalImage:equationScoreNumber0_4];
                }
                
                else if(lSD == 6) {
                    if(count == 0){
                        [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 203] setNormalImage:equationScoreNumber6_6];
                    }
                    
                    [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 202] setNormalImage:equationScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 201] setNormalImage:equationScoreNumber0_4];
                }
                
                else if(lSD == 7) {
                    if(count == 0){
                        [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 203] setNormalImage:equationScoreNumber7_6];
                    }
                    
                    [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 202] setNormalImage:equationScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 201] setNormalImage:equationScoreNumber0_4];
                }
                
                else if(lSD == 8) {
                    if(count == 0){
                        [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 203] setNormalImage:equationScoreNumber8_6];
                    }
                    
                    [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 202] setNormalImage:equationScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 201] setNormalImage:equationScoreNumber0_4];
                }
                
                else if(lSD == 9) {
                    if(count == 0){
                        [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 203] setNormalImage:equationScoreNumber9_6];
                    }
                    
                    [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 202] setNormalImage:equationScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[equationTimeMenu getChildByTag: 201] setNormalImage:equationScoreNumber0_4];
                }
                
                timeInt /= 10;
                count++;
            }
            
            scoreInt = equationScore;
            
            //SCORE DIGIT CALCULATIONS
            if(timeLeft > 0) {
                if(equationScore != prevEquationScore){
                    if(equationScore >= 0 && equationScore < 10){
                        if(equationScore == 0){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 303] setNormalImage:equationScoreNumber0_3];
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 302] setNormalImage:equationScoreNumber0_2];
                        }
                        else if(equationScore == 1){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 303] setNormalImage:equationScoreNumber1_3];
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 302] setNormalImage:equationScoreNumber0_2];
                        }
                        else if(equationScore == 2){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 303] setNormalImage:equationScoreNumber2_3];
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 302] setNormalImage:equationScoreNumber0_2];
                        }
                        else if(equationScore == 3){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 303] setNormalImage:equationScoreNumber3_3];
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 302] setNormalImage:equationScoreNumber0_2];
                        }
                        else if(equationScore == 4){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 303] setNormalImage:equationScoreNumber4_3];
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 302] setNormalImage:equationScoreNumber0_2];
                        }
                        else if(equationScore == 5){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 303] setNormalImage:equationScoreNumber5_3];
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 302] setNormalImage:equationScoreNumber0_2];
                        }
                        else if(equationScore == 6){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 303] setNormalImage:equationScoreNumber6_3];
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 302] setNormalImage:equationScoreNumber0_2];
                        }
                        else if(equationScore == 7){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 303] setNormalImage:equationScoreNumber7_3];
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 302] setNormalImage:equationScoreNumber0_2];
                        }
                        else if(equationScore == 8){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 303] setNormalImage:equationScoreNumber8_3];
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 302] setNormalImage:equationScoreNumber0_2];
                        }
                        else if(equationScore == 9){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 303] setNormalImage:equationScoreNumber9_3];
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 302] setNormalImage:equationScoreNumber0_2];
                        }
                        [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 301] setNormalImage:equationScoreNumber0_1];
                    }
                    
                    else if(equationScore >= 10 && equationScore <= 99){
                        int lSDS = scoreInt % 10;
                        if(lSDS == 0){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 303] setNormalImage:equationScoreNumber0_3];
                        }
                        else if(lSDS == 1){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 303] setNormalImage:equationScoreNumber1_3];
                        }
                        else if(lSDS == 2){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 303] setNormalImage:equationScoreNumber2_3];
                        }
                        else if(lSDS == 3){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 303] setNormalImage:equationScoreNumber3_3];
                        }
                        else if(lSDS == 4){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 303] setNormalImage:equationScoreNumber4_3];
                        }
                        else if(lSDS == 5){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 303] setNormalImage:equationScoreNumber5_3];
                        }
                        else if(lSDS == 6){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 303] setNormalImage:equationScoreNumber6_3];
                        }
                        else if(lSDS == 7){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 303] setNormalImage:equationScoreNumber7_3];
                        }
                        else if(lSDS == 8){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 303] setNormalImage:equationScoreNumber8_3];
                        }
                        else if(lSDS == 9){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 303] setNormalImage:equationScoreNumber9_3];
                        }
                        
                        if(equationScore >= 10 && equationScore <= 19){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 302] setNormalImage:equationScoreNumber1_2];
                        }
                        else if(equationScore >= 20 && equationScore <= 29){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 302] setNormalImage:equationScoreNumber2_2];
                        }
                        else if(equationScore >= 30 && equationScore <= 39){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 302] setNormalImage:equationScoreNumber3_2];
                        }
                        else if(equationScore >= 40 && equationScore <= 49){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 302] setNormalImage:equationScoreNumber4_2];
                        }
                        else if(equationScore >= 50 && equationScore <= 59){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 302] setNormalImage:equationScoreNumber5_2];
                        }
                        else if(equationScore >= 60 && equationScore <= 69){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 302] setNormalImage:equationScoreNumber6_2];
                        }
                        else if(equationScore >= 70 && equationScore <= 79){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 302] setNormalImage:equationScoreNumber7_2];
                        }
                        else if(equationScore >= 80 && equationScore <= 89){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 302] setNormalImage:equationScoreNumber8_2];
                        }
                        else if(equationScore >= 90 && equationScore <= 99){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 302] setNormalImage:equationScoreNumber9_2];
                        }
                        [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 301] setNormalImage:equationScoreNumber0_1];
                    }
                    
                    else if(equationScore >= 100 && equationScore <= 999){
                        int eqCount = 0;
                        while(eqCount < 2){
                            int lSDSs = scoreInt % 10;
                            if(eqCount == 0){
                                if(lSDSs == 0){
                                    [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 303] setNormalImage:equationScoreNumber0_3];
                                }
                                else if(lSDSs == 1){
                                    [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 303] setNormalImage:equationScoreNumber1_3];
                                }
                                else if(lSDSs == 2){
                                    [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 303] setNormalImage:equationScoreNumber2_3];
                                }
                                else if(lSDSs == 3){
                                    [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 303] setNormalImage:equationScoreNumber3_3];
                                }
                                else if(lSDSs == 4){
                                    [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 303] setNormalImage:equationScoreNumber4_3];
                                }
                                else if(lSDSs == 5){
                                    [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 303] setNormalImage:equationScoreNumber5_3];
                                }
                                else if(lSDSs == 6){
                                    [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 303] setNormalImage:equationScoreNumber6_3];
                                }
                                else if(lSDSs == 7){
                                    [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 303] setNormalImage:equationScoreNumber7_3];
                                }
                                else if(lSDSs == 8){
                                    [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 303] setNormalImage:equationScoreNumber8_3];
                                }
                                else if(lSDSs == 9){
                                    [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 303] setNormalImage:equationScoreNumber9_3];
                                }
                            }
                            else if(eqCount == 1){
                                if(lSDSs == 0){
                                    [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 302] setNormalImage:equationScoreNumber0_2];
                                }
                                else if(lSDSs == 1){
                                    [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 302] setNormalImage:equationScoreNumber1_2];
                                }
                                else if(lSDSs == 2){
                                    [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 302] setNormalImage:equationScoreNumber2_2];
                                }
                                else if(lSDSs == 3){
                                    [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 302] setNormalImage:equationScoreNumber3_2];
                                }
                                else if(lSDSs == 4){
                                    [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 302] setNormalImage:equationScoreNumber4_2];
                                }
                                else if(lSDSs == 5){
                                    [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 302] setNormalImage:equationScoreNumber5_2];
                                }
                                else if(lSDSs == 6){
                                    [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 302] setNormalImage:equationScoreNumber6_2];
                                }
                                else if(lSDSs == 7){
                                    [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 302] setNormalImage:equationScoreNumber7_2];
                                }
                                else if(lSDSs == 8){
                                    [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 302] setNormalImage:equationScoreNumber8_2];
                                }
                                else if(lSDSs == 9){
                                    [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 302] setNormalImage:equationScoreNumber9_2];
                                }
                            }
                            scoreInt /= 10;
                            eqCount++;
                        }
                        
                        if(equationScore >= 100 && equationScore <= 199){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 301] setNormalImage:equationScoreNumber1_1];
                        }
                        else if(equationScore >= 200 && equationScore <= 299){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 301] setNormalImage:equationScoreNumber2_1];
                        }
                        else if(equationScore >= 300 && equationScore <= 399){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 301] setNormalImage:equationScoreNumber3_1];
                        }
                        else if(equationScore >= 400 && equationScore <= 499){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 301] setNormalImage:equationScoreNumber4_1];
                        }
                        else if(equationScore >= 500 && equationScore <= 599){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 301] setNormalImage:equationScoreNumber5_1];
                        }
                        else if(equationScore >= 600 && equationScore <= 699){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 301] setNormalImage:equationScoreNumber6_1];
                        }
                        else if(equationScore >= 700 && equationScore <= 799){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 301] setNormalImage:equationScoreNumber7_1];
                        }
                        else if(equationScore >= 800 && equationScore <= 899){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 301] setNormalImage:equationScoreNumber8_1];
                        }
                        else if(equationScore >= 900 && equationScore <= 999){
                            [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 301] setNormalImage:equationScoreNumber9_1];
                        }
                    }
                    else if(equationScore <= 0){
                        [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 303] setNormalImage:equationScoreNumber0_3];
                        [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 302] setNormalImage:equationScoreNumber0_2];
                        [(CCMenuItemSprite*)[equationScoreMenu getChildByTag: 301] setNormalImage:equationScoreNumber0_1];
                    }
                }
            }
            
            prevEquationScore = equationScore;
            
            if(equationSelectionMade){
                equationSelectionMade = FALSE;
                [self randomiseEquationButtons];
                [self generateNewSum];
            }
        }
        else if(timeLeft <= 0 && !equationTimeUpDrawn){
            equationTimeUp = [CCSprite spriteWithFile:@"GameSplashImages/time_up_splash.png"];
            equationTimeUp.position = ccp(240, 160);
            [self addChild: equationTimeUp];
            [self scheduleOnce:@selector(equationGameOver:) delay:2];
            [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_finish.mp3"];
            equationTimeUpDrawn = TRUE;
        }
        
        else {
            //Do nothing
        }
    }
}

-(void) initSmallEquationElements{
    equationButtonImageZeroSmall = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_0.png"]retain];
    equationButtonImageZeroSmallSelected = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_0_selected.png"]retain];
    equationButtonImageOneSmall = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_1.png"]retain];
    equationButtonImageOneSmallSelected = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_1_selected.png"]retain];
    equationButtonImageTwoSmall = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_2.png"]retain];
    equationButtonImageTwoSmallSelected = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_2_selected.png"]retain];
    equationButtonImageThreeSmall = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_3.png"]retain];
    equationButtonImageThreeSmallSelected = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_3_selected.png"]retain];
    equationButtonImageFourSmall = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_4.png"]retain];
    equationButtonImageFourSmallSelected = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_4_selected.png"]retain];
    equationButtonImageFiveSmall = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_5.png"]retain];
    equationButtonImageFiveSmallSelected = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_5_selected.png"]retain];
    equationButtonImageSixSmall = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_6.png"]retain];
    equationButtonImageSixSmallSelected = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_6_selected.png"]retain];
    equationButtonImageSevenSmall = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_7.png"]retain];
    equationButtonImageSevenSmallSelected = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_7_selected.png"]retain];
    equationButtonImageEightSmall = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_8.png"]retain];
    equationButtonImageEightSmallSelected = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_8_selected.png"]retain];
    equationButtonImageNineSmall = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_9.png"]retain];
    equationButtonImageNineSmallSelected = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_9_selected.png"]retain];
    equationButtonImageEqualsSmall1 = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_equals_reg.png"]retain];
    equationButtonImageEqualsSmall1Selected = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_equals_reg_selected.png"]retain];
    equationButtonImageEqualsSmall2 = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_equals_reg.png"]retain];
    equationButtonImageEqualsSmall2Selected = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_equals_reg_selected.png"]retain];
    
    equationButtonImageZeroSmallCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_0.png"]retain];
    equationButtonImageZeroSmallSelectedCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_0_selected.png"]retain];
    equationButtonImageOneSmallCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_1.png"]retain];
    equationButtonImageOneSmallSelectedCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_1_selected.png"]retain];
    equationButtonImageTwoSmallCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_2.png"]retain];
    equationButtonImageTwoSmallSelectedCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_2_selected.png"]retain];
    equationButtonImageThreeSmallCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_3.png"]retain];
    equationButtonImageThreeSmallSelectedCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_3_selected.png"]retain];
    equationButtonImageFourSmallCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_4.png"]retain];
    equationButtonImageFourSmallSelectedCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_4_selected.png"]retain];
    equationButtonImageFiveSmallCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_5.png"]retain];
    equationButtonImageFiveSmallSelectedCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_5_selected.png"]retain];
    equationButtonImageSixSmallCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_6.png"]retain];
    equationButtonImageSixSmallSelectedCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_6_selected.png"]retain];
    equationButtonImageSevenSmallCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_7.png"]retain];
    equationButtonImageSevenSmallSelectedCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_7_selected.png"]retain];
    equationButtonImageEightSmallCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_8.png"]retain];
    equationButtonImageEightSmallSelectedCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_8_selected.png"]retain];
    equationButtonImageNineSmallCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_9.png"]retain];
    equationButtonImageNineSmallSelectedCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_9_selected.png"]retain];
    equationButtonImageEqualsSmall1Copy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_equals_reg.png"]retain];
    equationButtonImageEqualsSmall1SelectedCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_equals_reg_selected.png"]retain];
    equationButtonImageEqualsSmall2Copy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_equals_reg.png"]retain];
    equationButtonImageEqualsSmall2SelectedCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_equals_reg_selected.png"]retain];
    
    equationSmallButtonSpriteOne = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                           selectedSprite:NULL
                                                                   target:self
                                                                 selector:@selector(buttonOnePressed:)]retain];
    
    equationSmallButtonSpriteTwo = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                           selectedSprite:NULL
                                                                   target:self
                                                                 selector:@selector(buttonTwoPressed:)]retain];
    
    equationSmallButtonSpriteThree = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                           selectedSprite:NULL
                                                                   target:self
                                                                 selector:@selector(buttonThreePressed:)]retain];
    
    equationSmallButtonSpriteFour = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                           selectedSprite:NULL
                                                                   target:self
                                                                 selector:@selector(buttonFourPressed:)]retain];
    
    equationSmallButtonSpriteFive = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                           selectedSprite:NULL
                                                                   target:self
                                                                 selector:@selector(buttonFivePressed:)]retain];
    
    equationSmallButtonSpriteSix = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                           selectedSprite:NULL
                                                                   target:self
                                                                 selector:@selector(buttonSixPressed:)]retain];
    
    equationSmallButtonSpriteSeven = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                           selectedSprite:NULL
                                                                   target:self
                                                                 selector:@selector(buttonSevenPressed:)]retain];
    
    equationSmallButtonSpriteEight = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                           selectedSprite:NULL
                                                                   target:self
                                                                 selector:@selector(buttonEightPressed:)]retain];
    
    equationSmallButtonSpriteNine = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                           selectedSprite:NULL
                                                                   target:self
                                                                 selector:@selector(buttonNinePressed:)]retain];
    
    equationSmallButtonSpriteTen = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                           selectedSprite:NULL
                                                                   target:self
                                                                 selector:@selector(buttonTenPressed:)]retain];
    
    [equationSmallButtonSpriteOne setTag: 0];
    [equationSmallButtonSpriteTwo setTag: 1];
    [equationSmallButtonSpriteThree setTag: 2];
    [equationSmallButtonSpriteFour setTag: 3];
    [equationSmallButtonSpriteFive setTag: 4];
    [equationSmallButtonSpriteSix setTag: 5];
    [equationSmallButtonSpriteSeven setTag: 6];
    [equationSmallButtonSpriteEight setTag: 7];
    [equationSmallButtonSpriteNine setTag: 8];
    [equationSmallButtonSpriteTen setTag: 9];
    
    equationButtonMenuTop = [CCMenu menuWithItems:
                             equationSmallButtonSpriteOne,
                             equationSmallButtonSpriteTwo,
                             equationSmallButtonSpriteThree,
                             equationSmallButtonSpriteFour,
                             equationSmallButtonSpriteFive,
                             nil];
    
    equationButtonMenuBot = [CCMenu menuWithItems:
                             equationSmallButtonSpriteSix,
                             equationSmallButtonSpriteSeven,
                             equationSmallButtonSpriteEight,
                             equationSmallButtonSpriteNine,
                             equationSmallButtonSpriteTen,
                             nil];
    
    [equationButtonMenuTop alignItemsHorizontallyWithPadding: 60];
    [equationButtonMenuBot alignItemsHorizontallyWithPadding: 60];
    equationButtonMenuTop.position = ccp(240, 90);
    equationButtonMenuBot.position = ccp(240, 30);
    [equationButtonLayer addChild: equationButtonMenuTop];
    [equationButtonLayer addChild: equationButtonMenuBot];
    equationButtonLayer.position = ccp(1000, 1000);
}

-(void) initLargeEquationElements{
    equationButtonImageZeroLarge = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_0_large.png"]retain];
    equationButtonImageZeroLargeSelected = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_0_large_selected.png"]retain];
    equationButtonImageOneLarge = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_1_large.png"]retain];
    equationButtonImageOneLargeSelected = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_1_large_selected.png"]retain];
    equationButtonImageTwoLarge = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_2_large.png"]retain];
    equationButtonImageTwoLargeSelected = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_2_large_selected.png"]retain];
    equationButtonImageThreeLarge = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_3_large.png"]retain];
    equationButtonImageThreeLargeSelected = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_3_large_selected.png"]retain];
    equationButtonImageFourLarge = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_4_large.png"]retain];
    equationButtonImageFourLargeSelected = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_4_large_selected.png"]retain];
    equationButtonImageFiveLarge = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_5_large.png"]retain];
    equationButtonImageFiveLargeSelected = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_5_large_selected.png"]retain];
    equationButtonImageSixLarge = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_6_large.png"]retain];
    equationButtonImageSixLargeSelected = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_6_large_selected.png"]retain];
    equationButtonImageSevenLarge = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_7_large.png"]retain];
    equationButtonImageSevenLargeSelected = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_7_large_selected.png"]retain];
    equationButtonImageEightLarge = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_8_large.png"]retain];
    equationButtonImageEightLargeSelected = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_8_large_selected.png"]retain];
    equationButtonImageNineLarge = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_9_large.png"]retain];
    equationButtonImageNineLargeSelected = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_9_large_selected.png"]retain];
    equationButtonImageEqualsLarge1 = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_equals_large.png"]retain];
    equationButtonImageEqualsLarge1Selected = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_equals_large_selected.png"]retain];
    equationButtonImageEqualsLarge2 = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_equals_large.png"]retain];
    equationButtonImageEqualsLarge2Selected = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_equals_large_selected.png"]retain];
    
    equationButtonImageZeroLargeCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_0_large.png"]retain];
    equationButtonImageZeroLargeSelectedCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_0_large_selected.png"]retain];
    equationButtonImageOneLargeCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_1_large.png"]retain];
    equationButtonImageOneLargeSelectedCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_1_large_selected.png"]retain];
    equationButtonImageTwoLargeCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_2_large.png"]retain];
    equationButtonImageTwoLargeSelectedCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_2_large_selected.png"]retain];
    equationButtonImageThreeLargeCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_3_large.png"]retain];
    equationButtonImageThreeLargeSelectedCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_3_large_selected.png"]retain];
    equationButtonImageFourLargeCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_4_large.png"]retain];
    equationButtonImageFourLargeSelectedCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_4_large_selected.png"]retain];
    equationButtonImageFiveLargeCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_5_large.png"]retain];
    equationButtonImageFiveLargeSelectedCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_5_large_selected.png"]retain];
    equationButtonImageSixLargeCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_6_large.png"]retain];
    equationButtonImageSixLargeSelectedCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_6_large_selected.png"]retain];
    equationButtonImageSevenLargeCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_7_large.png"]retain];
    equationButtonImageSevenLargeSelectedCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_7_large_selected.png"]retain];
    equationButtonImageEightLargeCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_8_large.png"]retain];
    equationButtonImageEightLargeSelectedCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_8_large_selected.png"]retain];
    equationButtonImageNineLargeCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_9_large.png"]retain];
    equationButtonImageNineLargeSelectedCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_9_large_selected.png"]retain];
    equationButtonImageEqualsLarge1Copy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_equals_large.png"]retain];
    equationButtonImageEqualsLarge1SelectedCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_equals_large_selected.png"]retain];
    equationButtonImageEqualsLarge2Copy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_equals_large.png"]retain];
    equationButtonImageEqualsLarge2SelectedCopy = [[CCSprite spriteWithFile:@"EquationNumberklutzButtons/number_equals_large_selected.png"]retain];
    
    equationLargeButtonSpriteLeft = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                           selectedSprite:NULL
                                                                   target:self
                                                                 selector:@selector(buttonLeftPressed:)] retain];
    
    equationLargeButtonSpriteRight = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                           selectedSprite:NULL
                                                                   target:self
                                                                 selector:@selector(buttonRightPressed:)]retain];
    
    
    [equationLargeButtonSpriteLeft setTag: 10];
    [equationLargeButtonSpriteRight setTag: 11];
    
    equationButtonLargeMenu = [CCMenu menuWithItems: equationLargeButtonSpriteLeft,
                               equationLargeButtonSpriteRight,
                               nil];
    
    [equationButtonLargeMenu alignItemsHorizontallyWithPadding:385];
    equationButtonLargeMenu.position = ccp(240, 60);
    
    [equationButtonLayer addChild: equationButtonLargeMenu];
}

-(void) initScoreTimeElements{
    //ITEM IMAGES
    equationScoreLetterS = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_s_30px.png"
                                                   selectedImage:NULL];
    
    equationScoreLetterC = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_c_30px.png"
                                                  selectedImage:NULL];
    
    equationScoreLetterO = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_o_30px.png"
                                                  selectedImage:NULL];
    
    equationScoreLetterR = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_r_30px.png"
                                                  selectedImage:NULL];
    
    equationScoreLetterE = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_e_30px.png"
                                                  selectedImage:NULL];
    
    equationTimeLetterT = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_t_30px.png"
                                                   selectedImage:NULL];
    
    equationTimeLetterI = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_i_30px.png"
                                                  selectedImage:NULL];
    
    equationTimeLetterM = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_m_30px.png"
                                                  selectedImage:NULL];
    
    equationTimeLetterE = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_e_30px.png"
                                                 selectedImage:NULL];
    
    equationScoreLetterColon = [CCMenuItemImage itemWithNormalImage:@"NumberSigns/signs_30px/letters_colon_30px.png"
                                                      selectedImage:NULL];
    
    equationTimeLetterColon = [CCMenuItemImage itemWithNormalImage:@"NumberSigns/signs_30px/letters_colon_30px.png"
                                                      selectedImage:NULL];
    
    equationTimeLetterPoint = [CCMenuItemImage itemWithNormalImage:@"NumberSigns/signs_30px/letter_point_30px.png"
                                                     selectedImage:NULL];
    
    //ITEM SPRITES
    equationScoreNumber0_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_0_30px.png"] retain];
    equationScoreNumber0_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_0_30px.png"] retain];
    equationScoreNumber0_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_0_30px.png"] retain];
    equationScoreNumber0_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_0_30px.png"] retain];
    equationScoreNumber0_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_0_30px.png"] retain];
    equationScoreNumber0_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_0_30px.png"] retain];
    equationScoreNumber1_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_1_30px.png"] retain];
    equationScoreNumber1_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_1_30px.png"] retain];
    equationScoreNumber1_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_1_30px.png"] retain];
    equationScoreNumber1_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_1_30px.png"] retain];
    equationScoreNumber1_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_1_30px.png"] retain];
    equationScoreNumber1_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_1_30px.png"] retain];
    equationScoreNumber2_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_2_30px.png"] retain];
    equationScoreNumber2_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_2_30px.png"] retain];
    equationScoreNumber2_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_2_30px.png"] retain];
    equationScoreNumber2_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_2_30px.png"] retain];
    equationScoreNumber2_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_2_30px.png"] retain];
    equationScoreNumber2_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_2_30px.png"] retain];
    equationScoreNumber3_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_3_30px.png"] retain];
    equationScoreNumber3_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_3_30px.png"] retain];
    equationScoreNumber3_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_3_30px.png"] retain];
    equationScoreNumber3_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_3_30px.png"] retain];
    equationScoreNumber3_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_3_30px.png"] retain];
    equationScoreNumber3_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_3_30px.png"] retain];
    equationScoreNumber4_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_4_30px.png"] retain];
    equationScoreNumber4_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_4_30px.png"] retain];
    equationScoreNumber4_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_4_30px.png"] retain];
    equationScoreNumber4_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_4_30px.png"] retain];
    equationScoreNumber4_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_4_30px.png"] retain];
    equationScoreNumber4_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_4_30px.png"] retain];
    equationScoreNumber5_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_5_30px.png"] retain];
    equationScoreNumber5_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_5_30px.png"] retain];
    equationScoreNumber5_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_5_30px.png"] retain];
    equationScoreNumber5_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_5_30px.png"] retain];
    equationScoreNumber5_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_5_30px.png"] retain];
    equationScoreNumber5_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_5_30px.png"] retain];
    equationScoreNumber6_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_6_30px.png"] retain];
    equationScoreNumber6_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_6_30px.png"] retain];
    equationScoreNumber6_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_6_30px.png"] retain];
    equationScoreNumber6_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_6_30px.png"] retain];
    equationScoreNumber6_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_6_30px.png"] retain];
    equationScoreNumber6_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_6_30px.png"] retain];
    equationScoreNumber7_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_7_30px.png"] retain];
    equationScoreNumber7_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_7_30px.png"] retain];
    equationScoreNumber7_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_7_30px.png"] retain];
    equationScoreNumber7_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_7_30px.png"] retain];
    equationScoreNumber7_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_7_30px.png"] retain];
    equationScoreNumber7_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_7_30px.png"] retain];
    equationScoreNumber8_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_8_30px.png"] retain];
    equationScoreNumber8_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_8_30px.png"] retain];
    equationScoreNumber8_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_8_30px.png"] retain];
    equationScoreNumber8_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_8_30px.png"] retain];
    equationScoreNumber8_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_8_30px.png"] retain];
    equationScoreNumber8_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_8_30px.png"] retain];
    equationScoreNumber9_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_9_30px.png"] retain];
    equationScoreNumber9_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_9_30px.png"] retain];
    equationScoreNumber9_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_9_30px.png"] retain];
    equationScoreNumber9_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_9_30px.png"] retain];
    equationScoreNumber9_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_9_30px.png"] retain];
    equationScoreNumber9_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_9_30px.png"] retain];
    
    equationScoreDigitOne = [CCMenuItemSprite itemWithNormalSprite:equationScoreNumber0_1
                                                    selectedSprite:NULL];
    
    equationScoreDigitTwo = [CCMenuItemSprite itemWithNormalSprite:equationScoreNumber0_2
                                                    selectedSprite:NULL];
    
    equationScoreDigitThree = [CCMenuItemSprite itemWithNormalSprite:equationScoreNumber0_3
                                                    selectedSprite:NULL];
    
    equationTimeDigitOne = [CCMenuItemSprite itemWithNormalSprite:equationScoreNumber6_4
                                                   selectedSprite:NULL];
    
    equationTimeDigitTwo = [CCMenuItemSprite itemWithNormalSprite:equationScoreNumber0_5
                                                   selectedSprite:NULL];
    
    equationTimeDigitThree = [CCMenuItemSprite itemWithNormalSprite:equationScoreNumber0_6
                                                   selectedSprite:NULL];
    
    [equationScoreDigitOne setTag: 301];
    [equationScoreDigitTwo setTag: 302];
    [equationScoreDigitThree setTag: 303];
    
    [equationTimeDigitOne setTag: 201];
    [equationTimeDigitTwo setTag: 202];
    [equationTimeDigitThree setTag: 203];
    
    equationScoreMenu = [CCMenu menuWithItems:equationScoreLetterS, equationScoreLetterC, equationScoreLetterO, equationScoreLetterR, equationScoreLetterE, equationScoreLetterColon, equationScoreDigitOne, equationScoreDigitTwo, equationScoreDigitThree, nil];
    
    equationTimeMenu = [CCMenu menuWithItems:equationTimeLetterT, equationTimeLetterI, equationTimeLetterM, equationTimeLetterE, equationTimeLetterColon, equationTimeDigitOne, equationTimeDigitTwo, equationTimeLetterPoint, equationTimeDigitThree, nil];
    
    [equationScoreMenu alignItemsHorizontallyWithPadding:2];
    [equationTimeMenu alignItemsHorizontallyWithPadding:2];
    equationScoreMenu.position = ccp(60, 305);
    equationTimeMenu.position = ccp(420, 305);
    [equationScoreTimeLayer addChild:equationScoreMenu];
    [equationScoreTimeLayer addChild:equationTimeMenu];
    equationScoreTimeLayer.position = ccp(1000, 1000);
}

-(void) initSumEquationElements{
    equationNumberZeroLeft = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_180px/number_0_180px.png"]retain];
    equationNumberZeroRight = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_180px/number_0_180px.png"]retain];
    equationNumberOneLeft = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_180px/number_1_180px.png"]retain];
    equationNumberOneRight = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_180px/number_1_180px.png"]retain];
    equationNumberTwoLeft = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_180px/number_2_180px.png"]retain];
    equationNumberTwoRight = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_180px/number_2_180px.png"]retain];
    equationNumberThreeLeft = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_180px/number_3_180px.png"]retain];
    equationNumberThreeRight = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_180px/number_3_180px.png"]retain];
    equationNumberFourLeft = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_180px/number_4_180px.png"]retain];
    equationNumberFourRight = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_180px/number_4_180px.png"]retain];
    equationNumberFiveLeft = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_180px/number_5_180px.png"]retain];
    equationNumberFiveRight = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_180px/number_5_180px.png"]retain];
    equationNumberSixLeft = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_180px/number_6_180px.png"]retain];
    equationNumberSixRight = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_180px/number_6_180px.png"]retain];
    equationNumberSevenLeft = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_180px/number_7_180px.png"]retain];
    equationNumberSevenRight = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_180px/number_7_180px.png"]retain];
    equationNumberEightLeft = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_180px/number_8_180px.png"]retain];
    equationNumberEightRight = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_180px/number_8_180px.png"]retain];
    equationNumberNineLeft = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_180px/number_9_180px.png"]retain];
    equationNumberNineRight = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_180px/number_9_180px.png"]retain];

    equationSignMultiply = [[CCSprite spriteWithFile:@"NumberSigns/signs_110px/numbers_times_110px.png"]retain];
    equationSignPlus = [[CCSprite spriteWithFile:@"NumberSigns/signs_110px/numbers_plus_110px.png"]retain];
    
    equationSumSpriteOne = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                    selectedSprite:NULL]retain];
    
    equationSumSpriteTwo = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                    selectedSprite:NULL]retain];
    
    equationSumSpriteThree = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                    selectedSprite:NULL]retain];
    
    equationSumMenu = [CCMenu menuWithItems: equationSumSpriteOne, equationSumSpriteTwo, equationSumSpriteThree, nil];
    [equationSumMenu alignItemsHorizontallyWithPadding:90];
    equationSumMenu.position = ccp(240, 220);
    
    [equationSumSpriteOne setTag: 401];
    [equationSumSpriteTwo setTag: 402];
    [equationSumSpriteThree setTag: 403];
    
    [equationSumLayer addChild: equationSumMenu];
    equationSumLayer.position = ccp(1000, 1000);
}

-(void) initEquationDynamicElements{
    equationDynamicZeroLeft = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_0_60px.png"]retain];
    equationDynamicZeroRight = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_0_60px.png"]retain];
    equationDynamicOneLeft = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_1_60px.png"]retain];
    equationDynamicOneRight = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_1_60px.png"]retain];
    equationDynamicTwoLeft = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_2_60px.png"]retain];
    equationDynamicTwoRight = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_2_60px.png"]retain];
    equationDynamicThreeLeft = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_3_60px.png"]retain];
    equationDynamicThreeRight = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_3_60px.png"]retain];
    equationDynamicFourLeft = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_4_60px.png"]retain];
    equationDynamicFourRight = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_4_60px.png"]retain];
    equationDynamicFiveLeft = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_5_60px.png"]retain];
    equationDynamicFiveRight = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_5_60px.png"]retain];
    equationDynamicSixLeft = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_6_60px.png"]retain];
    equationDynamicSixRight = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_6_60px.png"]retain];
    equationDynamicSevenLeft = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_7_60px.png"]retain];
    equationDynamicSevenRight = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_7_60px.png"]retain];
    equationDynamicEightLeft = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_8_60px.png"]retain];
    equationDynamicEightRight = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_8_60px.png"]retain];
    equationDynamicNineLeft = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_9_60px.png"]retain];
    equationDynamicNineRight = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_9_60px.png"]retain];
    
    equationDynamicZeroLeftCopy = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_0_60px.png"]retain];
    equationDynamicZeroRightCopy = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_0_60px.png"]retain];
    equationDynamicOneLeftCopy = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_1_60px.png"]retain];
    equationDynamicOneRightCopy = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_1_60px.png"]retain];
    equationDynamicTwoLeftCopy = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_2_60px.png"]retain];
    equationDynamicTwoRightCopy = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_2_60px.png"]retain];
    equationDynamicThreeLeftCopy = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_3_60px.png"]retain];
    equationDynamicThreeRightCopy = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_3_60px.png"]retain];
    equationDynamicFourLeftCopy = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_4_60px.png"]retain];
    equationDynamicFourRightCopy = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_4_60px.png"]retain];
    equationDynamicFiveLeftCopy = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_5_60px.png"]retain];
    equationDynamicFiveRightCopy = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_5_60px.png"]retain];
    equationDynamicSixLeftCopy = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_6_60px.png"]retain];
    equationDynamicSixRightCopy = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_6_60px.png"]retain];
    equationDynamicSevenLeftCopy = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_7_60px.png"]retain];
    equationDynamicSevenRightCopy = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_7_60px.png"]retain];
    equationDynamicEightLeftCopy = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_8_60px.png"]retain];
    equationDynamicEightRightCopy = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_8_60px.png"]retain];
    equationDynamicNineLeftCopy = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_9_60px.png"]retain];
    equationDynamicNineRightCopy = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_9_60px.png"]retain];
    
    equationDynamicAnswerSpriteOne = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                              selectedSprite:NULL]retain];
    
    equationDynamicAnswerSpriteTwo = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                              selectedSprite:NULL]retain];
    
    [equationDynamicAnswerSpriteOne setTag: 501];
    [equationDynamicAnswerSpriteTwo setTag: 502];
    
    equationDynamicAnswer = [CCMenu menuWithItems: equationDynamicAnswerSpriteOne, equationDynamicAnswerSpriteTwo, nil];
    [equationDynamicAnswer alignItemsHorizontallyWithPadding:60];
    equationDynamicAnswer.position = ccp(240, 140);
    
    [equationSumLayer addChild: equationDynamicAnswer];
}

-(void) drawEquationElements{
    if(playerAnswers == 0) {
        equationButtonLayer.position = ccp(0, 0);
        equationScoreTimeLayer.position = ccp(0, 0);
        equationSumLayer.position = ccp(0, 0);
        allChange = FALSE;
    }
}

-(void) randomiseEquationButtons{
    [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: 0] removeAllChildrenWithCleanup:YES];
    [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: 1] removeAllChildrenWithCleanup:YES];
    [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: 2] removeAllChildrenWithCleanup:YES];
    [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: 3] removeAllChildrenWithCleanup:YES];
    [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: 4] removeAllChildrenWithCleanup:YES];
    [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: 5] removeAllChildrenWithCleanup:YES];
    [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: 6] removeAllChildrenWithCleanup:YES];
    [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: 7] removeAllChildrenWithCleanup:YES];
    [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: 8] removeAllChildrenWithCleanup:YES];
    [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: 9] removeAllChildrenWithCleanup:YES];
    [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: 10] removeAllChildrenWithCleanup:YES];
    [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: 11] removeAllChildrenWithCleanup:YES];
    
    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] removeAllChildrenWithCleanup:YES];
    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] removeAllChildrenWithCleanup:YES];
    
    equationButtonsPressed = 0;
    equationGivenAnswer = -1;
    firstNumPressed = 100;
    secondNumPressed = 100;
    
    if(equationFirstSum){
        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: 0] setNormalImage:equationButtonImageZeroSmall];
        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: 0] setSelectedImage:equationButtonImageZeroSmallSelected];
        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: 1] setNormalImage:equationButtonImageOneSmall];
        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: 1] setSelectedImage:equationButtonImageOneSmallSelected];
        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: 2] setNormalImage:equationButtonImageTwoSmall];
        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: 2] setSelectedImage:equationButtonImageTwoSmallSelected];
        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: 3] setNormalImage:equationButtonImageThreeSmall];
        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: 3] setSelectedImage:equationButtonImageThreeSmallSelected];
        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: 4] setNormalImage:equationButtonImageFourSmall];
        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: 4] setSelectedImage:equationButtonImageFourSmallSelected];
        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: 5] setNormalImage:equationButtonImageFiveSmall];
        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: 5] setSelectedImage:equationButtonImageFiveSmallSelected];
        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: 6] setNormalImage:equationButtonImageSixSmall];
        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: 6] setSelectedImage:equationButtonImageSixSmallSelected];
        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: 7] setNormalImage:equationButtonImageSevenSmall];
        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: 7] setSelectedImage:equationButtonImageSevenSmallSelected];
        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: 8] setNormalImage:equationButtonImageEightSmall];
        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: 8] setSelectedImage:equationButtonImageEightSmallSelected];
        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: 9] setNormalImage:equationButtonImageNineSmall];
        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: 9] setSelectedImage:equationButtonImageNineSmallSelected];
        
        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: 10] setNormalImage:equationButtonImageEqualsLarge1];
        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: 10] setSelectedImage:equationButtonImageEqualsLarge1Selected];
        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: 11] setNormalImage:equationButtonImageEqualsLarge2];
        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: 11] setSelectedImage:equationButtonImageEqualsLarge2Selected];
        
        equationButtonOneID = 0;
        equationButtonTwoID = 1;
        equationButtonThreeID = 2;
        equationButtonFourID = 3;
        equationButtonFiveID = 4;
        equationButtonSixID = 5;
        equationButtonSevenID = 6;
        equationButtonEightID = 7;
        equationButtonNineID = 8;
        equationButtonTenID = 9;
        equationButtonLeftID = 10;
        equationButtonRightID = 11;
        
        equationFirstSum = FALSE;
    }
    else{
        equationImageNumberArray[0] = -1;
        equationImageNumberArray[1] = -1;
        equationImageNumberArray[2] = -1;
        equationImageNumberArray[3] = -1;
        equationImageNumberArray[4] = -1;
        equationImageNumberArray[5] = -1;
        equationImageNumberArray[6] = -1;
        equationImageNumberArray[7] = -1;
        equationImageNumberArray[8] = -1;
        equationImageNumberArray[9] = -1;
        equationImageNumberArray[10] = -1;
        equationImageNumberArray[11] = -1;
        
        int eqIt = 0;
        int i = 0;
        BOOL doesContain = FALSE;
        
        while (eqIt <= 11){
            doesContain = FALSE;
            i = 0;
            randomButtonGenNumber = ((arc4random() % (11-0+1)) + 0);
            while(i <= 11 && !doesContain){
                if(equationImageNumberArray[i] == randomButtonGenNumber){
                    doesContain = TRUE;
                }
                i++;
            }
            if(!doesContain){
                equationImageNumberArray[eqIt] = randomButtonGenNumber;
                eqIt++;
            }
            else{
                
            }
        }
        
        if(numOfAnswers % 2 == 0){
            for(int j = 0; j <= 11; j++){
                if(equationImageNumberArray[j] == 0){
                    if(j <= 4){
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setNormalImage:equationButtonImageZeroSmall];
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setSelectedImage:equationButtonImageZeroSmallSelected];
                    }
                    else if(j <= 9){
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setNormalImage:equationButtonImageZeroSmall];
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setSelectedImage:equationButtonImageZeroSmallSelected];
                    }
                    else if(j <= 11){
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setNormalImage:equationButtonImageZeroLarge];
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setSelectedImage:equationButtonImageZeroLargeSelected];
                    }
                }
                else if(equationImageNumberArray[j] == 1){
                    if(j <= 4){
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setNormalImage:equationButtonImageOneSmall];
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setSelectedImage:equationButtonImageOneSmallSelected];
                    }
                    else if(j <= 9){
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setNormalImage:equationButtonImageOneSmall];
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setSelectedImage:equationButtonImageOneSmallSelected];
                    }
                    else if(j <= 11){
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setNormalImage:equationButtonImageOneLarge];
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setSelectedImage:equationButtonImageOneLargeSelected];
                    }
                }
                else if(equationImageNumberArray[j] == 2){
                    if(j <= 4){
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setNormalImage:equationButtonImageTwoSmall];
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setSelectedImage:equationButtonImageTwoSmallSelected];
                    }
                    else if(j <= 9){
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setNormalImage:equationButtonImageTwoSmall];
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setSelectedImage:equationButtonImageTwoSmallSelected];
                    }
                    else if(j <= 11){
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setNormalImage:equationButtonImageTwoLarge];
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setSelectedImage:equationButtonImageTwoLargeSelected];
                    }
                }
                else if(equationImageNumberArray[j] == 3){
                    if(j <= 4){
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setNormalImage:equationButtonImageThreeSmall];
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setSelectedImage:equationButtonImageThreeSmallSelected];
                    }
                    else if(j <= 9){
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setNormalImage:equationButtonImageThreeSmall];
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setSelectedImage:equationButtonImageThreeSmallSelected];
                    }
                    else if(j <= 11){
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setNormalImage:equationButtonImageThreeLarge];
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setSelectedImage:equationButtonImageThreeLargeSelected];
                    }
                }
                else if(equationImageNumberArray[j] == 4){
                    if(j <= 4){
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setNormalImage:equationButtonImageFourSmall];
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setSelectedImage:equationButtonImageFourSmallSelected];
                    }
                    else if(j <= 9){
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setNormalImage:equationButtonImageFourSmall];
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setSelectedImage:equationButtonImageFourSmallSelected];
                    }
                    else if(j <= 11){
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setNormalImage:equationButtonImageFourLarge];
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setSelectedImage:equationButtonImageFourLargeSelected];
                    }
                }
                else if(equationImageNumberArray[j] == 5){
                    if(j <= 4){
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setNormalImage:equationButtonImageFiveSmall];
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setSelectedImage:equationButtonImageFiveSmallSelected];
                    }
                    else if(j <= 9){
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setNormalImage:equationButtonImageFiveSmall];
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setSelectedImage:equationButtonImageFiveSmallSelected];
                    }
                    else if(j <= 11){
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setNormalImage:equationButtonImageFiveLarge];
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setSelectedImage:equationButtonImageFiveLargeSelected];
                    }
                }
                else if(equationImageNumberArray[j] == 6){
                    if(j <= 4){
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setNormalImage:equationButtonImageSixSmall];
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setSelectedImage:equationButtonImageSixSmallSelected];
                    }
                    else if(j <= 9){
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setNormalImage:equationButtonImageSixSmall];
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setSelectedImage:equationButtonImageSixSmallSelected];
                    }
                    else if(j <= 11){
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setNormalImage:equationButtonImageSixLarge];
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setSelectedImage:equationButtonImageSixLargeSelected];
                    }
                }
                else if(equationImageNumberArray[j] == 7){
                    if(j <= 4){
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setNormalImage:equationButtonImageSevenSmall];
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setSelectedImage:equationButtonImageSevenSmallSelected];
                    }
                    else if(j <= 9){
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setNormalImage:equationButtonImageSevenSmall];
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setSelectedImage:equationButtonImageSevenSmallSelected];
                    }
                    else if(j <= 11){
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setNormalImage:equationButtonImageSevenLarge];
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setSelectedImage:equationButtonImageSevenLargeSelected];
                    }
                }
                else if(equationImageNumberArray[j] == 8){
                    if(j <= 4){
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setNormalImage:equationButtonImageEightSmall];
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setSelectedImage:equationButtonImageEightSmallSelected];
                    }
                    else if(j <= 9){
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setNormalImage:equationButtonImageEightSmall];
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setSelectedImage:equationButtonImageEightSmallSelected];
                    }
                    else if(j <= 11){
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setNormalImage:equationButtonImageEightLarge];
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setSelectedImage:equationButtonImageEightLargeSelected];
                    }
                }
                else if(equationImageNumberArray[j] == 9){
                    if(j <= 4){
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setNormalImage:equationButtonImageNineSmall];
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setSelectedImage:equationButtonImageNineSmallSelected];
                    }
                    else if(j <= 9){
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setNormalImage:equationButtonImageNineSmall];
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setSelectedImage:equationButtonImageNineSmallSelected];
                    }
                    else if(j <= 11){
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setNormalImage:equationButtonImageNineLarge];
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setSelectedImage:equationButtonImageNineLargeSelected];
                    }
                }
                else if(equationImageNumberArray[j] == 10){
                    if(j <= 4){
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setNormalImage:equationButtonImageEqualsSmall1];
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setSelectedImage:equationButtonImageEqualsSmall1Selected];
                    }
                    else if(j <= 9){
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setNormalImage:equationButtonImageEqualsSmall1];
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setSelectedImage:equationButtonImageEqualsSmall1Selected];
                    }
                    else if(j <= 11){
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setNormalImage:equationButtonImageEqualsLarge1];
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setSelectedImage:equationButtonImageEqualsLarge1Selected];
                    }
                }
                else if(equationImageNumberArray[j] == 11){
                    if(j <= 4){
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setNormalImage:equationButtonImageEqualsSmall2];
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setSelectedImage:equationButtonImageEqualsSmall2Selected];
                    }
                    else if(j <= 9){
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setNormalImage:equationButtonImageEqualsSmall2];
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setSelectedImage:equationButtonImageEqualsSmall2Selected];
                    }
                    else if(j <= 11){
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setNormalImage:equationButtonImageEqualsLarge2];
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setSelectedImage:equationButtonImageEqualsLarge2Selected];
                    }
                }
            }
        }
        else if(numOfAnswers % 2 == 1){
            for(int j = 0; j <= 11; j++){
                if(equationImageNumberArray[j] == 0){
                    if(j <= 4){
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setNormalImage:equationButtonImageZeroSmallCopy];
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setSelectedImage:equationButtonImageZeroSmallSelectedCopy];
                    }
                    else if(j <= 9){
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setNormalImage:equationButtonImageZeroSmallCopy];
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setSelectedImage:equationButtonImageZeroSmallSelectedCopy];
                    }
                    else if(j <= 11){
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setNormalImage:equationButtonImageZeroLargeCopy];
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setSelectedImage:equationButtonImageZeroLargeSelectedCopy];
                    }
                }
                else if(equationImageNumberArray[j] == 1){
                    if(j <= 4){
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setNormalImage:equationButtonImageOneSmallCopy];
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setSelectedImage:equationButtonImageOneSmallSelectedCopy];
                    }
                    else if(j <= 9){
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setNormalImage:equationButtonImageOneSmallCopy];
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setSelectedImage:equationButtonImageOneSmallSelectedCopy];
                    }
                    else if(j <= 11){
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setNormalImage:equationButtonImageOneLargeCopy];
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setSelectedImage:equationButtonImageOneLargeSelectedCopy];
                    }
                }
                else if(equationImageNumberArray[j] == 2){
                    if(j <= 4){
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setNormalImage:equationButtonImageTwoSmallCopy];
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setSelectedImage:equationButtonImageTwoSmallSelectedCopy];
                    }
                    else if(j <= 9){
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setNormalImage:equationButtonImageTwoSmallCopy];
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setSelectedImage:equationButtonImageTwoSmallSelectedCopy];
                    }
                    else if(j <= 11){
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setNormalImage:equationButtonImageTwoLargeCopy];
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setSelectedImage:equationButtonImageTwoLargeSelectedCopy];
                    }
                }
                else if(equationImageNumberArray[j] == 3){
                    if(j <= 4){
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setNormalImage:equationButtonImageThreeSmallCopy];
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setSelectedImage:equationButtonImageThreeSmallSelectedCopy];
                    }
                    else if(j <= 9){
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setNormalImage:equationButtonImageThreeSmallCopy];
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setSelectedImage:equationButtonImageThreeSmallSelectedCopy];
                    }
                    else if(j <= 11){
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setNormalImage:equationButtonImageThreeLargeCopy];
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setSelectedImage:equationButtonImageThreeLargeSelectedCopy];
                    }
                }
                else if(equationImageNumberArray[j] == 4){
                    if(j <= 4){
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setNormalImage:equationButtonImageFourSmallCopy];
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setSelectedImage:equationButtonImageFourSmallSelectedCopy];
                    }
                    else if(j <= 9){
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setNormalImage:equationButtonImageFourSmallCopy];
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setSelectedImage:equationButtonImageFourSmallSelectedCopy];
                    }
                    else if(j <= 11){
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setNormalImage:equationButtonImageFourLargeCopy];
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setSelectedImage:equationButtonImageFourLargeSelectedCopy];
                    }
                }
                else if(equationImageNumberArray[j] == 5){
                    if(j <= 4){
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setNormalImage:equationButtonImageFiveSmallCopy];
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setSelectedImage:equationButtonImageFiveSmallSelectedCopy];
                    }
                    else if(j <= 9){
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setNormalImage:equationButtonImageFiveSmallCopy];
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setSelectedImage:equationButtonImageFiveSmallSelectedCopy];
                    }
                    else if(j <= 11){
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setNormalImage:equationButtonImageFiveLargeCopy];
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setSelectedImage:equationButtonImageFiveLargeSelectedCopy];
                    }
                }
                else if(equationImageNumberArray[j] == 6){
                    if(j <= 4){
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setNormalImage:equationButtonImageSixSmallCopy];
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setSelectedImage:equationButtonImageSixSmallSelectedCopy];
                    }
                    else if(j <= 9){
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setNormalImage:equationButtonImageSixSmallCopy];
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setSelectedImage:equationButtonImageSixSmallSelectedCopy];
                    }
                    else if(j <= 11){
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setNormalImage:equationButtonImageSixLargeCopy];
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setSelectedImage:equationButtonImageSixLargeSelectedCopy];
                    }
                }
                else if(equationImageNumberArray[j] == 7){
                    if(j <= 4){
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setNormalImage:equationButtonImageSevenSmallCopy];
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setSelectedImage:equationButtonImageSevenSmallSelectedCopy];
                    }
                    else if(j <= 9){
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setNormalImage:equationButtonImageSevenSmallCopy];
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setSelectedImage:equationButtonImageSevenSmallSelectedCopy];
                    }
                    else if(j <= 11){
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setNormalImage:equationButtonImageSevenLargeCopy];
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setSelectedImage:equationButtonImageSevenLargeSelectedCopy];
                    }
                }
                else if(equationImageNumberArray[j] == 8){
                    if(j <= 4){
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setNormalImage:equationButtonImageEightSmallCopy];
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setSelectedImage:equationButtonImageEightSmallSelectedCopy];
                    }
                    else if(j <= 9){
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setNormalImage:equationButtonImageEightSmallCopy];
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setSelectedImage:equationButtonImageEightSmallSelectedCopy];
                    }
                    else if(j <= 11){
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setNormalImage:equationButtonImageEightLargeCopy];
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setSelectedImage:equationButtonImageEightLargeSelectedCopy];
                    }
                }
                else if(equationImageNumberArray[j] == 9){
                    if(j <= 4){
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setNormalImage:equationButtonImageNineSmallCopy];
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setSelectedImage:equationButtonImageNineSmallSelectedCopy];
                    }
                    else if(j <= 9){
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setNormalImage:equationButtonImageNineSmallCopy];
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setSelectedImage:equationButtonImageNineSmallSelectedCopy];
                    }
                    else if(j <= 11){
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setNormalImage:equationButtonImageNineLargeCopy];
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setSelectedImage:equationButtonImageNineLargeSelectedCopy];
                    }
                }
                else if(equationImageNumberArray[j] == 10){
                    if(j <= 4){
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setNormalImage:equationButtonImageEqualsSmall1Copy];
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setSelectedImage:equationButtonImageEqualsSmall1SelectedCopy];
                    }
                    else if(j <= 9){
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setNormalImage:equationButtonImageEqualsSmall1Copy];
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setSelectedImage:equationButtonImageEqualsSmall1SelectedCopy];
                    }
                    else if(j <= 11){
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setNormalImage:equationButtonImageEqualsLarge1Copy];
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setSelectedImage:equationButtonImageEqualsLarge1SelectedCopy];
                    }
                }
                else if(equationImageNumberArray[j] == 11){
                    if(j <= 4){
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setNormalImage:equationButtonImageEqualsSmall2Copy];
                        [(CCMenuItemSprite*)[equationButtonMenuTop getChildByTag: j] setSelectedImage:equationButtonImageEqualsSmall2SelectedCopy];
                    }
                    else if(j <= 9){
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setNormalImage:equationButtonImageEqualsSmall2Copy];
                        [(CCMenuItemSprite*)[equationButtonMenuBot getChildByTag: j] setSelectedImage:equationButtonImageEqualsSmall2SelectedCopy];
                    }
                    else if(j <= 11){
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setNormalImage:equationButtonImageEqualsLarge2Copy];
                        [(CCMenuItemSprite*)[equationButtonLargeMenu getChildByTag: j] setSelectedImage:equationButtonImageEqualsLarge2SelectedCopy];
                    }
                }
            }
        }
        
        equationButtonOneID = equationImageNumberArray[0];
        equationButtonTwoID = equationImageNumberArray[1];
        equationButtonThreeID = equationImageNumberArray[2];
        equationButtonFourID = equationImageNumberArray[3];
        equationButtonFiveID = equationImageNumberArray[4];
        equationButtonSixID = equationImageNumberArray[5];
        equationButtonSevenID = equationImageNumberArray[6];
        equationButtonEightID = equationImageNumberArray[7];
        equationButtonNineID = equationImageNumberArray[8];
        equationButtonTenID = equationImageNumberArray[9];
        equationButtonLeftID = equationImageNumberArray[10];
        equationButtonRightID = equationImageNumberArray[11];
    }
}

-(void) generateNewSum{
    int count = 0;
    int num1 = 0;
    int num2 = 0;
    
    while(count <= 2){
        if(count == 0){
            randomSumGenNumber = ((arc4random() % (9-0+1)) + 0);
            
            if(randomSumGenNumber == 0){
                [(CCMenuItemSprite*)[equationSumMenu getChildByTag: 401] setNormalImage:equationNumberZeroLeft];
                num1 = 0;
            }
            else if(randomSumGenNumber == 1){
                [(CCMenuItemSprite*)[equationSumMenu getChildByTag: 401] setNormalImage:equationNumberOneLeft];
                num1 = 1;
            }
            else if(randomSumGenNumber == 2){
                [(CCMenuItemSprite*)[equationSumMenu getChildByTag: 401] setNormalImage:equationNumberTwoLeft];
                num1 = 2;
            }
            else if(randomSumGenNumber == 3){
                [(CCMenuItemSprite*)[equationSumMenu getChildByTag: 401] setNormalImage:equationNumberThreeLeft];
                num1 = 3;
            }
            else if(randomSumGenNumber == 4){
                [(CCMenuItemSprite*)[equationSumMenu getChildByTag: 401] setNormalImage:equationNumberFourLeft];
                num1 = 4;
            }
            else if(randomSumGenNumber == 5){
                [(CCMenuItemSprite*)[equationSumMenu getChildByTag: 401] setNormalImage:equationNumberFiveLeft];
                num1 = 5;
            }
            else if(randomSumGenNumber == 6){
                [(CCMenuItemSprite*)[equationSumMenu getChildByTag: 401] setNormalImage:equationNumberSixLeft];
                num1 = 6;
            }
            else if(randomSumGenNumber == 7){
                [(CCMenuItemSprite*)[equationSumMenu getChildByTag: 401] setNormalImage:equationNumberSevenLeft];
                num1 = 7;
            }
            else if(randomSumGenNumber == 8){
                [(CCMenuItemSprite*)[equationSumMenu getChildByTag: 401] setNormalImage:equationNumberEightLeft];
                num1 = 8;
            }
            else if(randomSumGenNumber == 9){
                [(CCMenuItemSprite*)[equationSumMenu getChildByTag: 401] setNormalImage:equationNumberNineLeft];
                num1 = 9;
            }
            
            count++;
        }
        else if(count == 1){
            randomSumGenSign = ((arc4random() % (1-0+1)) + 0);
            
            if(randomSumGenSign == 0){
                [(CCMenuItemSprite*)[equationSumMenu getChildByTag: 402] setNormalImage:equationSignPlus];
                equationSignIdent = @"ADD";
            }
            else if(randomSumGenSign == 1){
                [(CCMenuItemSprite*)[equationSumMenu getChildByTag: 402] setNormalImage:equationSignMultiply];
                equationSignIdent = @"MULTIPLY";
            }
            
            count++;
        }
        else if(count == 2){
            randomSumGenNumber = ((arc4random() % (9-0+1)) + 0);
            
            if(randomSumGenNumber == 0){
                [(CCMenuItemSprite*)[equationSumMenu getChildByTag: 403] setNormalImage:equationNumberZeroRight];
                num2 = 0;
            }
            else if(randomSumGenNumber == 1){
                [(CCMenuItemSprite*)[equationSumMenu getChildByTag: 403] setNormalImage:equationNumberOneRight];
                num2 = 1;
            }
            else if(randomSumGenNumber == 2){
                [(CCMenuItemSprite*)[equationSumMenu getChildByTag: 403] setNormalImage:equationNumberTwoRight];
                num2 = 2;
            }
            else if(randomSumGenNumber == 3){
                [(CCMenuItemSprite*)[equationSumMenu getChildByTag: 403] setNormalImage:equationNumberThreeRight];
                num2 = 3;
            }
            else if(randomSumGenNumber == 4){
                [(CCMenuItemSprite*)[equationSumMenu getChildByTag: 403] setNormalImage:equationNumberFourRight];
                num2 = 4;
            }
            else if(randomSumGenNumber == 5){
                [(CCMenuItemSprite*)[equationSumMenu getChildByTag: 403] setNormalImage:equationNumberFiveRight];
                num2 = 5;
            }
            else if(randomSumGenNumber == 6){
                [(CCMenuItemSprite*)[equationSumMenu getChildByTag: 403] setNormalImage:equationNumberSixRight];
                num2 = 6;
            }
            else if(randomSumGenNumber == 7){
                [(CCMenuItemSprite*)[equationSumMenu getChildByTag: 403] setNormalImage:equationNumberSevenRight];
                num2 = 7;
            }
            else if(randomSumGenNumber == 8){
                [(CCMenuItemSprite*)[equationSumMenu getChildByTag: 403] setNormalImage:equationNumberEightRight];
                num2 = 8;
            }
            else if(randomSumGenNumber == 9){
                [(CCMenuItemSprite*)[equationSumMenu getChildByTag: 403] setNormalImage:equationNumberNineRight];
                num2 = 9;
            }
            
            count++;
        }
        
        if([equationSignIdent isEqualToString:@"ADD"]){
            equationActualAnswer = num1 + num2;
        }
        else if([equationSignIdent isEqualToString:@"MULTIPLY"]){
            equationActualAnswer = num1 * num2;
        }
    }
}

-(void) buttonOnePressed:(id)sender{
    if(!equationTimeUpDrawn){
        if(equationButtonsPressed == 0){
            if(equationButtonOneID == 0){
                firstNumPressed = 0;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicZeroLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicZeroLeftCopy];
                }
            }
            else if(equationButtonOneID == 1){
                firstNumPressed = 1;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicOneLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicOneLeftCopy];
                }
            }
            else if(equationButtonOneID == 2){
                firstNumPressed = 2;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicTwoLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicTwoLeftCopy];
                }
            }
            else if(equationButtonOneID == 3){
                firstNumPressed = 3;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicThreeLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicThreeLeftCopy];
                }
            }
            else if(equationButtonOneID == 4){
                firstNumPressed = 4;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFourLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFourLeftCopy];
                }
            }
            else if(equationButtonOneID == 5){
                firstNumPressed = 5;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFiveLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFiveLeftCopy];
                }
            }
            else if(equationButtonOneID == 6){
                firstNumPressed = 6;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSixLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSixLeftCopy];
                }
            }
            else if(equationButtonOneID == 7){
                firstNumPressed = 7;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSevenLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSevenLeftCopy];
                }
            }
            else if(equationButtonOneID == 8){
                firstNumPressed = 8;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicEightLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicEightLeftCopy];
                }
            }
            else if(equationButtonOneID == 9){
                firstNumPressed = 9;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicNineLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicNineLeftCopy];
                }
            }
            else if(equationButtonOneID == 10 || equationButtonOneID == 11){
                //WRONG BITCH
                if(equationScore <= 0){
                    equationScore = 0;
                }
                else{
                    equationScore -= 5;
                }
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
        }
        else if(equationButtonsPressed == 1){
            if(equationButtonOneID == 0){
                secondNumPressed = 0;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicZeroRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicZeroRightCopy];
                }
            }
            else if(equationButtonOneID == 1){
                secondNumPressed = 1;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicOneRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicOneRightCopy];
                }
            }
            else if(equationButtonOneID == 2){
                secondNumPressed = 2;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicTwoRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicTwoRightCopy];
                }
            }
            else if(equationButtonOneID == 3){
                secondNumPressed = 3;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicThreeRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicThreeRightCopy];
                }
            }
            else if(equationButtonOneID == 4){
                secondNumPressed = 4;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFourRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFourRightCopy];
                }
            }
            else if(equationButtonOneID == 5){
                secondNumPressed = 5;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFiveRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFiveRightCopy];
                }
            }
            else if(equationButtonOneID == 6){
                secondNumPressed = 6;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSixRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSixRightCopy];
                }
            }
            else if(equationButtonOneID == 7){
                secondNumPressed = 7;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSevenRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSevenRightCopy];
                }
            }
            else if(equationButtonOneID == 8){
                secondNumPressed = 8;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicEightRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicEightRightCopy];
                }
            }
            else if(equationButtonOneID == 9){
                secondNumPressed = 9;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicNineRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicNineRightCopy];
                }
            }
            else if(equationButtonOneID == 10 || equationButtonOneID == 11){
                //CONCATENATE DIGITS
                equationGivenAnswer = firstNumPressed;
                
                if(equationGivenAnswer == equationActualAnswer){
                    equationScore += 5;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
                }
                else{
                    if(equationScore <= 0){
                        equationScore = 0;
                    }
                    else{
                        equationScore -= 5;
                    }
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                }
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
        }
        else if(equationButtonsPressed == 2){
            //GO HOME
            //CONCATENATE DIGITS
            if(equationButtonOneID == 10 || equationButtonOneID == 11){
                if(firstNumPressed == 0){
                    equationGivenAnswer = secondNumPressed;
                }
                else if(firstNumPressed == 1){
                    equationGivenAnswer = 10 + secondNumPressed;
                }
                else if(firstNumPressed == 2){
                    equationGivenAnswer = 20 + secondNumPressed;
                }
                else if(firstNumPressed == 3){
                    equationGivenAnswer = 30 + secondNumPressed;
                }
                else if(firstNumPressed == 4){
                    equationGivenAnswer = 40 + secondNumPressed;
                }
                else if(firstNumPressed == 5){
                    equationGivenAnswer = 50 + secondNumPressed;
                }
                else if(firstNumPressed == 6){
                    equationGivenAnswer = 60 + secondNumPressed;
                }
                else if(firstNumPressed == 7){
                    equationGivenAnswer = 70 + secondNumPressed;
                }
                else if(firstNumPressed == 8){
                    equationGivenAnswer = 80 + secondNumPressed;
                }
                else if(firstNumPressed == 9){
                    equationGivenAnswer = 90 + secondNumPressed;
                }
                
                if(equationGivenAnswer == equationActualAnswer){
                    equationScore += 5;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
                }
                else{
                    if(equationScore <= 0){
                        equationScore = 0;
                    }
                    else{
                        equationScore -= 5;
                    }
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                }
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
            else{
                //Do nothing - wait for right press
            }
        }
    }
    else{
        
    }
}

-(void) buttonTwoPressed:(id)sender{
    if(!equationTimeUpDrawn){
        if(equationButtonsPressed == 0){
            if(equationButtonTwoID == 0){
                firstNumPressed = 0;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicZeroLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicZeroLeftCopy];
                }
            }
            else if(equationButtonTwoID == 1){
                firstNumPressed = 1;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicOneLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicOneLeftCopy];
                }
            }
            else if(equationButtonTwoID == 2){
                firstNumPressed = 2;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicTwoLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicTwoLeftCopy];
                }
            }
            else if(equationButtonTwoID == 3){
                firstNumPressed = 3;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicThreeLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicThreeLeftCopy];
                }
            }
            else if(equationButtonTwoID == 4){
                firstNumPressed = 4;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFourLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFourLeftCopy];
                }
            }
            else if(equationButtonTwoID == 5){
                firstNumPressed = 5;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFiveLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFiveLeftCopy];
                }
            }
            else if(equationButtonTwoID == 6){
                firstNumPressed = 6;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSixLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSixLeftCopy];
                }
            }
            else if(equationButtonTwoID == 7){
                firstNumPressed = 7;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSevenLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSevenLeftCopy];
                }
            }
            else if(equationButtonTwoID == 8){
                firstNumPressed = 8;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicEightLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicEightLeftCopy];
                }
            }
            else if(equationButtonTwoID == 9){
                firstNumPressed = 9;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicNineLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicNineLeftCopy];
                }
            }
            else if(equationButtonTwoID == 10 || equationButtonTwoID == 11){
                //WRONG BITCH
                if(equationScore <= 0){
                    equationScore = 0;
                }
                else{
                    equationScore -= 5;
                }
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
        }
        else if(equationButtonsPressed == 1){
            if(equationButtonTwoID == 0){
                secondNumPressed = 0;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicZeroRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicZeroRightCopy];
                }
            }
            else if(equationButtonTwoID == 1){
                secondNumPressed = 1;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicOneRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicOneRightCopy];
                }
            }
            else if(equationButtonTwoID == 2){
                secondNumPressed = 2;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicTwoRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicTwoRightCopy];
                }
            }
            else if(equationButtonTwoID == 3){
                secondNumPressed = 3;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicThreeRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicThreeRightCopy];
                }
            }
            else if(equationButtonTwoID == 4){
                secondNumPressed = 4;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFourRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFourRightCopy];
                }
            }
            else if(equationButtonTwoID == 5){
                secondNumPressed = 5;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFiveRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFiveRightCopy];
                }
            }
            else if(equationButtonTwoID == 6){
                secondNumPressed = 6;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSixRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSixRightCopy];
                }
            }
            else if(equationButtonTwoID == 7){
                secondNumPressed = 7;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSevenRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSevenRightCopy];
                }
            }
            else if(equationButtonTwoID == 8){
                secondNumPressed = 8;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicEightRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicEightRightCopy];
                }
            }
            else if(equationButtonTwoID == 9){
                secondNumPressed = 9;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicNineRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicNineRightCopy];
                }
            }
            else if(equationButtonTwoID == 10 || equationButtonTwoID == 11){
                //CONCATENATE DIGITS
                equationGivenAnswer = firstNumPressed;
                
                if(equationGivenAnswer == equationActualAnswer){
                    equationScore += 5;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
                }
                else{
                    if(equationScore <= 0){
                        equationScore = 0;
                    }
                    else{
                        equationScore -= 5;
                    }
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                }
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
        }
        else if(equationButtonsPressed == 2){
            //GO HOME
            //CONCATENATE DIGITS
            if(equationButtonTwoID == 10 || equationButtonTwoID == 11){
                if(firstNumPressed == 0){
                    equationGivenAnswer = secondNumPressed;
                }
                else if(firstNumPressed == 1){
                    equationGivenAnswer = 10 + secondNumPressed;
                }
                else if(firstNumPressed == 2){
                    equationGivenAnswer = 20 + secondNumPressed;
                }
                else if(firstNumPressed == 3){
                    equationGivenAnswer = 30 + secondNumPressed;
                }
                else if(firstNumPressed == 4){
                    equationGivenAnswer = 40 + secondNumPressed;
                }
                else if(firstNumPressed == 5){
                    equationGivenAnswer = 50 + secondNumPressed;
                }
                else if(firstNumPressed == 6){
                    equationGivenAnswer = 60 + secondNumPressed;
                }
                else if(firstNumPressed == 7){
                    equationGivenAnswer = 70 + secondNumPressed;
                }
                else if(firstNumPressed == 8){
                    equationGivenAnswer = 80 + secondNumPressed;
                }
                else if(firstNumPressed == 9){
                    equationGivenAnswer = 90 + secondNumPressed;
                }
                
                if(equationGivenAnswer == equationActualAnswer){
                    equationScore += 5;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
                }
                else{
                    if(equationScore <= 0){
                        equationScore = 0;
                    }
                    else{
                        equationScore -= 5;
                    }
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                }
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
            else{
                //Do nothing - wait for right press
            }
        }
    }
    else{
        
    }
}

-(void) buttonThreePressed:(id)sender{
    if(!equationTimeUpDrawn){
        if(equationButtonsPressed == 0){
            if(equationButtonThreeID == 0){
                firstNumPressed = 0;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicZeroLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicZeroLeftCopy];
                }
            }
            else if(equationButtonThreeID == 1){
                firstNumPressed = 1;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicOneLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicOneLeftCopy];
                }
            }
            else if(equationButtonThreeID == 2){
                firstNumPressed = 2;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicTwoLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicTwoLeftCopy];
                }
            }
            else if(equationButtonThreeID == 3){
                firstNumPressed = 3;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicThreeLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicThreeLeftCopy];
                }
            }
            else if(equationButtonThreeID == 4){
                firstNumPressed = 4;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFourLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFourLeftCopy];
                }
            }
            else if(equationButtonThreeID == 5){
                firstNumPressed = 5;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFiveLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFiveLeftCopy];
                }
            }
            else if(equationButtonThreeID == 6){
                firstNumPressed = 6;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSixLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSixLeftCopy];
                }
            }
            else if(equationButtonThreeID == 7){
                firstNumPressed = 7;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSevenLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSevenLeftCopy];
                }
            }
            else if(equationButtonThreeID == 8){
                firstNumPressed = 8;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicEightLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicEightLeftCopy];
                }
            }
            else if(equationButtonThreeID == 9){
                firstNumPressed = 9;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicNineLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicNineLeftCopy];
                }
            }
            else if(equationButtonThreeID == 10 || equationButtonThreeID == 11){
                //WRONG BITCH
                if(equationScore <= 0){
                    equationScore = 0;
                }
                else{
                    equationScore -= 5;
                }
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
        }
        else if(equationButtonsPressed == 1){
            if(equationButtonThreeID == 0){
                secondNumPressed = 0;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicZeroRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicZeroRightCopy];
                }
            }
            else if(equationButtonThreeID == 1){
                secondNumPressed = 1;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicOneRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicOneRightCopy];
                }
            }
            else if(equationButtonThreeID == 2){
                secondNumPressed = 2;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicTwoRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicTwoRightCopy];
                }
            }
            else if(equationButtonThreeID == 3){
                secondNumPressed = 3;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicThreeRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicThreeRightCopy];
                }
            }
            else if(equationButtonThreeID == 4){
                secondNumPressed = 4;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFourRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFourRightCopy];
                }
            }
            else if(equationButtonThreeID == 5){
                secondNumPressed = 5;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFiveRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFiveRightCopy];
                }
            }
            else if(equationButtonThreeID == 6){
                secondNumPressed = 6;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSixRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSixRightCopy];
                }
            }
            else if(equationButtonThreeID == 7){
                secondNumPressed = 7;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSevenRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSevenRightCopy];
                }
            }
            else if(equationButtonThreeID == 8){
                secondNumPressed = 8;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicEightRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicEightRightCopy];
                }
            }
            else if(equationButtonThreeID == 9){
                secondNumPressed = 9;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicNineRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicNineRightCopy];
                }
            }
            else if(equationButtonThreeID == 10 || equationButtonThreeID == 11){
                //CONCATENATE DIGITS
                equationGivenAnswer = firstNumPressed;
                
                if(equationGivenAnswer == equationActualAnswer){
                    equationScore += 5;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
                }
                else{
                    if(equationScore <= 0){
                        equationScore = 0;
                    }
                    else{
                        equationScore -= 5;
                    }
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                }
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
        }
        else if(equationButtonsPressed == 2){
            //GO HOME
            //CONCATENATE DIGITS
            if(equationButtonThreeID == 10 || equationButtonThreeID == 11){
                if(firstNumPressed == 0){
                    equationGivenAnswer = secondNumPressed;
                }
                else if(firstNumPressed == 1){
                    equationGivenAnswer = 10 + secondNumPressed;
                }
                else if(firstNumPressed == 2){
                    equationGivenAnswer = 20 + secondNumPressed;
                }
                else if(firstNumPressed == 3){
                    equationGivenAnswer = 30 + secondNumPressed;
                }
                else if(firstNumPressed == 4){
                    equationGivenAnswer = 40 + secondNumPressed;
                }
                else if(firstNumPressed == 5){
                    equationGivenAnswer = 50 + secondNumPressed;
                }
                else if(firstNumPressed == 6){
                    equationGivenAnswer = 60 + secondNumPressed;
                }
                else if(firstNumPressed == 7){
                    equationGivenAnswer = 70 + secondNumPressed;
                }
                else if(firstNumPressed == 8){
                    equationGivenAnswer = 80 + secondNumPressed;
                }
                else if(firstNumPressed == 9){
                    equationGivenAnswer = 90 + secondNumPressed;
                }
                
                if(equationGivenAnswer == equationActualAnswer){
                    equationScore += 5;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
                }
                else{
                    if(equationScore <= 0){
                        equationScore = 0;
                    }
                    else{
                        equationScore -= 5;
                    }
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                }
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
            else{
                //Do nothing - wait for right press
            }
        }
    }
    else{
        
    }
}

-(void) buttonFourPressed:(id)sender{
    if(!equationTimeUpDrawn){
        if(equationButtonsPressed == 0){
            if(equationButtonFourID == 0){
                firstNumPressed = 0;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicZeroLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicZeroLeftCopy];
                }
            }
            else if(equationButtonFourID == 1){
                firstNumPressed = 1;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicOneLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicOneLeftCopy];
                }
            }
            else if(equationButtonFourID == 2){
                firstNumPressed = 2;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicTwoLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicTwoLeftCopy];
                }
            }
            else if(equationButtonFourID == 3){
                firstNumPressed = 3;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicThreeLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicThreeLeftCopy];
                }
            }
            else if(equationButtonFourID == 4){
                firstNumPressed = 4;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFourLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFourLeftCopy];
                }
            }
            else if(equationButtonFourID == 5){
                firstNumPressed = 5;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFiveLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFiveLeftCopy];
                }
            }
            else if(equationButtonFourID == 6){
                firstNumPressed = 6;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSixLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSixLeftCopy];
                }
            }
            else if(equationButtonFourID == 7){
                firstNumPressed = 7;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSevenLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSevenLeftCopy];
                }
            }
            else if(equationButtonFourID == 8){
                firstNumPressed = 8;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicEightLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicEightLeftCopy];
                }
            }
            else if(equationButtonFourID == 9){
                firstNumPressed = 9;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicNineLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicNineLeftCopy];
                }
            }
            else if(equationButtonFourID == 10 || equationButtonFourID == 11){
                //WRONG BITCH
                if(equationScore <= 0){
                    equationScore = 0;
                }
                else{
                    equationScore -= 5;
                }
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
        }
        else if(equationButtonsPressed == 1){
            if(equationButtonFourID == 0){
                secondNumPressed = 0;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicZeroRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicZeroRightCopy];
                }
            }
            else if(equationButtonFourID == 1){
                secondNumPressed = 1;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicOneRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicOneRightCopy];
                }
            }
            else if(equationButtonFourID == 2){
                secondNumPressed = 2;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicTwoRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicTwoRightCopy];
                }
            }
            else if(equationButtonFourID == 3){
                secondNumPressed = 3;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicThreeRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicThreeRightCopy];
                }
            }
            else if(equationButtonFourID == 4){
                secondNumPressed = 4;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFourRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFourRightCopy];
                }
            }
            else if(equationButtonFourID == 5){
                secondNumPressed = 5;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFiveRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFiveRightCopy];
                }
            }
            else if(equationButtonFourID == 6){
                secondNumPressed = 6;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSixRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSixRightCopy];
                }
            }
            else if(equationButtonFourID == 7){
                secondNumPressed = 7;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSevenRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSevenRightCopy];
                }
            }
            else if(equationButtonFourID == 8){
                secondNumPressed = 8;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicEightRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicEightRightCopy];
                }
            }
            else if(equationButtonFourID == 9){
                secondNumPressed = 9;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicNineRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicNineRightCopy];
                }
            }
            else if(equationButtonFourID == 10 || equationButtonFourID == 11){
                //CONCATENATE DIGITS
                equationGivenAnswer = firstNumPressed;
                
                if(equationGivenAnswer == equationActualAnswer){
                    equationScore += 5;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
                }
                else{
                    if(equationScore <= 0){
                        equationScore = 0;
                    }
                    else{
                        equationScore -= 5;
                    }
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                }
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
        }
        else if(equationButtonsPressed == 2){
            //GO HOME
            //CONCATENATE DIGITS
            if(equationButtonFourID == 10 || equationButtonFourID == 11){
                if(firstNumPressed == 0){
                    equationGivenAnswer = secondNumPressed;
                }
                else if(firstNumPressed == 1){
                    equationGivenAnswer = 10 + secondNumPressed;
                }
                else if(firstNumPressed == 2){
                    equationGivenAnswer = 20 + secondNumPressed;
                }
                else if(firstNumPressed == 3){
                    equationGivenAnswer = 30 + secondNumPressed;
                }
                else if(firstNumPressed == 4){
                    equationGivenAnswer = 40 + secondNumPressed;
                }
                else if(firstNumPressed == 5){
                    equationGivenAnswer = 50 + secondNumPressed;
                }
                else if(firstNumPressed == 6){
                    equationGivenAnswer = 60 + secondNumPressed;
                }
                else if(firstNumPressed == 7){
                    equationGivenAnswer = 70 + secondNumPressed;
                }
                else if(firstNumPressed == 8){
                    equationGivenAnswer = 80 + secondNumPressed;
                }
                else if(firstNumPressed == 9){
                    equationGivenAnswer = 90 + secondNumPressed;
                }
                
                if(equationGivenAnswer == equationActualAnswer){
                    equationScore += 5;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
                }
                else{
                    if(equationScore <= 0){
                        equationScore = 0;
                    }
                    else{
                        equationScore -= 5;
                    }
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                }
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
            else{
                //Do nothing - wait for right press
            }
        }
    }
    else{
        
    }
}

-(void) buttonFivePressed:(id)sender{
    if(!equationTimeUpDrawn){
        if(equationButtonsPressed == 0){
            if(equationButtonFiveID == 0){
                firstNumPressed = 0;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicZeroLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicZeroLeftCopy];
                }
            }
            else if(equationButtonFiveID == 1){
                firstNumPressed = 1;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicOneLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicOneLeftCopy];
                }
            }
            else if(equationButtonFiveID == 2){
                firstNumPressed = 2;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicTwoLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicTwoLeftCopy];
                }
            }
            else if(equationButtonFiveID == 3){
                firstNumPressed = 3;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicThreeLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicThreeLeftCopy];
                }
            }
            else if(equationButtonFiveID == 4){
                firstNumPressed = 4;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFourLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFourLeftCopy];
                }
            }
            else if(equationButtonFiveID == 5){
                firstNumPressed = 5;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFiveLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFiveLeftCopy];
                }
            }
            else if(equationButtonFiveID == 6){
                firstNumPressed = 6;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSixLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSixLeftCopy];
                }
            }
            else if(equationButtonFiveID == 7){
                firstNumPressed = 7;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSevenLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSevenLeftCopy];
                }
            }
            else if(equationButtonFiveID == 8){
                firstNumPressed = 8;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicEightLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicEightLeftCopy];
                }
            }
            else if(equationButtonFiveID == 9){
                firstNumPressed = 9;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicNineLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicNineLeftCopy];
                }
            }
            else if(equationButtonFiveID == 10 || equationButtonFiveID == 11){
                //WRONG BITCH
                if(equationScore <= 0){
                    equationScore = 0;
                }
                else{
                    equationScore -= 5;
                }
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
        }
        else if(equationButtonsPressed == 1){
            if(equationButtonFiveID == 0){
                secondNumPressed = 0;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicZeroRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicZeroRightCopy];
                }
            }
            else if(equationButtonFiveID == 1){
                secondNumPressed = 1;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicOneRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicOneRightCopy];
                }
            }
            else if(equationButtonFiveID == 2){
                secondNumPressed = 2;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicTwoRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicTwoRightCopy];
                }
            }
            else if(equationButtonFiveID == 3){
                secondNumPressed = 3;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicThreeRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicThreeRightCopy];
                }
            }
            else if(equationButtonFiveID == 4){
                secondNumPressed = 4;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFourRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFourRightCopy];
                }
            }
            else if(equationButtonFiveID == 5){
                secondNumPressed = 5;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFiveRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFiveRightCopy];
                }
            }
            else if(equationButtonFiveID == 6){
                secondNumPressed = 6;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSixRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSixRightCopy];
                }
            }
            else if(equationButtonFiveID == 7){
                secondNumPressed = 7;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSevenRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSevenRightCopy];
                }
            }
            else if(equationButtonFiveID == 8){
                secondNumPressed = 8;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicEightRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicEightRightCopy];
                }
            }
            else if(equationButtonFiveID == 9){
                secondNumPressed = 9;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicNineRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicNineRightCopy];
                }
            }
            else if(equationButtonFiveID == 10 || equationButtonFiveID == 11){
                //CONCATENATE DIGITS
                equationGivenAnswer = firstNumPressed;
                
                if(equationGivenAnswer == equationActualAnswer){
                    equationScore += 5;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
                }
                else{
                    if(equationScore <= 0){
                        equationScore = 0;
                    }
                    else{
                        equationScore -= 5;
                    }
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                }
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
        }
        else if(equationButtonsPressed == 2){
            //GO HOME
            //CONCATENATE DIGITS
            if(equationButtonFiveID == 10 || equationButtonFiveID == 11){
                if(firstNumPressed == 0){
                    equationGivenAnswer = secondNumPressed;
                }
                else if(firstNumPressed == 1){
                    equationGivenAnswer = 10 + secondNumPressed;
                }
                else if(firstNumPressed == 2){
                    equationGivenAnswer = 20 + secondNumPressed;
                }
                else if(firstNumPressed == 3){
                    equationGivenAnswer = 30 + secondNumPressed;
                }
                else if(firstNumPressed == 4){
                    equationGivenAnswer = 40 + secondNumPressed;
                }
                else if(firstNumPressed == 5){
                    equationGivenAnswer = 50 + secondNumPressed;
                }
                else if(firstNumPressed == 6){
                    equationGivenAnswer = 60 + secondNumPressed;
                }
                else if(firstNumPressed == 7){
                    equationGivenAnswer = 70 + secondNumPressed;
                }
                else if(firstNumPressed == 8){
                    equationGivenAnswer = 80 + secondNumPressed;
                }
                else if(firstNumPressed == 9){
                    equationGivenAnswer = 90 + secondNumPressed;
                }
                
                if(equationGivenAnswer == equationActualAnswer){
                    equationScore += 5;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
                }
                else{
                    if(equationScore <= 0){
                        equationScore = 0;
                    }
                    else{
                        equationScore -= 5;
                    }
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                }
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
            else{
                //Do nothing - wait for right press
            }
        }
    }
    else{
        
    }
}

-(void) buttonSixPressed:(id)sender{
    if(!equationTimeUpDrawn){
        if(equationButtonsPressed == 0){
            if(equationButtonSixID == 0){
                firstNumPressed = 0;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicZeroLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicZeroLeftCopy];
                }
            }
            else if(equationButtonSixID == 1){
                firstNumPressed = 1;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicOneLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicOneLeftCopy];
                }
            }
            else if(equationButtonSixID == 2){
                firstNumPressed = 2;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicTwoLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicTwoLeftCopy];
                }
            }
            else if(equationButtonSixID == 3){
                firstNumPressed = 3;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicThreeLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicThreeLeftCopy];
                }
            }
            else if(equationButtonSixID == 4){
                firstNumPressed = 4;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFourLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFourLeftCopy];
                }
            }
            else if(equationButtonSixID == 5){
                firstNumPressed = 5;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFiveLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFiveLeftCopy];
                }
            }
            else if(equationButtonSixID == 6){
                firstNumPressed = 6;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSixLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSixLeftCopy];
                }
            }
            else if(equationButtonSixID == 7){
                firstNumPressed = 7;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSevenLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSevenLeftCopy];
                }
            }
            else if(equationButtonSixID == 8){
                firstNumPressed = 8;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicEightLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicEightLeftCopy];
                }
            }
            else if(equationButtonSixID == 9){
                firstNumPressed = 9;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicNineLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicNineLeftCopy];
                }
            }
            else if(equationButtonSixID == 10 || equationButtonSixID == 11){
                //WRONG BITCH
                if(equationScore <= 0){
                    equationScore = 0;
                }
                else{
                    equationScore -= 5;
                }
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
        }
        else if(equationButtonsPressed == 1){
            if(equationButtonSixID == 0){
                secondNumPressed = 0;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicZeroRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicZeroRightCopy];
                }
            }
            else if(equationButtonSixID == 1){
                secondNumPressed = 1;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicOneRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicOneRightCopy];
                }
            }
            else if(equationButtonSixID == 2){
                secondNumPressed = 2;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicTwoRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicTwoRightCopy];
                }
            }
            else if(equationButtonSixID == 3){
                secondNumPressed = 3;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicThreeRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicThreeRightCopy];
                }
            }
            else if(equationButtonSixID == 4){
                secondNumPressed = 4;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFourRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFourRightCopy];
                }
            }
            else if(equationButtonSixID == 5){
                secondNumPressed = 5;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFiveRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFiveRightCopy];
                }
            }
            else if(equationButtonSixID == 6){
                secondNumPressed = 6;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSixRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSixRightCopy];
                }
            }
            else if(equationButtonSixID == 7){
                secondNumPressed = 7;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSevenRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSevenRightCopy];
                }
            }
            else if(equationButtonSixID == 8){
                secondNumPressed = 8;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicEightRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicEightRightCopy];
                }
            }
            else if(equationButtonSixID == 9){
                secondNumPressed = 9;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicNineRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicNineRightCopy];
                }
            }
            else if(equationButtonSixID == 10 || equationButtonSixID == 11){
                //CONCATENATE DIGITS
                equationGivenAnswer = firstNumPressed;
                
                if(equationGivenAnswer == equationActualAnswer){
                    equationScore += 5;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
                }
                else{
                    if(equationScore <= 0){
                        equationScore = 0;
                    }
                    else{
                        equationScore -= 5;
                    }
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                }
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
        }
        else if(equationButtonsPressed == 2){
            //GO HOME
            //CONCATENATE DIGITS
            if(equationButtonSixID == 10 || equationButtonSixID == 11){
                if(firstNumPressed == 0){
                    equationGivenAnswer = secondNumPressed;
                }
                else if(firstNumPressed == 1){
                    equationGivenAnswer = 10 + secondNumPressed;
                }
                else if(firstNumPressed == 2){
                    equationGivenAnswer = 20 + secondNumPressed;
                }
                else if(firstNumPressed == 3){
                    equationGivenAnswer = 30 + secondNumPressed;
                }
                else if(firstNumPressed == 4){
                    equationGivenAnswer = 40 + secondNumPressed;
                }
                else if(firstNumPressed == 5){
                    equationGivenAnswer = 50 + secondNumPressed;
                }
                else if(firstNumPressed == 6){
                    equationGivenAnswer = 60 + secondNumPressed;
                }
                else if(firstNumPressed == 7){
                    equationGivenAnswer = 70 + secondNumPressed;
                }
                else if(firstNumPressed == 8){
                    equationGivenAnswer = 80 + secondNumPressed;
                }
                else if(firstNumPressed == 9){
                    equationGivenAnswer = 90 + secondNumPressed;
                }
                
                if(equationGivenAnswer == equationActualAnswer){
                    equationScore += 5;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
                }
                else{
                    if(equationScore <= 0){
                        equationScore = 0;
                    }
                    else{
                        equationScore -= 5;
                    }
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                }
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
            else{
                //Do nothing - wait for right press
            }
        }
    }
    else{
        
    }
}

-(void) buttonSevenPressed:(id)sender{
    if(!equationTimeUpDrawn){
        if(equationButtonsPressed == 0){
            if(equationButtonSevenID == 0){
                firstNumPressed = 0;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicZeroLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicZeroLeftCopy];
                }
            }
            else if(equationButtonSevenID == 1){
                firstNumPressed = 1;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicOneLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicOneLeftCopy];
                }
            }
            else if(equationButtonSevenID == 2){
                firstNumPressed = 2;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicTwoLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicTwoLeftCopy];
                }
            }
            else if(equationButtonSevenID == 3){
                firstNumPressed = 3;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicThreeLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicThreeLeftCopy];
                }
            }
            else if(equationButtonSevenID == 4){
                firstNumPressed = 4;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFourLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFourLeftCopy];
                }
            }
            else if(equationButtonSevenID == 5){
                firstNumPressed = 5;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFiveLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFiveLeftCopy];
                }
            }
            else if(equationButtonSevenID == 6){
                firstNumPressed = 6;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSixLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSixLeftCopy];
                }
            }
            else if(equationButtonSevenID == 7){
                firstNumPressed = 7;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSevenLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSevenLeftCopy];
                }
            }
            else if(equationButtonSevenID == 8){
                firstNumPressed = 8;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicEightLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicEightLeftCopy];
                }
            }
            else if(equationButtonSevenID == 9){
                firstNumPressed = 9;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicNineLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicNineLeftCopy];
                }
            }
            else if(equationButtonSevenID == 10 || equationButtonSevenID == 11){
                //WRONG BITCH
                if(equationScore <= 0){
                    equationScore = 0;
                }
                else{
                    equationScore -= 5;
                }
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
        }
        else if(equationButtonsPressed == 1){
            if(equationButtonSevenID == 0){
                secondNumPressed = 0;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicZeroRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicZeroRightCopy];
                }
            }
            else if(equationButtonSevenID == 1){
                secondNumPressed = 1;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicOneRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicOneRightCopy];
                }
            }
            else if(equationButtonSevenID == 2){
                secondNumPressed = 2;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicTwoRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicTwoRightCopy];
                }
            }
            else if(equationButtonSevenID == 3){
                secondNumPressed = 3;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicThreeRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicThreeRightCopy];
                }
            }
            else if(equationButtonSevenID == 4){
                secondNumPressed = 4;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFourRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFourRightCopy];
                }
            }
            else if(equationButtonSevenID == 5){
                secondNumPressed = 5;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFiveRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFiveRightCopy];
                }
            }
            else if(equationButtonSevenID == 6){
                secondNumPressed = 6;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSixRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSixRightCopy];
                }
            }
            else if(equationButtonSevenID == 7){
                secondNumPressed = 7;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSevenRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSevenRightCopy];
                }
            }
            else if(equationButtonSevenID == 8){
                secondNumPressed = 8;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicEightRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicEightRightCopy];
                }
            }
            else if(equationButtonSevenID == 9){
                secondNumPressed = 9;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicNineRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicNineRightCopy];
                }
            }
            else if(equationButtonSevenID == 10 || equationButtonSevenID == 11){
                //CONCATENATE DIGITS
                equationGivenAnswer = firstNumPressed;
                
                if(equationGivenAnswer == equationActualAnswer){
                    equationScore += 5;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
                }
                else{
                    if(equationScore <= 0){
                        equationScore = 0;
                    }
                    else{
                        equationScore -= 5;
                    }
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                }
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
        }
        else if(equationButtonsPressed == 2){
            //GO HOME
            //CONCATENATE DIGITS
            if(equationButtonSevenID == 10 || equationButtonSevenID == 11){
                if(firstNumPressed == 0){
                    equationGivenAnswer = secondNumPressed;
                }
                else if(firstNumPressed == 1){
                    equationGivenAnswer = 10 + secondNumPressed;
                }
                else if(firstNumPressed == 2){
                    equationGivenAnswer = 20 + secondNumPressed;
                }
                else if(firstNumPressed == 3){
                    equationGivenAnswer = 30 + secondNumPressed;
                }
                else if(firstNumPressed == 4){
                    equationGivenAnswer = 40 + secondNumPressed;
                }
                else if(firstNumPressed == 5){
                    equationGivenAnswer = 50 + secondNumPressed;
                }
                else if(firstNumPressed == 6){
                    equationGivenAnswer = 60 + secondNumPressed;
                }
                else if(firstNumPressed == 7){
                    equationGivenAnswer = 70 + secondNumPressed;
                }
                else if(firstNumPressed == 8){
                    equationGivenAnswer = 80 + secondNumPressed;
                }
                else if(firstNumPressed == 9){
                    equationGivenAnswer = 90 + secondNumPressed;
                }
                
                if(equationGivenAnswer == equationActualAnswer){
                    equationScore += 5;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
                }
                else{
                    if(equationScore <= 0){
                        equationScore = 0;
                    }
                    else{
                        equationScore -= 5;
                    }
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                }
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
            else{
                //Do nothing - wait for right press
            }
        }
    }
    else{
        
    }
}

-(void) buttonEightPressed:(id)sender{
    if(!equationTimeUpDrawn){
        if(equationButtonsPressed == 0){
            if(equationButtonEightID == 0){
                firstNumPressed = 0;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicZeroLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicZeroLeftCopy];
                }
            }
            else if(equationButtonEightID == 1){
                firstNumPressed = 1;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicOneLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicOneLeftCopy];
                }
            }
            else if(equationButtonEightID == 2){
                firstNumPressed = 2;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicTwoLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicTwoLeftCopy];
                }
            }
            else if(equationButtonEightID == 3){
                firstNumPressed = 3;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicThreeLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicThreeLeftCopy];
                }
            }
            else if(equationButtonEightID == 4){
                firstNumPressed = 4;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFourLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFourLeftCopy];
                }
            }
            else if(equationButtonEightID == 5){
                firstNumPressed = 5;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFiveLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFiveLeftCopy];
                }
            }
            else if(equationButtonEightID == 6){
                firstNumPressed = 6;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSixLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSixLeftCopy];
                }
            }
            else if(equationButtonEightID == 7){
                firstNumPressed = 7;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSevenLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSevenLeftCopy];
                }
            }
            else if(equationButtonEightID == 8){
                firstNumPressed = 8;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicEightLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicEightLeftCopy];
                }
            }
            else if(equationButtonEightID == 9){
                firstNumPressed = 9;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicNineLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicNineLeftCopy];
                }
            }
            else if(equationButtonEightID == 10 || equationButtonEightID == 11){
                //WRONG BITCH
                if(equationScore <= 0){
                    equationScore = 0;
                }
                else{
                    equationScore -= 5;
                }
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
        }
        else if(equationButtonsPressed == 1){
            if(equationButtonEightID == 0){
                secondNumPressed = 0;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicZeroRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicZeroRightCopy];
                }
            }
            else if(equationButtonEightID == 1){
                secondNumPressed = 1;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicOneRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicOneRightCopy];
                }
            }
            else if(equationButtonEightID == 2){
                secondNumPressed = 2;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicTwoRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicTwoRightCopy];
                }
            }
            else if(equationButtonEightID == 3){
                secondNumPressed = 3;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicThreeRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicThreeRightCopy];
                }
            }
            else if(equationButtonEightID == 4){
                secondNumPressed = 4;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFourRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFourRightCopy];
                }
            }
            else if(equationButtonEightID == 5){
                secondNumPressed = 5;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFiveRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFiveRightCopy];
                }
            }
            else if(equationButtonEightID == 6){
                secondNumPressed = 6;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSixRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSixRightCopy];
                }
            }
            else if(equationButtonEightID == 7){
                secondNumPressed = 7;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSevenRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSevenRightCopy];
                }
            }
            else if(equationButtonEightID == 8){
                secondNumPressed = 8;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicEightRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicEightRightCopy];
                }
            }
            else if(equationButtonEightID == 9){
                secondNumPressed = 9;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicNineRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicNineRightCopy];
                }
            }
            else if(equationButtonEightID == 10 || equationButtonEightID == 11){
                //CONCATENATE DIGITS
                equationGivenAnswer = firstNumPressed;
                
                if(equationGivenAnswer == equationActualAnswer){
                    equationScore += 5;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
                }
                else{
                    if(equationScore <= 0){
                        equationScore = 0;
                    }
                    else{
                        equationScore -= 5;
                    }
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                }
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
        }
        else if(equationButtonsPressed == 2){
            //GO HOME
            //CONCATENATE DIGITS
            if(equationButtonEightID == 10 || equationButtonEightID == 11){
                if(firstNumPressed == 0){
                    equationGivenAnswer = secondNumPressed;
                }
                else if(firstNumPressed == 1){
                    equationGivenAnswer = 10 + secondNumPressed;
                }
                else if(firstNumPressed == 2){
                    equationGivenAnswer = 20 + secondNumPressed;
                }
                else if(firstNumPressed == 3){
                    equationGivenAnswer = 30 + secondNumPressed;
                }
                else if(firstNumPressed == 4){
                    equationGivenAnswer = 40 + secondNumPressed;
                }
                else if(firstNumPressed == 5){
                    equationGivenAnswer = 50 + secondNumPressed;
                }
                else if(firstNumPressed == 6){
                    equationGivenAnswer = 60 + secondNumPressed;
                }
                else if(firstNumPressed == 7){
                    equationGivenAnswer = 70 + secondNumPressed;
                }
                else if(firstNumPressed == 8){
                    equationGivenAnswer = 80 + secondNumPressed;
                }
                else if(firstNumPressed == 9){
                    equationGivenAnswer = 90 + secondNumPressed;
                }
                
                if(equationGivenAnswer == equationActualAnswer){
                    equationScore += 5;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
                }
                else{
                    if(equationScore <= 0){
                        equationScore = 0;
                    }
                    else{
                        equationScore -= 5;
                    }
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                }
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
            else{
                //Do nothing - wait for right press
            }
        }
    }
    else{
        
    }
}

-(void) buttonNinePressed:(id)sender{
    if(!equationTimeUpDrawn){
        if(equationButtonsPressed == 0){
            if(equationButtonNineID == 0){
                firstNumPressed = 0;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicZeroLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicZeroLeftCopy];
                }
            }
            else if(equationButtonNineID == 1){
                firstNumPressed = 1;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicOneLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicOneLeftCopy];
                }
            }
            else if(equationButtonNineID == 2){
                firstNumPressed = 2;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicTwoLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicTwoLeftCopy];
                }
            }
            else if(equationButtonNineID == 3){
                firstNumPressed = 3;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicThreeLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicThreeLeftCopy];
                }
            }
            else if(equationButtonNineID == 4){
                firstNumPressed = 4;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFourLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFourLeftCopy];
                }
            }
            else if(equationButtonNineID == 5){
                firstNumPressed = 5;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFiveLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFiveLeftCopy];
                }
            }
            else if(equationButtonNineID == 6){
                firstNumPressed = 6;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSixLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSixLeftCopy];
                }
            }
            else if(equationButtonNineID == 7){
                firstNumPressed = 7;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSevenLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSevenLeftCopy];
                }
            }
            else if(equationButtonNineID == 8){
                firstNumPressed = 8;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicEightLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicEightLeftCopy];
                }
            }
            else if(equationButtonNineID == 9){
                firstNumPressed = 9;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicNineLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicNineLeftCopy];
                }
            }
            else if(equationButtonNineID == 10 || equationButtonNineID == 11){
                //WRONG BITCH
                if(equationScore <= 0){
                    equationScore = 0;
                }
                else{
                    equationScore -= 5;
                }
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
        }
        else if(equationButtonsPressed == 1){
            if(equationButtonNineID == 0){
                secondNumPressed = 0;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicZeroRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicZeroRightCopy];
                }
            }
            else if(equationButtonNineID == 1){
                secondNumPressed = 1;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicOneRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicOneRightCopy];
                }
            }
            else if(equationButtonNineID == 2){
                secondNumPressed = 2;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicTwoRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicTwoRightCopy];
                }
            }
            else if(equationButtonNineID == 3){
                secondNumPressed = 3;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicThreeRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicThreeRightCopy];
                }
            }
            else if(equationButtonNineID == 4){
                secondNumPressed = 4;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFourRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFourRightCopy];
                }
            }
            else if(equationButtonNineID == 5){
                secondNumPressed = 5;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFiveRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFiveRightCopy];
                }
            }
            else if(equationButtonNineID == 6){
                secondNumPressed = 6;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSixRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSixRightCopy];
                }
            }
            else if(equationButtonNineID == 7){
                secondNumPressed = 7;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSevenRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSevenRightCopy];
                }
            }
            else if(equationButtonNineID == 8){
                secondNumPressed = 8;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicEightRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicEightRightCopy];
                }
            }
            else if(equationButtonNineID == 9){
                secondNumPressed = 9;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicNineRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicNineRightCopy];
                }
            }
            else if(equationButtonNineID == 10 || equationButtonNineID == 11){
                //CONCATENATE DIGITS
                equationGivenAnswer = firstNumPressed;
                
                if(equationGivenAnswer == equationActualAnswer){
                    equationScore += 5;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
                }
                else{
                    if(equationScore <= 0){
                        equationScore = 0;
                    }
                    else{
                        equationScore -= 5;
                    }
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                }
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
        }
        else if(equationButtonsPressed == 2){
            //GO HOME
            //CONCATENATE DIGITS
            if(equationButtonNineID == 10 || equationButtonNineID == 11){
                if(firstNumPressed == 0){
                    equationGivenAnswer = secondNumPressed;
                }
                else if(firstNumPressed == 1){
                    equationGivenAnswer = 10 + secondNumPressed;
                }
                else if(firstNumPressed == 2){
                    equationGivenAnswer = 20 + secondNumPressed;
                }
                else if(firstNumPressed == 3){
                    equationGivenAnswer = 30 + secondNumPressed;
                }
                else if(firstNumPressed == 4){
                    equationGivenAnswer = 40 + secondNumPressed;
                }
                else if(firstNumPressed == 5){
                    equationGivenAnswer = 50 + secondNumPressed;
                }
                else if(firstNumPressed == 6){
                    equationGivenAnswer = 60 + secondNumPressed;
                }
                else if(firstNumPressed == 7){
                    equationGivenAnswer = 70 + secondNumPressed;
                }
                else if(firstNumPressed == 8){
                    equationGivenAnswer = 80 + secondNumPressed;
                }
                else if(firstNumPressed == 9){
                    equationGivenAnswer = 90 + secondNumPressed;
                }
                
                if(equationGivenAnswer == equationActualAnswer){
                    equationScore += 5;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
                }
                else{
                    if(equationScore <= 0){
                        equationScore = 0;
                    }
                    else{
                        equationScore -= 5;
                    }
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                }
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
            else{
                //Do nothing - wait for right press
            }
        }
    }
    else{
        
    }
}

-(void) buttonTenPressed:(id)sender{
    if(!equationTimeUpDrawn){
        if(equationButtonsPressed == 0){
            if(equationButtonTenID == 0){
                firstNumPressed = 0;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicZeroLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicZeroLeftCopy];
                }
            }
            else if(equationButtonTenID == 1){
                firstNumPressed = 1;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicOneLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicOneLeftCopy];
                }
            }
            else if(equationButtonTenID == 2){
                firstNumPressed = 2;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicTwoLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicTwoLeftCopy];
                }
            }
            else if(equationButtonTenID == 3){
                firstNumPressed = 3;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicThreeLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicThreeLeftCopy];
                }
            }
            else if(equationButtonTenID == 4){
                firstNumPressed = 4;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFourLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFourLeftCopy];
                }
            }
            else if(equationButtonTenID == 5){
                firstNumPressed = 5;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFiveLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFiveLeftCopy];
                }
            }
            else if(equationButtonTenID == 6){
                firstNumPressed = 6;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSixLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSixLeftCopy];
                }
            }
            else if(equationButtonTenID == 7){
                firstNumPressed = 7;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSevenLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSevenLeftCopy];
                }
            }
            else if(equationButtonTenID == 8){
                firstNumPressed = 8;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicEightLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicEightLeftCopy];
                }
            }
            else if(equationButtonTenID == 9){
                firstNumPressed = 9;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicNineLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicNineLeftCopy];
                }
            }
            else if(equationButtonTenID == 10 || equationButtonTenID == 11){
                //WRONG BITCH
                if(equationScore <= 0){
                    equationScore = 0;
                }
                else{
                    equationScore -= 5;
                }
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
        }
        else if(equationButtonsPressed == 1){
            if(equationButtonTenID == 0){
                secondNumPressed = 0;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicZeroRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicZeroRightCopy];
                }
            }
            else if(equationButtonTenID == 1){
                secondNumPressed = 1;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicOneRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicOneRightCopy];
                }
            }
            else if(equationButtonTenID == 2){
                secondNumPressed = 2;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicTwoRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicTwoRightCopy];
                }
            }
            else if(equationButtonTenID == 3){
                secondNumPressed = 3;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicThreeRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicThreeRightCopy];
                }
            }
            else if(equationButtonTenID == 4){
                secondNumPressed = 4;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFourRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFourRightCopy];
                }
            }
            else if(equationButtonTenID == 5){
                secondNumPressed = 5;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFiveRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFiveRightCopy];
                }
            }
            else if(equationButtonTenID == 6){
                secondNumPressed = 6;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSixRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSixRightCopy];
                }
            }
            else if(equationButtonTenID == 7){
                secondNumPressed = 7;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSevenRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSevenRightCopy];
                }
            }
            else if(equationButtonTenID == 8){
                secondNumPressed = 8;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicEightRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicEightRightCopy];
                }
            }
            else if(equationButtonTenID == 9){
                secondNumPressed = 9;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicNineRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicNineRightCopy];
                }
            }
            else if(equationButtonTenID == 10 || equationButtonTenID == 11){
                //CONCATENATE DIGITS
                equationGivenAnswer = firstNumPressed;
                
                if(equationGivenAnswer == equationActualAnswer){
                    equationScore += 5;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
                }
                else{
                    if(equationScore <= 0){
                        equationScore = 0;
                    }
                    else{
                        equationScore -= 5;
                    }
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                }
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
        }
        else if(equationButtonsPressed == 2){
            //GO HOME
            //CONCATENATE DIGITS
            if(equationButtonTenID == 10 || equationButtonTenID == 11){
                if(firstNumPressed == 0){
                    equationGivenAnswer = secondNumPressed;
                }
                else if(firstNumPressed == 1){
                    equationGivenAnswer = 10 + secondNumPressed;
                }
                else if(firstNumPressed == 2){
                    equationGivenAnswer = 20 + secondNumPressed;
                }
                else if(firstNumPressed == 3){
                    equationGivenAnswer = 30 + secondNumPressed;
                }
                else if(firstNumPressed == 4){
                    equationGivenAnswer = 40 + secondNumPressed;
                }
                else if(firstNumPressed == 5){
                    equationGivenAnswer = 50 + secondNumPressed;
                }
                else if(firstNumPressed == 6){
                    equationGivenAnswer = 60 + secondNumPressed;
                }
                else if(firstNumPressed == 7){
                    equationGivenAnswer = 70 + secondNumPressed;
                }
                else if(firstNumPressed == 8){
                    equationGivenAnswer = 80 + secondNumPressed;
                }
                else if(firstNumPressed == 9){
                    equationGivenAnswer = 90 + secondNumPressed;
                }
                
                if(equationGivenAnswer == equationActualAnswer){
                    equationScore += 5;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
                }
                else{
                    if(equationScore <= 0){
                        equationScore = 0;
                    }
                    else{
                        equationScore -= 5;
                    }
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                }
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
            else{
                //Do nothing - wait for right press
            }
        }
    }
    else{
        
    }
}

-(void) buttonLeftPressed:(id)sender{
    if(!equationTimeUpDrawn){
        if(equationButtonsPressed == 0){
            if(equationButtonLeftID == 0){
                firstNumPressed = 0;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicZeroLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicZeroLeftCopy];
                }
            }
            else if(equationButtonLeftID == 1){
                firstNumPressed = 1;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicOneLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicOneLeftCopy];
                }
            }
            else if(equationButtonLeftID == 2){
                firstNumPressed = 2;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicTwoLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicTwoLeftCopy];
                }
            }
            else if(equationButtonLeftID == 3){
                firstNumPressed = 3;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicThreeLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicThreeLeftCopy];
                }
            }
            else if(equationButtonLeftID == 4){
                firstNumPressed = 4;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFourLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFourLeftCopy];
                }
            }
            else if(equationButtonLeftID == 5){
                firstNumPressed = 5;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFiveLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFiveLeftCopy];
                }
            }
            else if(equationButtonLeftID == 6){
                firstNumPressed = 6;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSixLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSixLeftCopy];
                }
            }
            else if(equationButtonLeftID == 7){
                firstNumPressed = 7;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSevenLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSevenLeftCopy];
                }
            }
            else if(equationButtonLeftID == 8){
                firstNumPressed = 8;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicEightLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicEightLeftCopy];
                }
            }
            else if(equationButtonLeftID == 9){
                firstNumPressed = 9;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicNineLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicNineLeftCopy];
                }
            }
            else if(equationButtonLeftID == 10 || equationButtonLeftID == 11){
                //WRONG BITCH
                if(equationScore <= 0){
                    equationScore = 0;
                }
                else{
                    equationScore -= 5;
                }
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
        }
        else if(equationButtonsPressed == 1){
            if(equationButtonLeftID == 0){
                secondNumPressed = 0;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicZeroRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicZeroRightCopy];
                }
            }
            else if(equationButtonLeftID == 1){
                secondNumPressed = 1;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicOneRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicOneRightCopy];
                }
            }
            else if(equationButtonLeftID == 2){
                secondNumPressed = 2;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicTwoRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicTwoRightCopy];
                }
            }
            else if(equationButtonLeftID == 3){
                secondNumPressed = 3;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicThreeRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicThreeRightCopy];
                }
            }
            else if(equationButtonLeftID == 4){
                secondNumPressed = 4;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFourRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFourRightCopy];
                }
            }
            else if(equationButtonLeftID == 5){
                secondNumPressed = 5;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFiveRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFiveRightCopy];
                }
            }
            else if(equationButtonLeftID == 6){
                secondNumPressed = 6;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSixRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSixRightCopy];
                }
            }
            else if(equationButtonLeftID == 7){
                secondNumPressed = 7;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSevenRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSevenRightCopy];
                }
            }
            else if(equationButtonLeftID == 8){
                secondNumPressed = 8;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicEightRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicEightRightCopy];
                }
            }
            else if(equationButtonLeftID == 9){
                secondNumPressed = 9;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicNineRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicNineRightCopy];
                }
            }
            else if(equationButtonLeftID == 10 || equationButtonLeftID == 11){
                //CONCATENATE DIGITS
                equationGivenAnswer = firstNumPressed;
                
                if(equationGivenAnswer == equationActualAnswer){
                    equationScore += 5;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
                }
                else{
                    if(equationScore <= 0){
                        equationScore = 0;
                    }
                    else{
                        equationScore -= 5;
                    }
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                }
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
        }
        else if(equationButtonsPressed == 2){
            //GO HOME
            //CONCATENATE DIGITS
            if(equationButtonLeftID == 10 || equationButtonLeftID == 11){
                if(firstNumPressed == 0){
                    equationGivenAnswer = secondNumPressed;
                }
                else if(firstNumPressed == 1){
                    equationGivenAnswer = 10 + secondNumPressed;
                }
                else if(firstNumPressed == 2){
                    equationGivenAnswer = 20 + secondNumPressed;
                }
                else if(firstNumPressed == 3){
                    equationGivenAnswer = 30 + secondNumPressed;
                }
                else if(firstNumPressed == 4){
                    equationGivenAnswer = 40 + secondNumPressed;
                }
                else if(firstNumPressed == 5){
                    equationGivenAnswer = 50 + secondNumPressed;
                }
                else if(firstNumPressed == 6){
                    equationGivenAnswer = 60 + secondNumPressed;
                }
                else if(firstNumPressed == 7){
                    equationGivenAnswer = 70 + secondNumPressed;
                }
                else if(firstNumPressed == 8){
                    equationGivenAnswer = 80 + secondNumPressed;
                }
                else if(firstNumPressed == 9){
                    equationGivenAnswer = 90 + secondNumPressed;
                }
                
                if(equationGivenAnswer == equationActualAnswer){
                    equationScore += 5;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
                }
                else{
                    if(equationScore <= 0){
                        equationScore = 0;
                    }
                    else{
                        equationScore -= 5;
                    }
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                }
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
            else{
                //Do nothing - wait for right press
            }
        }
    }
    else{
        
    }
}

-(void) buttonRightPressed:(id)sender{
    if(!equationTimeUpDrawn){
        if(equationButtonsPressed == 0){
            if(equationButtonRightID == 0){
                firstNumPressed = 0;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicZeroLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicZeroLeftCopy];
                }
            }
            else if(equationButtonRightID == 1){
                firstNumPressed = 1;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicOneLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicOneLeftCopy];
                }
            }
            else if(equationButtonRightID == 2){
                firstNumPressed = 2;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicTwoLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicTwoLeftCopy];
                }
            }
            else if(equationButtonRightID == 3){
                firstNumPressed = 3;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicThreeLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicThreeLeftCopy];
                }
            }
            else if(equationButtonRightID == 4){
                firstNumPressed = 4;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFourLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFourLeftCopy];
                }
            }
            else if(equationButtonRightID == 5){
                firstNumPressed = 5;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFiveLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicFiveLeftCopy];
                }
            }
            else if(equationButtonRightID == 6){
                firstNumPressed = 6;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSixLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSixLeftCopy];
                }
            }
            else if(equationButtonRightID == 7){
                firstNumPressed = 7;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSevenLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicSevenLeftCopy];
                }
            }
            else if(equationButtonRightID == 8){
                firstNumPressed = 8;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicEightLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicEightLeftCopy];
                }
            }
            else if(equationButtonRightID == 9){
                firstNumPressed = 9;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicNineLeft];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 501] setNormalImage:equationDynamicNineLeftCopy];
                }
            }
            else if(equationButtonRightID == 10 || equationButtonRightID == 11){
                //WRONG BITCH
                if(equationScore <= 0){
                    equationScore = 0;
                }
                else{
                    equationScore -= 5;
                }
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
        }
        else if(equationButtonsPressed == 1){
            if(equationButtonRightID == 0){
                secondNumPressed = 0;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicZeroRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicZeroRightCopy];
                }
            }
            else if(equationButtonRightID == 1){
                secondNumPressed = 1;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicOneRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicOneRightCopy];
                }
            }
            else if(equationButtonRightID == 2){
                secondNumPressed = 2;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicTwoRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicTwoRightCopy];
                }
            }
            else if(equationButtonRightID == 3){
                secondNumPressed = 3;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicThreeRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicThreeRightCopy];
                }
            }
            else if(equationButtonRightID == 4){
                secondNumPressed = 4;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFourRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFourRightCopy];
                }
            }
            else if(equationButtonRightID == 5){
                secondNumPressed = 5;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFiveRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicFiveRightCopy];
                }
            }
            else if(equationButtonRightID == 6){
                secondNumPressed = 6;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSixRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSixRightCopy];
                }
            }
            else if(equationButtonRightID == 7){
                secondNumPressed = 7;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSevenRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicSevenRightCopy];
                }
            }
            else if(equationButtonRightID == 8){
                secondNumPressed = 8;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicEightRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicEightRightCopy];
                }
            }
            else if(equationButtonRightID == 9){
                secondNumPressed = 9;
                equationButtonsPressed++;
                if(numOfAnswers % 2 == 0){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicNineRight];
                }
                else if(numOfAnswers % 2 == 1){
                    [(CCMenuItemSprite*)[equationDynamicAnswer getChildByTag: 502] setNormalImage:equationDynamicNineRightCopy];
                }
            }
            else if(equationButtonRightID == 10 || equationButtonRightID == 11){
                //CONCATENATE DIGITS
                equationGivenAnswer = firstNumPressed;
                
                if(equationGivenAnswer == equationActualAnswer){
                    equationScore += 5;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
                }
                else{
                    if(equationScore <= 0){
                        equationScore = 0;
                    }
                    else{
                        equationScore -= 5;
                    }
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                }
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
        }
        else if(equationButtonsPressed == 2){
            //GO HOME
            //CONCATENATE DIGITS
            if(equationButtonRightID == 10 || equationButtonRightID == 11){
                if(firstNumPressed == 0){
                    equationGivenAnswer = secondNumPressed;
                }
                else if(firstNumPressed == 1){
                    equationGivenAnswer = 10 + secondNumPressed;
                }
                else if(firstNumPressed == 2){
                    equationGivenAnswer = 20 + secondNumPressed;
                }
                else if(firstNumPressed == 3){
                    equationGivenAnswer = 30 + secondNumPressed;
                }
                else if(firstNumPressed == 4){
                    equationGivenAnswer = 40 + secondNumPressed;
                }
                else if(firstNumPressed == 5){
                    equationGivenAnswer = 50 + secondNumPressed;
                }
                else if(firstNumPressed == 6){
                    equationGivenAnswer = 60 + secondNumPressed;
                }
                else if(firstNumPressed == 7){
                    equationGivenAnswer = 70 + secondNumPressed;
                }
                else if(firstNumPressed == 8){
                    equationGivenAnswer = 80 + secondNumPressed;
                }
                else if(firstNumPressed == 9){
                    equationGivenAnswer = 90 + secondNumPressed;
                }
                
                if(equationGivenAnswer == equationActualAnswer){
                    equationScore += 5;
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
                }
                else{
                    if(equationScore <= 0){
                        equationScore = 0;
                    }
                    else{
                        equationScore -= 5;
                    }
                    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
                }
                equationSelectionMade = TRUE;
                numOfAnswers++;
            }
            else{
                //Do nothing - wait for right press
            }
        }
    }
    else{
        
    }
}

-(void) equationGameOver:(ccTime)dt{
    //Sort scores etc
    [[NSUserDefaults standardUserDefaults] setInteger:0 forKey:@"gameID"];
    [[NSUserDefaults standardUserDefaults] setInteger:equationScore forKey:@"eScoreNew"];
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:.5 scene: [GameFinish node] withColor:ccWHITE]];
}

-(void) onExit{
    [self unschedule:@selector(update:)];
    gameTime = 0;
    [[SimpleAudioEngine sharedEngine] stopBackgroundMusic];
    [super onExit];
}

- (void) dealloc{
    [equationButtonImageZeroSmall release];
    [equationButtonImageZeroSmallSelected release];
    [equationButtonImageOneSmall release];
    [equationButtonImageOneSmallSelected release];
    [equationButtonImageTwoSmall release];
    [equationButtonImageTwoSmallSelected release];
    [equationButtonImageThreeSmall release];
    [equationButtonImageThreeSmallSelected release];
    [equationButtonImageFourSmall release];
    [equationButtonImageFourSmallSelected release];
    [equationButtonImageFiveSmall release];
    [equationButtonImageFiveSmallSelected release];
    [equationButtonImageSixSmall release];
    [equationButtonImageSixSmallSelected release];
    [equationButtonImageSevenSmall release];
    [equationButtonImageSevenSmallSelected release];
    [equationButtonImageEightSmall release];
    [equationButtonImageEightSmallSelected release];
    [equationButtonImageNineSmall release];
    [equationButtonImageNineSmallSelected release];
    [equationButtonImageEqualsSmall1 release];
    [equationButtonImageEqualsSmall1Selected release];
    [equationButtonImageEqualsSmall2 release];
    [equationButtonImageEqualsSmall2Selected release];
    [equationButtonImageZeroSmallCopy release];
    [equationButtonImageZeroSmallSelectedCopy release];
    [equationButtonImageOneSmallCopy release];
    [equationButtonImageOneSmallSelectedCopy release];
    [equationButtonImageTwoSmallCopy release];
    [equationButtonImageTwoSmallSelectedCopy release];
    [equationButtonImageThreeSmallCopy release];
    [equationButtonImageThreeSmallSelectedCopy release];
    [equationButtonImageFourSmallCopy release];
    [equationButtonImageFourSmallSelectedCopy release];
    [equationButtonImageFiveSmallCopy release];
    [equationButtonImageFiveSmallSelectedCopy release];
    [equationButtonImageSixSmallCopy release];
    [equationButtonImageSixSmallSelectedCopy release];
    [equationButtonImageSevenSmallCopy release];
    [equationButtonImageSevenSmallSelectedCopy release];
    [equationButtonImageEightSmallCopy release];
    [equationButtonImageEightSmallSelectedCopy release];
    [equationButtonImageNineSmallCopy release];
    [equationButtonImageNineSmallSelectedCopy release];
    [equationButtonImageEqualsSmall1Copy release];
    [equationButtonImageEqualsSmall1SelectedCopy release];
    [equationButtonImageEqualsSmall2Copy release];
    [equationButtonImageEqualsSmall2SelectedCopy release];
    [equationSmallButtonSpriteOne release];
    [equationSmallButtonSpriteTwo release];
    [equationSmallButtonSpriteThree release];
    [equationSmallButtonSpriteFour release];
    [equationSmallButtonSpriteFive release];
    [equationSmallButtonSpriteSix release];
    [equationSmallButtonSpriteSeven release];
    [equationSmallButtonSpriteEight release];
    [equationSmallButtonSpriteNine release];
    [equationSmallButtonSpriteTen release];
    
    [equationButtonImageZeroLarge release];
    [equationButtonImageZeroLargeSelected release];
    [equationButtonImageOneLarge release];
    [equationButtonImageOneLargeSelected release];
    [equationButtonImageTwoLarge release];
    [equationButtonImageTwoLargeSelected release];
    [equationButtonImageThreeLarge release];
    [equationButtonImageThreeLargeSelected release];
    [equationButtonImageFourLarge release];
    [equationButtonImageFourLargeSelected release];
    [equationButtonImageFiveLarge release];
    [equationButtonImageFiveLargeSelected release];
    [equationButtonImageSixLarge release];
    [equationButtonImageSixLargeSelected release];
    [equationButtonImageSevenLarge release];
    [equationButtonImageSevenLargeSelected release];
    [equationButtonImageEightLarge release];
    [equationButtonImageEightLargeSelected release];
    [equationButtonImageNineLarge release];
    [equationButtonImageNineLargeSelected release];
    [equationButtonImageEqualsLarge1 release];
    [equationButtonImageEqualsLarge1Selected release];
    [equationButtonImageEqualsLarge2 release];
    [equationButtonImageEqualsLarge2Selected release];
    [equationButtonImageZeroLargeCopy release];
    [equationButtonImageZeroLargeSelectedCopy release];
    [equationButtonImageOneLargeCopy release];
    [equationButtonImageOneLargeSelectedCopy release];
    [equationButtonImageTwoLargeCopy release];
    [equationButtonImageTwoLargeSelectedCopy release];
    [equationButtonImageThreeLargeCopy release];
    [equationButtonImageThreeLargeSelectedCopy release];
    [equationButtonImageFourLargeCopy release];
    [equationButtonImageFourLargeSelectedCopy release];
    [equationButtonImageFiveLargeCopy release];
    [equationButtonImageFiveLargeSelectedCopy release];
    [equationButtonImageSixLargeCopy release];
    [equationButtonImageSixLargeSelectedCopy release];
    [equationButtonImageSevenLargeCopy release];
    [equationButtonImageSevenLargeSelectedCopy release];
    [equationButtonImageEightLargeCopy release];
    [equationButtonImageEightLargeSelectedCopy release];
    [equationButtonImageNineLargeCopy release];
    [equationButtonImageNineLargeSelectedCopy release];
    [equationButtonImageEqualsLarge1Copy release];
    [equationButtonImageEqualsLarge1SelectedCopy release];
    [equationButtonImageEqualsLarge2Copy release];
    [equationButtonImageEqualsLarge2SelectedCopy release];
    [equationLargeButtonSpriteLeft release];
    [equationLargeButtonSpriteRight release];
    
    [equationScoreNumber0_1 release];
    [equationScoreNumber0_2 release];
    [equationScoreNumber0_3 release];
    [equationScoreNumber0_4 release];
    [equationScoreNumber0_5 release];
    [equationScoreNumber0_6 release];
    [equationScoreNumber1_1 release];
    [equationScoreNumber1_2 release];
    [equationScoreNumber1_3 release];
    [equationScoreNumber1_4 release];
    [equationScoreNumber1_5 release];
    [equationScoreNumber1_6 release];
    [equationScoreNumber2_1 release];
    [equationScoreNumber2_2 release];
    [equationScoreNumber2_3 release];
    [equationScoreNumber2_4 release];
    [equationScoreNumber2_5 release];
    [equationScoreNumber2_6 release];
    [equationScoreNumber3_1 release];
    [equationScoreNumber3_2 release];
    [equationScoreNumber3_3 release];
    [equationScoreNumber3_4 release];
    [equationScoreNumber3_5 release];
    [equationScoreNumber3_6 release];
    [equationScoreNumber4_1 release];
    [equationScoreNumber4_2 release];
    [equationScoreNumber4_3 release];
    [equationScoreNumber4_4 release];
    [equationScoreNumber4_5 release];
    [equationScoreNumber4_6 release];
    [equationScoreNumber5_1 release];
    [equationScoreNumber5_2 release];
    [equationScoreNumber5_3 release];
    [equationScoreNumber5_4 release];
    [equationScoreNumber5_5 release];
    [equationScoreNumber5_6 release];
    [equationScoreNumber6_1 release];
    [equationScoreNumber6_2 release];
    [equationScoreNumber6_3 release];
    [equationScoreNumber6_4 release];
    [equationScoreNumber6_5 release];
    [equationScoreNumber6_6 release];
    [equationScoreNumber7_1 release];
    [equationScoreNumber7_2 release];
    [equationScoreNumber7_3 release];
    [equationScoreNumber7_4 release];
    [equationScoreNumber7_5 release];
    [equationScoreNumber7_6 release];
    [equationScoreNumber8_1 release];
    [equationScoreNumber8_2 release];
    [equationScoreNumber8_3 release];
    [equationScoreNumber8_4 release];
    [equationScoreNumber8_5 release];
    [equationScoreNumber8_6 release];
    [equationScoreNumber9_1 release];
    [equationScoreNumber9_2 release];
    [equationScoreNumber9_3 release];
    [equationScoreNumber9_4 release];
    [equationScoreNumber9_5 release];
    [equationScoreNumber9_6 release];
    
    [equationNumberZeroLeft release];
    [equationNumberZeroRight release];
    [equationNumberOneLeft release];
    [equationNumberOneRight release];
    [equationNumberTwoLeft release];
    [equationNumberTwoRight release];
    [equationNumberThreeLeft release];
    [equationNumberThreeRight release];
    [equationNumberFourLeft release];
    [equationNumberFourRight release];
    [equationNumberFiveLeft release];
    [equationNumberFiveRight release];
    [equationNumberSixLeft release];
    [equationNumberSixRight release];
    [equationNumberSevenLeft release];
    [equationNumberSevenRight release];
    [equationNumberEightLeft release];
    [equationNumberEightRight release];
    [equationNumberNineLeft release];
    [equationNumberNineRight release];
    [equationSignMultiply release];
    [equationSignPlus release];
    [equationSumSpriteOne release];
    [equationSumSpriteTwo release];
    [equationSumSpriteThree release];
    
    [equationDynamicZeroLeft release];
    [equationDynamicZeroRight release];
    [equationDynamicOneLeft release];
    [equationDynamicOneRight release];
    [equationDynamicTwoLeft release];
    [equationDynamicTwoRight release];
    [equationDynamicThreeLeft release];
    [equationDynamicThreeRight release];
    [equationDynamicFourLeft release];
    [equationDynamicFourRight release];
    [equationDynamicFiveLeft release];
    [equationDynamicFiveRight release];
    [equationDynamicSixLeft release];
    [equationDynamicSixRight release];
    [equationDynamicSevenLeft release];
    [equationDynamicSevenRight release];
    [equationDynamicEightLeft release];
    [equationDynamicEightRight release];
    [equationDynamicNineLeft release];
    [equationDynamicNineRight release];
    [equationDynamicZeroLeftCopy release];
    [equationDynamicZeroRightCopy release];
    [equationDynamicOneLeftCopy release];
    [equationDynamicOneRightCopy release];
    [equationDynamicTwoLeftCopy release];
    [equationDynamicTwoRightCopy release];
    [equationDynamicThreeLeftCopy release];
    [equationDynamicThreeRightCopy release];
    [equationDynamicFourLeftCopy release];
    [equationDynamicFourRightCopy release];
    [equationDynamicFiveLeftCopy release];
    [equationDynamicFiveRightCopy release];
    [equationDynamicSixLeftCopy release];
    [equationDynamicSixRightCopy release];
    [equationDynamicSevenLeftCopy release];
    [equationDynamicSevenRightCopy release];
    [equationDynamicEightLeftCopy release];
    [equationDynamicEightRightCopy release];
    [equationDynamicNineLeftCopy release];
    [equationDynamicNineRightCopy release];
    [equationDynamicAnswerSpriteOne release];
    [equationDynamicAnswerSpriteTwo release];
    
    [self unscheduleAllSelectors];
    [self removeAllChildrenWithCleanup:YES];
    [self release];
	[super dealloc];
}

@end