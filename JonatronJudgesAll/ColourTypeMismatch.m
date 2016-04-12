//
//  ColourTypeMismatch.m
//  JonatronJudgesAll
//
//  Created by Jonathan Herbst on 29/11/2012.
//  Copyright Herbtacular Games 2013. All rights reserved.
//

#import "ColourTypeMismatch.h"
#import "GameFinish.h"
#import "SimpleAudioEngine.h"

CCLayer *colourBackgroundLayer;
CCLayer *colourScoreTimeLayer;
CCLayer *colourButtonLayer;
CCLayer *colourWordLayer;

CCMenu *colourButtonMenu;
CCMenu *colourScoreMenu;
CCMenu *colourTimeMenu;
CCMenu *colourWordMenu;

CCSprite *colourBackgroundImage;

CCSprite *colourIntro3;
CCSprite *colourIntro2;
CCSprite *colourIntro1;
CCSprite *colourIntroGo;

//COLOUR WORD IMAGES
CCSprite *colourWordImageBlackBlack;
CCSprite *colourWordImageBlackBlue;
CCSprite *colourWordImageBlackBrown;
CCSprite *colourWordImageBlackGold;
CCSprite *colourWordImageBlackGreen;
CCSprite *colourWordImageBlackRed;
CCSprite *colourWordImageBlackWhite;
CCSprite *colourWordImageBlueBlack;
CCSprite *colourWordImageBlueBlue;
CCSprite *colourWordImageBlueBrown;
CCSprite *colourWordImageBlueGold;
CCSprite *colourWordImageBlueGreen;
CCSprite *colourWordImageBlueRed;
CCSprite *colourWordImageBlueWhite;
CCSprite *colourWordImageBrownBlack;
CCSprite *colourWordImageBrownBlue;
CCSprite *colourWordImageBrownBrown;
CCSprite *colourWordImageBrownGold;
CCSprite *colourWordImageBrownGreen;
CCSprite *colourWordImageBrownRed;
CCSprite *colourWordImageBrownWhite;
CCSprite *colourWordImageGoldBlack;
CCSprite *colourWordImageGoldBlue;
CCSprite *colourWordImageGoldBrown;
CCSprite *colourWordImageGoldGold;
CCSprite *colourWordImageGoldGreen;
CCSprite *colourWordImageGoldRed;
CCSprite *colourWordImageGoldWhite;
CCSprite *colourWordImageGreenBlack;
CCSprite *colourWordImageGreenBlue;
CCSprite *colourWordImageGreenBrown;
CCSprite *colourWordImageGreenGold;
CCSprite *colourWordImageGreenGreen;
CCSprite *colourWordImageGreenRed;
CCSprite *colourWordImageGreenWhite;
CCSprite *colourWordImageRedBlack;
CCSprite *colourWordImageRedBlue;
CCSprite *colourWordImageRedBrown;
CCSprite *colourWordImageRedGold;
CCSprite *colourWordImageRedGreen;
CCSprite *colourWordImageRedRed;
CCSprite *colourWordImageRedWhite;
CCSprite *colourWordImageWhiteBlack;
CCSprite *colourWordImageWhiteBlue;
CCSprite *colourWordImageWhiteBrown;
CCSprite *colourWordImageWhiteGold;
CCSprite *colourWordImageWhiteGreen;
CCSprite *colourWordImageWhiteRed;
CCSprite *colourWordImageWhiteWhite;

CCMenuItemSprite *colourWordSprite;

//NORMAL BUTTON IMAGES
CCSprite *colourButtonImageBlack;
CCSprite *colourButtonImageBlue;
CCSprite *colourButtonImageBrown;
CCSprite *colourButtonImageGold;
CCSprite *colourButtonImageGreen;
CCSprite *colourButtonImageRed;
CCSprite *colourButtonImageWhite;

//NORMAL BUTTON IMAGES COPIES
CCSprite *colourButtonImageBlack2;
CCSprite *colourButtonImageBlue2;
CCSprite *colourButtonImageBrown2;
CCSprite *colourButtonImageGold2;
CCSprite *colourButtonImageGreen2;
CCSprite *colourButtonImageRed2;
CCSprite *colourButtonImageWhite2;

//SELECTED BUTTON IMAGES
CCSprite *colourButtonImageBlackSelected;
CCSprite *colourButtonImageBlueSelected;
CCSprite *colourButtonImageBrownSelected;
CCSprite *colourButtonImageGoldSelected;
CCSprite *colourButtonImageGreenSelected;
CCSprite *colourButtonImageRedSelected;
CCSprite *colourButtonImageWhiteSelected;

//SELECTED BUTTON IMAGES COPIES
CCSprite *colourButtonImageBlackSelected2;
CCSprite *colourButtonImageBlueSelected2;
CCSprite *colourButtonImageBrownSelected2;
CCSprite *colourButtonImageGoldSelected2;
CCSprite *colourButtonImageGreenSelected2;
CCSprite *colourButtonImageRedSelected2;
CCSprite *colourButtonImageWhiteSelected2;

//BUTTON SPRITES
CCMenuItemSprite *colourButtonSpriteOne;
CCMenuItemSprite *colourButtonSpriteTwo;
CCMenuItemSprite *colourButtonSpriteThree;
CCMenuItemSprite *colourButtonSpriteFour;

CCMenuItemImage *colourScoreLetterS;
CCMenuItemImage *colourScoreLetterC;
CCMenuItemImage *colourScoreLetterO;
CCMenuItemImage *colourScoreLetterR;
CCMenuItemImage *colourScoreLetterE;
CCMenuItemImage *colourScoreLetterColon;
CCMenuItemImage *colourTimeLetterT;
CCMenuItemImage *colourTimeLetterI;
CCMenuItemImage *colourTimeLetterM;
CCMenuItemImage *colourTimeLetterE;
CCMenuItemImage *colourTimeLetterPoint;
CCMenuItemImage *colourTimeLetterColon;

//Numbers 1-3 reserved for scoring display and numbers 4-6 reserved for the time display
CCSprite *colourScoreNumber0_1;
CCSprite *colourScoreNumber0_2;
CCSprite *colourScoreNumber0_3;
CCSprite *colourScoreNumber0_4;
CCSprite *colourScoreNumber0_5;
CCSprite *colourScoreNumber0_6;
CCSprite *colourScoreNumber1_1;
CCSprite *colourScoreNumber1_2;
CCSprite *colourScoreNumber1_3;
CCSprite *colourScoreNumber1_4;
CCSprite *colourScoreNumber1_5;
CCSprite *colourScoreNumber1_6;
CCSprite *colourScoreNumber2_1;
CCSprite *colourScoreNumber2_2;
CCSprite *colourScoreNumber2_3;
CCSprite *colourScoreNumber2_4;
CCSprite *colourScoreNumber2_5;
CCSprite *colourScoreNumber2_6;
CCSprite *colourScoreNumber3_1;
CCSprite *colourScoreNumber3_2;
CCSprite *colourScoreNumber3_3;
CCSprite *colourScoreNumber3_4;
CCSprite *colourScoreNumber3_5;
CCSprite *colourScoreNumber3_6;
CCSprite *colourScoreNumber4_1;
CCSprite *colourScoreNumber4_2;
CCSprite *colourScoreNumber4_3;
CCSprite *colourScoreNumber4_4;
CCSprite *colourScoreNumber4_5;
CCSprite *colourScoreNumber4_6;
CCSprite *colourScoreNumber5_1;
CCSprite *colourScoreNumber5_2;
CCSprite *colourScoreNumber5_3;
CCSprite *colourScoreNumber5_4;
CCSprite *colourScoreNumber5_5;
CCSprite *colourScoreNumber5_6;
CCSprite *colourScoreNumber6_1;
CCSprite *colourScoreNumber6_2;
CCSprite *colourScoreNumber6_3;
CCSprite *colourScoreNumber6_4;
CCSprite *colourScoreNumber6_5;
CCSprite *colourScoreNumber6_6;
CCSprite *colourScoreNumber7_1;
CCSprite *colourScoreNumber7_2;
CCSprite *colourScoreNumber7_3;
CCSprite *colourScoreNumber7_4;
CCSprite *colourScoreNumber7_5;
CCSprite *colourScoreNumber7_6;
CCSprite *colourScoreNumber8_1;
CCSprite *colourScoreNumber8_2;
CCSprite *colourScoreNumber8_3;
CCSprite *colourScoreNumber8_4;
CCSprite *colourScoreNumber8_5;
CCSprite *colourScoreNumber8_6;
CCSprite *colourScoreNumber9_1;
CCSprite *colourScoreNumber9_2;
CCSprite *colourScoreNumber9_3;
CCSprite *colourScoreNumber9_4;
CCSprite *colourScoreNumber9_5;
CCSprite *colourScoreNumber9_6;

CCMenuItemSprite *colourScoreDigitOne;
CCMenuItemSprite *colourScoreDigitTwo;
CCMenuItemSprite *colourScoreDigitThree;
CCMenuItemSprite *colourTimeDigitOne;
CCMenuItemSprite *colourTimeDigitTwo;
CCMenuItemSprite *colourTimeDigitThree;

CCSprite *colourTimeUp;

ccTime colourGameTime = 0.0f;
BOOL colourIntroFinished = NO;
BOOL colourAllChange = TRUE;
int colourTick = 0;
int colourButtonRandomNumber = -1;
int colourImageItemsRandomNumber = -1;
float colourTimeLeft = 60.0f;

int colourAnswer = -1;
int colourGivenAnswer = -1;

int buttonOneID = -1;
int buttonTwoID = -2;
int buttonThreeID = -3;
int buttonFourID = -4;

int buttonOneDrawnID = -1;
int buttonTwoDrawnID = -2;
int buttonThreeDrawnID = -3;
int buttonFourDrawnID = -4;

int colourTimeInt = 0;
int updateCount = 0;

int colourScoreInt = 0;
int colourCurrentScore = 0;
int colourPrevScore = 0;

CCArray *colourButtonArray;

BOOL colourSelectionMade = FALSE;

BOOL colourTimeUpDrawn = FALSE;

NSString *firstButtonColour = @"";
NSString *secondButtonColour = @"";
NSString *thirdButtonColour = @"";
NSString *fourthButtonColour = @"";
NSString *textAnswerColour = @"";

int colourAnswersGiven = 0;

#pragma mark - ColourTypeMismatch

@implementation ColourTypeMismatch

+(CCScene *) scene{
    CCScene *colourTypeScene = [CCScene node];
    
    colourBackgroundLayer = [ColourTypeMismatch node];
    
    [colourTypeScene addChild: colourBackgroundLayer];
    
    return colourTypeScene;
}

-(void) onEnter{
    [self schedule:@selector(update:)];
    [super onEnter];
}

-(id) init{
    colourScoreTimeLayer = [CCLayer node];
    colourWordLayer = [CCLayer node];
    colourButtonLayer = [CCLayer node];
    
    [self initScoreTimeElements];
    [self initColourButtonElements];
    [self initColourWordElements];
    
    if((self = [super init])){
        colourBackgroundImage = [CCSprite spriteWithFile: @"MenuImages/blank_background.png"];
        colourBackgroundImage.position = ccp(240, 160);
        
        [self addChild: colourBackgroundImage];
        [self addChild: colourScoreTimeLayer];
        [self addChild: colourWordLayer];
        [self addChild: colourButtonLayer];
    }
    
    //INIT VARS
    colourGameTime = 0.0f;
    colourIntroFinished = NO;
    colourAllChange = TRUE;
    colourTick = 0;
    colourButtonRandomNumber = -1;
    colourImageItemsRandomNumber = -1;
    colourTimeLeft = 60.0f;
    colourAnswer = -1;
    colourGivenAnswer = -1;
    buttonOneID = -1;
    buttonTwoID = -2;
    buttonThreeID = -3;
    buttonFourID = -4;
    buttonOneDrawnID = -1;
    buttonTwoDrawnID = -2;
    buttonThreeDrawnID = -3;
    buttonFourDrawnID = -4;
    colourTimeInt = 0;
    updateCount = 0;
    colourScoreInt = 0;
    colourCurrentScore = 0;
    colourPrevScore = 0;
    colourSelectionMade = FALSE;
    colourTimeUpDrawn = FALSE;
    firstButtonColour = @"";
    secondButtonColour = @"";
    thirdButtonColour = @"";
    fourthButtonColour = @"";
    textAnswerColour = @"";
    colourAnswersGiven = 0;
    
    return self;
}

-(void) update:(ccTime)dt{
    colourImageItemsRandomNumber = ((arc4random() % (48-0+1)) + 0);
    
    colourGameTime += dt;
    
    if (colourGameTime < 5 && colourIntroFinished == NO){
        if(colourGameTime > 0 && colourGameTime < 1.5){
            if(colourTick == 0){
                colourIntro3 = [CCSprite spriteWithFile: @"GameSplashImages/splash_3.png"];
                colourIntro3.position = ccp(240, 160);
                [self addChild: colourIntro3];
                colourTick = 1;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_three.mp3"];
            }
        }
        else if(colourGameTime > 1.5 && colourGameTime < 2.5){
            if(colourTick == 1) {
                colourIntro2 = [CCSprite spriteWithFile: @"GameSplashImages/splash_2.png"];
                colourIntro2.position = ccp(240, 160);
                [self addChild: colourIntro2];
                colourTick = 2;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_two.mp3"];
            }
            else if(colourTick == 2){
                [self removeChild: colourIntro3 cleanup:YES];
                colourTick = 3;
            }
        }
        else if(colourGameTime > 2.5 && colourGameTime < 3.5){
            if(colourTick == 3){
                colourIntro1 = [CCSprite spriteWithFile: @"GameSplashImages/splash_1.png"];
                colourIntro1.position = ccp(240, 160);
                [self addChild: colourIntro1];
                colourTick = 4;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_one.mp3"];
            }
            else if(colourTick == 4) {
                [self removeChild: colourIntro2 cleanup:YES];
                colourTick = 5;
            }
        }
        else if(colourGameTime > 3.5 && colourGameTime < 4.5){
            if(colourTick == 5){
                colourIntroGo = [CCSprite spriteWithFile: @"GameSplashImages/splash_go.png"];
                colourIntroGo.position = ccp(240, 160);
                [self addChild: colourIntroGo];
                colourTick = 6;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_go.mp3"];
            }
            else if(colourTick == 6) {
                [self removeChild: colourIntro1 cleanup:YES];
                colourTick = 7;
            }
        }
        else{
            if(colourTick == 7){
                colourIntroFinished = YES;
                [self removeChild: colourIntroGo cleanup:YES];
                colourTick = 8;
                colourAllChange = TRUE;
            }
        }
    }
    
    else if(colourTick == 8){
        //Do everything else
        if(colourAllChange){
            colourAllChange = FALSE;
            [[SimpleAudioEngine sharedEngine] playBackgroundMusic:@"AudioFiles/colour_type_mismatch.mp3"];
            [self drawColourElements];
        }
        
        if(colourTimeLeft > 0){
            colourTimeLeft -= dt;
            colourTimeLeft *= 10;
            colourTimeInt = (int) colourTimeLeft;
            colourTimeLeft /= 10;
            
            updateCount = 0;
            
            //TIME DIGIT CALCULATIONS
            if(colourTimeLeft >= 10){
                while(colourTimeInt > 0){
                    int lSD = colourTimeInt % 10;
                    if(lSD == 0) {
                        if(updateCount == 0){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 203] setNormalImage:colourScoreNumber0_6];
                        }
                        
                        else if(updateCount == 1){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 202] setNormalImage:colourScoreNumber0_5];
                        }
                        
                        else if(updateCount == 2){
                            //Do nothing
                        }
                    }
                    
                    else if(lSD == 1) {
                        if(updateCount == 0){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 203] setNormalImage:colourScoreNumber1_6];
                        }
                        
                        else if(updateCount == 1){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 202] setNormalImage:colourScoreNumber1_5];
                        }
                        
                        else if(updateCount == 2){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 201] setNormalImage:colourScoreNumber1_4];
                        }
                    }
                    
                    else if(lSD == 2) {
                        if(updateCount == 0){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 203] setNormalImage:colourScoreNumber2_6];
                        }
                        
                        else if(updateCount == 1){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 202] setNormalImage:colourScoreNumber2_5];
                        }
                        
                        else if(updateCount == 2){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 201] setNormalImage:colourScoreNumber2_4];
                        }
                    }
                    
                    else if(lSD == 3) {
                        if(updateCount == 0){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 203] setNormalImage:colourScoreNumber3_6];
                        }
                        
                        else if(updateCount == 1){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 202] setNormalImage:colourScoreNumber3_5];
                        }
                        
                        else if(updateCount == 2){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 201] setNormalImage:colourScoreNumber3_4];
                        }
                    }
                    
                    else if(lSD == 4) {
                        if(updateCount == 0){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 203] setNormalImage:colourScoreNumber4_6];
                        }
                        
                        else if(updateCount == 1){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 202] setNormalImage:colourScoreNumber4_5];
                        }
                        
                        else if(updateCount == 2){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 201] setNormalImage:colourScoreNumber4_4];
                        }
                    }
                    
                    else if(lSD == 5) {
                        if(updateCount == 0){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 203] setNormalImage:colourScoreNumber5_6];
                        }
                        
                        else if(updateCount == 1){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 202] setNormalImage:colourScoreNumber5_5];
                        }
                        
                        else if(updateCount == 2){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 201] setNormalImage:colourScoreNumber5_4];
                        }
                    }
                    
                    else if(lSD == 6) {
                        if(updateCount == 0){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 203] setNormalImage:colourScoreNumber6_6];
                        }
                        
                        else if(updateCount == 1){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 202] setNormalImage:colourScoreNumber6_5];
                        }
                        
                        else if(updateCount == 2){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 201] setNormalImage:colourScoreNumber6_4];
                        }
                    }
                    
                    else if(lSD == 7) {
                        if(updateCount == 0){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 203] setNormalImage:colourScoreNumber7_6];
                        }
                        
                        else if(updateCount == 1){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 202] setNormalImage:colourScoreNumber7_5];
                        }
                        
                        else if(updateCount == 2){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 201] setNormalImage:colourScoreNumber7_4];
                        }
                    }
                    
                    else if(lSD == 8) {
                        if(updateCount == 0){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 203] setNormalImage:colourScoreNumber8_6];
                        }
                        
                        else if(updateCount == 1){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 202] setNormalImage:colourScoreNumber8_5];
                        }
                        
                        else if(updateCount == 2){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 201] setNormalImage:colourScoreNumber8_4];
                        }
                    }
                    
                    else if(lSD == 9) {
                        if(updateCount == 0){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 203] setNormalImage:colourScoreNumber9_6];
                        }
                        
                        else if(updateCount == 1){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 202] setNormalImage:colourScoreNumber9_5];
                        }
                        
                        else if(updateCount == 2){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 201] setNormalImage:colourScoreNumber9_4];
                        }
                    }
                    
                    colourTimeInt /= 10;
                    updateCount++;
                }
            }
            
            else if(colourTimeLeft >= 1 && colourTimeLeft < 10){
                while (colourTimeInt > 0){
                    int lSD = colourTimeInt % 10;
                    
                    if(lSD == 0) {
                        if(updateCount == 0){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 203] setNormalImage:colourScoreNumber0_6];
                        }
                    }
                    
                    else if(lSD == 1) {
                        if(updateCount == 0){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 203] setNormalImage:colourScoreNumber1_6];
                        }
                        
                        else if(updateCount == 1){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 202] setNormalImage:colourScoreNumber1_5];
                        }
                        
                        [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 201] setNormalImage:colourScoreNumber0_4];
                    }
                    
                    else if(lSD == 2) {
                        if(updateCount == 0){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 203] setNormalImage:colourScoreNumber2_6];
                        }
                        
                        else if(updateCount == 1){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 202] setNormalImage:colourScoreNumber2_5];
                        }
                        
                        [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 201] setNormalImage:colourScoreNumber0_4];
                    }
                    
                    else if(lSD == 3) {
                        if(updateCount == 0){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 203] setNormalImage:colourScoreNumber3_6];
                        }
                        
                        else if(updateCount == 1){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 202] setNormalImage:colourScoreNumber3_5];
                        }
                        
                        [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 201] setNormalImage:colourScoreNumber0_4];
                    }
                    
                    else if(lSD == 4) {
                        if(updateCount == 0){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 203] setNormalImage:colourScoreNumber4_6];
                        }
                        
                        else if(updateCount == 1){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 202] setNormalImage:colourScoreNumber4_5];
                        }
                        
                        [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 201] setNormalImage:colourScoreNumber0_4];
                    }
                    
                    else if(lSD == 5) {
                        if(updateCount == 0){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 203] setNormalImage:colourScoreNumber5_6];
                        }
                        
                        else if(updateCount == 1){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 202] setNormalImage:colourScoreNumber5_5];
                        }
                        
                        [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 201] setNormalImage:colourScoreNumber0_4];
                    }
                    
                    else if(lSD == 6) {
                        if(updateCount == 0){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 203] setNormalImage:colourScoreNumber6_6];
                        }
                        
                        else if(updateCount == 1){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 202] setNormalImage:colourScoreNumber6_5];
                        }
                        
                        [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 201] setNormalImage:colourScoreNumber0_4];
                    }
                    
                    else if(lSD == 7) {
                        if(updateCount == 0){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 203] setNormalImage:colourScoreNumber7_6];
                        }
                        
                        else if(updateCount == 1){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 202] setNormalImage:colourScoreNumber7_5];
                        }
                        
                        [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 201] setNormalImage:colourScoreNumber0_4];
                    }
                    
                    else if(lSD == 8) {
                        if(updateCount == 0){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 203] setNormalImage:colourScoreNumber8_6];
                        }
                        
                        else if(updateCount == 1){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 202] setNormalImage:colourScoreNumber8_5];
                        }
                        
                        [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 201] setNormalImage:colourScoreNumber0_4];
                    }
                    
                    else if(lSD == 9) {
                        if(updateCount == 0){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 203] setNormalImage:colourScoreNumber9_6];
                        }
                        
                        else if(updateCount == 1){
                            [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 202] setNormalImage:colourScoreNumber9_5];
                        }
                        
                        [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 201] setNormalImage:colourScoreNumber0_4];
                    }
                    
                    colourTimeInt /= 10;
                    updateCount++;
                }
            }
            
            else if(colourTimeLeft > 0 && colourTimeLeft < 1){
                int lSD = colourTimeInt % 10;
                
                if(lSD == 0) {
                    if(updateCount == 0){
                        [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 203] setNormalImage:colourScoreNumber0_6];
                    }
                    
                    [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 202] setNormalImage:colourScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 201] setNormalImage:colourScoreNumber0_4];
                }
                
                else if(lSD == 1) {
                    if(updateCount == 0){
                        [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 203] setNormalImage:colourScoreNumber1_6];
                    }
                    
                    [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 202] setNormalImage:colourScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 201] setNormalImage:colourScoreNumber0_4];
                }
                
                else if(lSD == 2) {
                    if(updateCount == 0){
                        [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 203] setNormalImage:colourScoreNumber2_6];
                    }
                    
                    [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 202] setNormalImage:colourScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 201] setNormalImage:colourScoreNumber0_4];
                }
                
                else if(lSD == 3) {
                    if(updateCount == 0){
                        [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 203] setNormalImage:colourScoreNumber3_6];
                    }
                    
                    [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 202] setNormalImage:colourScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 201] setNormalImage:colourScoreNumber0_4];
                }
                
                else if(lSD == 4) {
                    if(updateCount == 0){
                        [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 203] setNormalImage:colourScoreNumber4_6];
                    }
                    
                    [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 202] setNormalImage:colourScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 201] setNormalImage:colourScoreNumber0_4];
                }
                
                else if(lSD == 5) {
                    if(updateCount == 0){
                        [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 203] setNormalImage:colourScoreNumber5_6];
                    }
                    
                    [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 202] setNormalImage:colourScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 201] setNormalImage:colourScoreNumber0_4];
                }
                
                else if(lSD == 6) {
                    if(updateCount == 0){
                        [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 203] setNormalImage:colourScoreNumber6_6];
                    }
                    
                    [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 202] setNormalImage:colourScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 201] setNormalImage:colourScoreNumber0_4];
                }
                
                else if(lSD == 7) {
                    if(updateCount == 0){
                        [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 203] setNormalImage:colourScoreNumber7_6];
                    }
                    
                    [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 202] setNormalImage:colourScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 201] setNormalImage:colourScoreNumber0_4];
                }
                
                else if(lSD == 8) {
                    if(updateCount == 0){
                        [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 203] setNormalImage:colourScoreNumber8_6];
                    }
                    
                    [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 202] setNormalImage:colourScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 201] setNormalImage:colourScoreNumber0_4];
                }
                
                else if(lSD == 9) {
                    if(updateCount == 0){
                        [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 203] setNormalImage:colourScoreNumber9_6];
                    }
                    
                    [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 202] setNormalImage:colourScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[colourTimeMenu getChildByTag: 201] setNormalImage:colourScoreNumber0_4];
                }
                
                colourTimeInt /= 10;
                updateCount++;
            }
            
            colourScoreInt = colourCurrentScore;
            
            //SCORE DIGIT CALCULATIONS
            if(colourTimeLeft > 0) {
                if(colourCurrentScore != colourPrevScore){
                    if(colourCurrentScore >= 0 && colourCurrentScore < 10){
                        if(colourCurrentScore == 0){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 303] setNormalImage:colourScoreNumber0_3];
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 302] setNormalImage:colourScoreNumber0_2];
                        }
                        else if(colourCurrentScore == 1){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 303] setNormalImage:colourScoreNumber1_3];
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 302] setNormalImage:colourScoreNumber0_2];
                        }
                        else if(colourCurrentScore == 2){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 303] setNormalImage:colourScoreNumber2_3];
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 302] setNormalImage:colourScoreNumber0_2];
                        }
                        else if(colourCurrentScore == 3){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 303] setNormalImage:colourScoreNumber3_3];
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 302] setNormalImage:colourScoreNumber0_2];
                        }
                        else if(colourCurrentScore == 4){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 303] setNormalImage:colourScoreNumber4_3];
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 302] setNormalImage:colourScoreNumber0_2];
                        }
                        else if(colourCurrentScore == 5){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 303] setNormalImage:colourScoreNumber5_3];
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 302] setNormalImage:colourScoreNumber0_2];
                        }
                        else if(colourCurrentScore == 6){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 303] setNormalImage:colourScoreNumber6_3];
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 302] setNormalImage:colourScoreNumber0_2];
                        }
                        else if(colourCurrentScore == 7){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 303] setNormalImage:colourScoreNumber7_3];
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 302] setNormalImage:colourScoreNumber0_2];
                        }
                        else if(colourCurrentScore == 8){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 303] setNormalImage:colourScoreNumber8_3];
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 302] setNormalImage:colourScoreNumber0_2];
                        }
                        else if(colourCurrentScore == 9){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 303] setNormalImage:colourScoreNumber9_3];
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 302] setNormalImage:colourScoreNumber0_2];
                        }
                        [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 301] setNormalImage:colourScoreNumber0_1];
                    }
                    
                    else if(colourCurrentScore >= 10 && colourCurrentScore <= 99){
                        int lSDS = colourScoreInt % 10;
                        if(lSDS == 0){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 303] setNormalImage:colourScoreNumber0_3];
                        }
                        else if(lSDS == 1){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 303] setNormalImage:colourScoreNumber1_3];
                        }
                        else if(lSDS == 2){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 303] setNormalImage:colourScoreNumber2_3];
                        }
                        else if(lSDS == 3){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 303] setNormalImage:colourScoreNumber3_3];
                        }
                        else if(lSDS == 4){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 303] setNormalImage:colourScoreNumber4_3];
                        }
                        else if(lSDS == 5){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 303] setNormalImage:colourScoreNumber5_3];
                        }
                        else if(lSDS == 6){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 303] setNormalImage:colourScoreNumber6_3];
                        }
                        else if(lSDS == 7){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 303] setNormalImage:colourScoreNumber7_3];
                        }
                        else if(lSDS == 8){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 303] setNormalImage:colourScoreNumber8_3];
                        }
                        else if(lSDS == 9){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 303] setNormalImage:colourScoreNumber9_3];
                        }
                        
                        if(colourCurrentScore >= 10 && colourCurrentScore <= 19){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 302] setNormalImage:colourScoreNumber1_2];
                        }
                        else if(colourCurrentScore >= 20 && colourCurrentScore <= 29){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 302] setNormalImage:colourScoreNumber2_2];
                        }
                        else if(colourCurrentScore >= 30 && colourCurrentScore <= 39){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 302] setNormalImage:colourScoreNumber3_2];
                        }
                        else if(colourCurrentScore >= 40 && colourCurrentScore <= 49){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 302] setNormalImage:colourScoreNumber4_2];
                        }
                        else if(colourCurrentScore >= 50 && colourCurrentScore <= 59){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 302] setNormalImage:colourScoreNumber5_2];
                        }
                        else if(colourCurrentScore >= 60 && colourCurrentScore <= 69){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 302] setNormalImage:colourScoreNumber6_2];
                        }
                        else if(colourCurrentScore >= 70 && colourCurrentScore <= 79){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 302] setNormalImage:colourScoreNumber7_2];
                        }
                        else if(colourCurrentScore >= 80 && colourCurrentScore <= 89){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 302] setNormalImage:colourScoreNumber8_2];
                        }
                        else if(colourCurrentScore >= 90 && colourCurrentScore <= 99){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 302] setNormalImage:colourScoreNumber9_2];
                        }
                        [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 301] setNormalImage:colourScoreNumber0_1];
                    }
                    
                    else if(colourCurrentScore >= 100 && colourCurrentScore <= 999){
                        int colCount = 0;
                        while(colCount < 2){
                            int lSDSs = colourScoreInt % 10;
                            if(colCount == 0){
                                if(lSDSs == 0){
                                    [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 303] setNormalImage:colourScoreNumber0_3];
                                }
                                else if(lSDSs == 1){
                                    [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 303] setNormalImage:colourScoreNumber1_3];
                                }
                                else if(lSDSs == 2){
                                    [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 303] setNormalImage:colourScoreNumber2_3];
                                }
                                else if(lSDSs == 3){
                                    [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 303] setNormalImage:colourScoreNumber3_3];
                                }
                                else if(lSDSs == 4){
                                    [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 303] setNormalImage:colourScoreNumber4_3];
                                }
                                else if(lSDSs == 5){
                                    [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 303] setNormalImage:colourScoreNumber5_3];
                                }
                                else if(lSDSs == 6){
                                    [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 303] setNormalImage:colourScoreNumber6_3];
                                }
                                else if(lSDSs == 7){
                                    [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 303] setNormalImage:colourScoreNumber7_3];
                                }
                                else if(lSDSs == 8){
                                    [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 303] setNormalImage:colourScoreNumber8_3];
                                }
                                else if(lSDSs == 9){
                                    [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 303] setNormalImage:colourScoreNumber9_3];
                                }
                            }
                            else if(colCount == 1){
                                if(lSDSs == 0){
                                    [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 302] setNormalImage:colourScoreNumber0_2];
                                }
                                else if(lSDSs == 1){
                                    [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 302] setNormalImage:colourScoreNumber1_2];
                                }
                                else if(lSDSs == 2){
                                    [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 302] setNormalImage:colourScoreNumber2_2];
                                }
                                else if(lSDSs == 3){
                                    [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 302] setNormalImage:colourScoreNumber3_2];
                                }
                                else if(lSDSs == 4){
                                    [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 302] setNormalImage:colourScoreNumber4_2];
                                }
                                else if(lSDSs == 5){
                                    [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 302] setNormalImage:colourScoreNumber5_2];
                                }
                                else if(lSDSs == 6){
                                    [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 302] setNormalImage:colourScoreNumber6_2];
                                }
                                else if(lSDSs == 7){
                                    [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 302] setNormalImage:colourScoreNumber7_2];
                                }
                                else if(lSDSs == 8){
                                    [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 302] setNormalImage:colourScoreNumber8_2];
                                }
                                else if(lSDSs == 9){
                                    [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 302] setNormalImage:colourScoreNumber9_2];
                                }
                            }
                            colourScoreInt /= 10;
                            colCount++;
                        }
                        
                        if(colourCurrentScore >= 100 && colourCurrentScore <= 199){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 301] setNormalImage:colourScoreNumber1_1];
                        }
                        else if(colourCurrentScore >= 200 && colourCurrentScore <= 299){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 301] setNormalImage:colourScoreNumber2_1];
                        }
                        else if(colourCurrentScore >= 300 && colourCurrentScore <= 399){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 301] setNormalImage:colourScoreNumber3_1];
                        }
                        else if(colourCurrentScore >= 400 && colourCurrentScore <= 499){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 301] setNormalImage:colourScoreNumber4_1];
                        }
                        else if(colourCurrentScore >= 500 && colourCurrentScore <= 599){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 301] setNormalImage:colourScoreNumber5_1];
                        }
                        else if(colourCurrentScore >= 600 && colourCurrentScore <= 699){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 301] setNormalImage:colourScoreNumber6_1];
                        }
                        else if(colourCurrentScore >= 700 && colourCurrentScore <= 799){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 301] setNormalImage:colourScoreNumber7_1];
                        }
                        else if(colourCurrentScore >= 800 && colourCurrentScore <= 899){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 301] setNormalImage:colourScoreNumber8_1];
                        }
                        else if(colourCurrentScore >= 900 && colourCurrentScore <= 999){
                            [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 301] setNormalImage:colourScoreNumber9_1];
                        }
                    }
                    else if(colourCurrentScore <= 0){
                        [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 303] setNormalImage:colourScoreNumber0_3];
                        [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 302] setNormalImage:colourScoreNumber0_2];
                        [(CCMenuItemSprite*)[colourScoreMenu getChildByTag: 301] setNormalImage:colourScoreNumber0_1];
                    }
                }
            }
            
            colourPrevScore = colourCurrentScore;
            
            if(colourSelectionMade){
                colourSelectionMade = FALSE;
                [self colourItemChanges];
            }
        }
        
        else if(colourTimeLeft <= 0 && !colourTimeUpDrawn){
            colourTimeUp = [CCSprite spriteWithFile:@"GameSplashImages/time_up_splash.png"];
            colourTimeUp.position = ccp(240, 160);
            [self addChild: colourTimeUp];
            [self scheduleOnce:@selector(colourGameOver:) delay:2];
            [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_finish.mp3"];
            colourTimeUpDrawn = TRUE;
        }
        
        else {
            //Do nothing
        }
    }
}

-(void) initScoreTimeElements{
    //ITEM IMAGES
    colourScoreLetterS = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_s_30px.png"
                                                  selectedImage:NULL];
    
    colourScoreLetterC = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_c_30px.png"
                                                  selectedImage:NULL];
    
    colourScoreLetterO = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_o_30px.png"
                                                  selectedImage:NULL];
    
    colourScoreLetterR = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_r_30px.png"
                                                  selectedImage:NULL];
    
    colourScoreLetterE = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_e_30px.png"
                                                  selectedImage:NULL];
    
    colourTimeLetterT = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_t_30px.png"
                                                 selectedImage:NULL];
    
    colourTimeLetterI = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_i_30px.png"
                                                 selectedImage:NULL];
    
    colourTimeLetterM = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_m_30px.png"
                                                 selectedImage:NULL];
    
    colourTimeLetterE = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_e_30px.png"
                                                 selectedImage:NULL];
    
    colourScoreLetterColon = [CCMenuItemImage itemWithNormalImage:@"NumberSigns/signs_30px/letters_colon_30px.png"
                                                      selectedImage:NULL];
    
    colourTimeLetterColon = [CCMenuItemImage itemWithNormalImage:@"NumberSigns/signs_30px/letters_colon_30px.png"
                                                     selectedImage:NULL];
    
    colourTimeLetterPoint = [CCMenuItemImage itemWithNormalImage:@"NumberSigns/signs_30px/letter_point_30px.png"
                                                     selectedImage:NULL];
    
    //ITEM SPRITES
    colourScoreNumber0_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_0_30px.png"] retain];
    colourScoreNumber0_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_0_30px.png"] retain];
    colourScoreNumber0_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_0_30px.png"] retain];
    colourScoreNumber0_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_0_30px.png"] retain];
    colourScoreNumber0_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_0_30px.png"] retain];
    colourScoreNumber0_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_0_30px.png"] retain];
    colourScoreNumber1_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_1_30px.png"] retain];
    colourScoreNumber1_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_1_30px.png"] retain];
    colourScoreNumber1_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_1_30px.png"] retain];
    colourScoreNumber1_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_1_30px.png"] retain];
    colourScoreNumber1_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_1_30px.png"] retain];
    colourScoreNumber1_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_1_30px.png"] retain];
    colourScoreNumber2_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_2_30px.png"] retain];
    colourScoreNumber2_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_2_30px.png"] retain];
    colourScoreNumber2_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_2_30px.png"] retain];
    colourScoreNumber2_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_2_30px.png"] retain];
    colourScoreNumber2_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_2_30px.png"] retain];
    colourScoreNumber2_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_2_30px.png"] retain];
    colourScoreNumber3_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_3_30px.png"] retain];
    colourScoreNumber3_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_3_30px.png"] retain];
    colourScoreNumber3_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_3_30px.png"] retain];
    colourScoreNumber3_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_3_30px.png"] retain];
    colourScoreNumber3_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_3_30px.png"] retain];
    colourScoreNumber3_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_3_30px.png"] retain];
    colourScoreNumber4_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_4_30px.png"] retain];
    colourScoreNumber4_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_4_30px.png"] retain];
    colourScoreNumber4_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_4_30px.png"] retain];
    colourScoreNumber4_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_4_30px.png"] retain];
    colourScoreNumber4_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_4_30px.png"] retain];
    colourScoreNumber4_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_4_30px.png"] retain];
    colourScoreNumber5_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_5_30px.png"] retain];
    colourScoreNumber5_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_5_30px.png"] retain];
    colourScoreNumber5_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_5_30px.png"] retain];
    colourScoreNumber5_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_5_30px.png"] retain];
    colourScoreNumber5_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_5_30px.png"] retain];
    colourScoreNumber5_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_5_30px.png"] retain];
    colourScoreNumber6_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_6_30px.png"] retain];
    colourScoreNumber6_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_6_30px.png"] retain];
    colourScoreNumber6_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_6_30px.png"] retain];
    colourScoreNumber6_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_6_30px.png"] retain];
    colourScoreNumber6_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_6_30px.png"] retain];
    colourScoreNumber6_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_6_30px.png"] retain];
    colourScoreNumber7_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_7_30px.png"] retain];
    colourScoreNumber7_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_7_30px.png"] retain];
    colourScoreNumber7_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_7_30px.png"] retain];
    colourScoreNumber7_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_7_30px.png"] retain];
    colourScoreNumber7_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_7_30px.png"] retain];
    colourScoreNumber7_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_7_30px.png"] retain];
    colourScoreNumber8_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_8_30px.png"] retain];
    colourScoreNumber8_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_8_30px.png"] retain];
    colourScoreNumber8_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_8_30px.png"] retain];
    colourScoreNumber8_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_8_30px.png"] retain];
    colourScoreNumber8_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_8_30px.png"] retain];
    colourScoreNumber8_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_8_30px.png"] retain];
    colourScoreNumber9_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_9_30px.png"] retain];
    colourScoreNumber9_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_9_30px.png"] retain];
    colourScoreNumber9_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_9_30px.png"] retain];
    colourScoreNumber9_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_9_30px.png"] retain];
    colourScoreNumber9_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_9_30px.png"] retain];
    colourScoreNumber9_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_9_30px.png"] retain];
    
    colourScoreDigitOne = [CCMenuItemSprite itemWithNormalSprite:colourScoreNumber0_1
                                                    selectedSprite:NULL];
    
    colourScoreDigitTwo = [CCMenuItemSprite itemWithNormalSprite:colourScoreNumber0_2
                                                    selectedSprite:NULL];
    
    colourScoreDigitThree = [CCMenuItemSprite itemWithNormalSprite:colourScoreNumber0_3
                                                      selectedSprite:NULL];
    
    colourTimeDigitOne = [CCMenuItemSprite itemWithNormalSprite:colourScoreNumber6_4
                                                   selectedSprite:NULL];
    
    colourTimeDigitTwo = [CCMenuItemSprite itemWithNormalSprite:colourScoreNumber0_5
                                                   selectedSprite:NULL];
    
    colourTimeDigitThree = [CCMenuItemSprite itemWithNormalSprite:colourScoreNumber0_6
                                                     selectedSprite:NULL];
    
    [colourScoreDigitOne setTag: 301];
    [colourScoreDigitTwo setTag: 302];
    [colourScoreDigitThree setTag: 303];
    
    [colourTimeDigitOne setTag: 201];
    [colourTimeDigitTwo setTag: 202];
    [colourTimeDigitThree setTag: 203];
    
    colourScoreMenu = [CCMenu menuWithItems:colourScoreLetterS, colourScoreLetterC, colourScoreLetterO, colourScoreLetterR, colourScoreLetterE, colourScoreLetterColon, colourScoreDigitOne, colourScoreDigitTwo, colourScoreDigitThree, nil];
    
    colourTimeMenu = [CCMenu menuWithItems:colourTimeLetterT, colourTimeLetterI, colourTimeLetterM, colourTimeLetterE, colourTimeLetterColon, colourTimeDigitOne, colourTimeDigitTwo, colourTimeLetterPoint, colourTimeDigitThree, nil];
    
    [colourScoreMenu alignItemsHorizontallyWithPadding:2];
    [colourTimeMenu alignItemsHorizontallyWithPadding:2];
    colourScoreMenu.position = ccp(60, 305);
    colourTimeMenu.position = ccp(420, 305);
    [colourScoreTimeLayer addChild:colourScoreMenu];
    [colourScoreTimeLayer addChild:colourTimeMenu];
    colourScoreTimeLayer.position = ccp(1000, 1000);
}

-(void) initColourButtonElements{
    //BUTTON IMAGES
    colourButtonImageBlack = [[CCSprite spriteWithFile:@"MismatchColours/mismatch_button_black.png"]retain];
    colourButtonImageBlackSelected = [[CCSprite spriteWithFile:@"MismatchColours/mismatch_button_black_selected.png"]retain];
    colourButtonImageBlue = [[CCSprite spriteWithFile:@"MismatchColours/mismatch_button_blue.png"]retain];
    colourButtonImageBlueSelected = [[CCSprite spriteWithFile:@"MismatchColours/mismatch_button_blue_selected.png"]retain];
    colourButtonImageBrown = [[CCSprite spriteWithFile:@"MismatchColours/mismatch_button_brown.png"]retain];
    colourButtonImageBrownSelected = [[CCSprite spriteWithFile:@"MismatchColours/mismatch_button_brown_selected.png"]retain];
    colourButtonImageGold = [[CCSprite spriteWithFile:@"MismatchColours/mismatch_button_gold.png"]retain];
    colourButtonImageGoldSelected = [[CCSprite spriteWithFile:@"MismatchColours/mismatch_button_gold_selected.png"]retain];
    colourButtonImageGreen = [[CCSprite spriteWithFile:@"MismatchColours/mismatch_button_green.png"]retain];
    colourButtonImageGreenSelected = [[CCSprite spriteWithFile:@"MismatchColours/mismatch_button_green_selected.png"]retain];
    colourButtonImageRed = [[CCSprite spriteWithFile:@"MismatchColours/mismatch_button_red.png"]retain];
    colourButtonImageRedSelected = [[CCSprite spriteWithFile:@"MismatchColours/mismatch_button_red_selected.png"]retain];
    colourButtonImageWhite = [[CCSprite spriteWithFile:@"MismatchColours/mismatch_button_white.png"]retain];
    colourButtonImageWhiteSelected = [[CCSprite spriteWithFile:@"MismatchColours/mismatch_button_white_selected.png"]retain];
    
    //BUTTON IMAGE COPIES
    colourButtonImageBlack2 = [[CCSprite spriteWithFile:@"MismatchColours/mismatch_button_black.png"]retain];
    colourButtonImageBlackSelected2 = [[CCSprite spriteWithFile:@"MismatchColours/mismatch_button_black_selected.png"]retain];
    colourButtonImageBlue2 = [[CCSprite spriteWithFile:@"MismatchColours/mismatch_button_blue.png"]retain];
    colourButtonImageBlueSelected2 = [[CCSprite spriteWithFile:@"MismatchColours/mismatch_button_blue_selected.png"]retain];
    colourButtonImageBrown2 = [[CCSprite spriteWithFile:@"MismatchColours/mismatch_button_brown.png"]retain];
    colourButtonImageBrownSelected2 = [[CCSprite spriteWithFile:@"MismatchColours/mismatch_button_brown_selected.png"]retain];
    colourButtonImageGold2 = [[CCSprite spriteWithFile:@"MismatchColours/mismatch_button_gold.png"]retain];
    colourButtonImageGoldSelected2 = [[CCSprite spriteWithFile:@"MismatchColours/mismatch_button_gold_selected.png"]retain];
    colourButtonImageGreen2 = [[CCSprite spriteWithFile:@"MismatchColours/mismatch_button_green.png"]retain];
    colourButtonImageGreenSelected2 = [[CCSprite spriteWithFile:@"MismatchColours/mismatch_button_green_selected.png"]retain];
    colourButtonImageRed2 = [[CCSprite spriteWithFile:@"MismatchColours/mismatch_button_red.png"]retain];
    colourButtonImageRedSelected2 = [[CCSprite spriteWithFile:@"MismatchColours/mismatch_button_red_selected.png"]retain];
    colourButtonImageWhite2 = [[CCSprite spriteWithFile:@"MismatchColours/mismatch_button_white.png"]retain];
    colourButtonImageWhiteSelected2 = [[CCSprite spriteWithFile:@"MismatchColours/mismatch_button_white_selected.png"]retain];
    
    colourButtonSpriteOne = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                    selectedSprite:NULL
                                                            target:self
                                                          selector:@selector(buttonOnePressed:)]retain];
    
    colourButtonSpriteTwo = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                    selectedSprite:NULL
                                                            target:self
                                                          selector:@selector(buttonTwoPressed:)]retain];
    
    colourButtonSpriteThree = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                    selectedSprite:NULL
                                                            target:self
                                                          selector:@selector(buttonThreePressed:)]retain];
    
    colourButtonSpriteFour = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                    selectedSprite:NULL
                                                            target:self
                                                           selector:@selector(buttonFourPressed:)]retain];
    
    [colourButtonSpriteOne setTag: 101];
    [colourButtonSpriteTwo setTag: 102];
    [colourButtonSpriteThree setTag: 103];
    [colourButtonSpriteFour setTag: 104];
    
    colourButtonMenu = [[CCMenu menuWithItems: colourButtonSpriteOne, colourButtonSpriteTwo, colourButtonSpriteThree, colourButtonSpriteFour, nil]retain];
    [colourButtonMenu alignItemsHorizontallyWithPadding: 119];
    colourButtonMenu.position = ccp(240, 45);
    
    [colourButtonLayer addChild: colourButtonMenu];
    colourButtonLayer.position = ccp(1000, 1000);
}

-(void) initColourWordElements{
    //INIT WORD IMAGES
    colourWordImageBlackBlack = [[CCSprite spriteWithFile:@"MismatchColours/black_text_black.png"]retain];
    colourWordImageBlackBlue = [[CCSprite spriteWithFile:@"MismatchColours/black_text_blue.png"]retain];
    colourWordImageBlackBrown = [[CCSprite spriteWithFile:@"MismatchColours/black_text_brown.png"]retain];
    colourWordImageBlackGold = [[CCSprite spriteWithFile:@"MismatchColours/black_text_gold.png"]retain];
    colourWordImageBlackGreen = [[CCSprite spriteWithFile:@"MismatchColours/black_text_green.png"]retain];
    colourWordImageBlackRed = [[CCSprite spriteWithFile:@"MismatchColours/black_text_red.png"]retain];
    colourWordImageBlackWhite = [[CCSprite spriteWithFile:@"MismatchColours/black_text_white.png"]retain];
    colourWordImageBlueBlack = [[CCSprite spriteWithFile:@"MismatchColours/blue_text_black.png"]retain];
    colourWordImageBlueBlue = [[CCSprite spriteWithFile:@"MismatchColours/blue_text_blue.png"]retain];
    colourWordImageBlueBrown = [[CCSprite spriteWithFile:@"MismatchColours/blue_text_brown.png"]retain];
    colourWordImageBlueGold = [[CCSprite spriteWithFile:@"MismatchColours/blue_text_gold.png"]retain];
    colourWordImageBlueGreen = [[CCSprite spriteWithFile:@"MismatchColours/blue_text_green.png"]retain];
    colourWordImageBlueRed = [[CCSprite spriteWithFile:@"MismatchColours/blue_text_red.png"]retain];
    colourWordImageBlueWhite = [[CCSprite spriteWithFile:@"MismatchColours/blue_text_white.png"]retain];
    colourWordImageBrownBlack = [[CCSprite spriteWithFile:@"MismatchColours/brown_text_black.png"]retain];
    colourWordImageBrownBlue = [[CCSprite spriteWithFile:@"MismatchColours/brown_text_blue.png"]retain];
    colourWordImageBrownBrown = [[CCSprite spriteWithFile:@"MismatchColours/brown_text_brown.png"]retain];
    colourWordImageBrownGold = [[CCSprite spriteWithFile:@"MismatchColours/brown_text_gold.png"]retain];
    colourWordImageBrownGreen = [[CCSprite spriteWithFile:@"MismatchColours/brown_text_green.png"]retain];
    colourWordImageBrownRed = [[CCSprite spriteWithFile:@"MismatchColours/brown_text_red.png"]retain];
    colourWordImageBrownWhite = [[CCSprite spriteWithFile:@"MismatchColours/brown_text_white.png"]retain];
    colourWordImageGoldBlack = [[CCSprite spriteWithFile:@"MismatchColours/gold_text_black.png"]retain];
    colourWordImageGoldBlue = [[CCSprite spriteWithFile:@"MismatchColours/gold_text_blue.png"]retain];
    colourWordImageGoldBrown = [[CCSprite spriteWithFile:@"MismatchColours/gold_text_brown.png"]retain];
    colourWordImageGoldGold = [[CCSprite spriteWithFile:@"MismatchColours/gold_text_gold.png"]retain];
    colourWordImageGoldGreen = [[CCSprite spriteWithFile:@"MismatchColours/gold_text_green.png"]retain];
    colourWordImageGoldRed = [[CCSprite spriteWithFile:@"MismatchColours/gold_text_red.png"]retain];
    colourWordImageGoldWhite = [[CCSprite spriteWithFile:@"MismatchColours/gold_text_white.png"]retain];
    colourWordImageGreenBlack = [[CCSprite spriteWithFile:@"MismatchColours/green_text_black.png"]retain];
    colourWordImageGreenBlue = [[CCSprite spriteWithFile:@"MismatchColours/green_text_blue.png"]retain];
    colourWordImageGreenBrown = [[CCSprite spriteWithFile:@"MismatchColours/green_text_brown.png"]retain];
    colourWordImageGreenGold = [[CCSprite spriteWithFile:@"MismatchColours/green_text_gold.png"]retain];
    colourWordImageGreenGreen = [[CCSprite spriteWithFile:@"MismatchColours/green_text_green.png"]retain];
    colourWordImageGreenRed = [[CCSprite spriteWithFile:@"MismatchColours/green_text_red.png"]retain];
    colourWordImageGreenWhite = [[CCSprite spriteWithFile:@"MismatchColours/green_text_white.png"]retain];
    colourWordImageRedBlack = [[CCSprite spriteWithFile:@"MismatchColours/red_text_black.png"]retain];
    colourWordImageRedBlue = [[CCSprite spriteWithFile:@"MismatchColours/red_text_blue.png"]retain];
    colourWordImageRedBrown = [[CCSprite spriteWithFile:@"MismatchColours/red_text_brown.png"]retain];
    colourWordImageRedGold = [[CCSprite spriteWithFile:@"MismatchColours/red_text_gold.png"]retain];
    colourWordImageRedGreen = [[CCSprite spriteWithFile:@"MismatchColours/red_text_green.png"]retain];
    colourWordImageRedRed = [[CCSprite spriteWithFile:@"MismatchColours/red_text_red.png"]retain];
    colourWordImageRedWhite = [[CCSprite spriteWithFile:@"MismatchColours/red_text_white.png"]retain];
    colourWordImageWhiteBlack = [[CCSprite spriteWithFile:@"MismatchColours/white_text_black.png"]retain];
    colourWordImageWhiteBlue = [[CCSprite spriteWithFile:@"MismatchColours/white_text_blue.png"]retain];
    colourWordImageWhiteBrown = [[CCSprite spriteWithFile:@"MismatchColours/white_text_brown.png"]retain];
    colourWordImageWhiteGold = [[CCSprite spriteWithFile:@"MismatchColours/white_text_gold.png"]retain];
    colourWordImageWhiteGreen = [[CCSprite spriteWithFile:@"MismatchColours/white_text_green.png"]retain];
    colourWordImageWhiteRed = [[CCSprite spriteWithFile:@"MismatchColours/white_text_red.png"]retain];
    colourWordImageWhiteWhite = [[CCSprite spriteWithFile:@"MismatchColours/white_text_white.png"]retain];
    
    colourWordSprite = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                               selectedSprite:NULL
                                                       target:self
                                                     selector:NO]retain];
    
    [colourWordSprite setTag: 401];
    
    colourWordMenu = [CCMenu menuWithItems: colourWordSprite, nil];
    [colourWordMenu alignItemsHorizontally];
    colourWordMenu.position = ccp(240, 200);
    
    [colourWordLayer addChild: colourWordMenu];
    colourWordLayer.position = ccp(1000, 1000);
}

-(void) drawColourElements{
    colourScoreTimeLayer.position = ccp(0, 0);
    colourButtonLayer.position = ccp(0, 0);
    colourWordLayer.position = ccp(0, 0);
    [self colourItemChanges];
}

-(void) buttonOnePressed:(id)sender{
    if(!colourTimeUpDrawn){
        if([firstButtonColour isEqualToString: textAnswerColour]){
            colourCurrentScore += 5;
            [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
        }
        else{
            if(colourCurrentScore <= 0){
                //Do nothing
            }
            else{
                colourCurrentScore -= 5;
            }
            [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
        }
        colourAnswersGiven++;
        colourSelectionMade = TRUE;
    }
    else{
        
    }
}

-(void) buttonTwoPressed:(id)sender{
    if(!colourTimeUpDrawn){
        if([secondButtonColour isEqualToString: textAnswerColour]){
            colourCurrentScore += 5;
            [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
        }
        else{
            if(colourCurrentScore <= 0){
                //Do nothing
            }
            else{
                colourCurrentScore -= 5;
            }
            [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
        }
        colourAnswersGiven++;
        colourSelectionMade = TRUE;
    }
    else{
        
    }
}

-(void) buttonThreePressed:(id)sender{
    if(!colourTimeUpDrawn){
        if([thirdButtonColour isEqualToString: textAnswerColour]){
            colourCurrentScore += 5;
            [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
        }
        else{
            if(colourCurrentScore <= 0){
                //Do nothing
            }
            else{
                colourCurrentScore -= 5;
            }
            [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
        }
        colourAnswersGiven++;
        colourSelectionMade = TRUE;
    }
    else{
        
    }
}

-(void) buttonFourPressed:(id)sender{
    if(!colourTimeUpDrawn){
        if([fourthButtonColour isEqualToString: textAnswerColour]){
            colourCurrentScore += 5;
            [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
        }
        else{
            if(colourCurrentScore <= 0){
                //Do nothing
            }
            else{
                colourCurrentScore -= 5;
            }
            [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
        }
        colourAnswersGiven++;
        colourSelectionMade = TRUE;
    }
    else{
        
    }
}

-(void) colourGameOver:(ccTime)dt{
    //Sort scores etc
    [[NSUserDefaults standardUserDefaults] setInteger:colourCurrentScore forKey:@"cScoreNew"];
    [[NSUserDefaults standardUserDefaults] setInteger:2 forKey:@"gameID"];
    
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:.5 scene: [GameFinish node] withColor:ccWHITE]];
}

-(void) colourItemChanges{
    if(colourImageItemsRandomNumber == 0){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageBlackBlack];
    }
    else if(colourImageItemsRandomNumber == 1){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageBlackBlue];
    }
    else if(colourImageItemsRandomNumber == 2){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageBlackBrown];
    }
    else if(colourImageItemsRandomNumber == 3){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageBlackGold];
    }
    else if(colourImageItemsRandomNumber == 4){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageBlackGreen];
    }
    else if(colourImageItemsRandomNumber == 5){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageBlackRed];
    }
    else if(colourImageItemsRandomNumber == 6){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageBlackWhite];
    }
    else if(colourImageItemsRandomNumber == 7){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageBlueBlack];
    }
    else if(colourImageItemsRandomNumber == 8){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageBlueBlue];
    }
    else if(colourImageItemsRandomNumber == 9){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageBlueBrown];
    }
    else if(colourImageItemsRandomNumber == 10){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageBlueGold];
    }
    else if(colourImageItemsRandomNumber == 11){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageBlueGreen];
    }
    else if(colourImageItemsRandomNumber == 12){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageBlueRed];
    }
    else if(colourImageItemsRandomNumber == 13){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageBlueWhite];
    }
    else if(colourImageItemsRandomNumber == 14){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageBrownBlack];
    }
    else if(colourImageItemsRandomNumber == 15){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageBrownBlue];
    }
    else if(colourImageItemsRandomNumber == 16){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageBrownBrown];
    }
    else if(colourImageItemsRandomNumber == 17){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageBrownGold];
    }
    else if(colourImageItemsRandomNumber == 18){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageBrownGreen];
    }
    else if(colourImageItemsRandomNumber == 19){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageBrownRed];
    }
    else if(colourImageItemsRandomNumber == 20){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageBrownWhite];
    }
    else if(colourImageItemsRandomNumber == 21){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageGoldBlack];
    }
    else if(colourImageItemsRandomNumber == 22){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageGoldBlue];
    }
    else if(colourImageItemsRandomNumber == 23){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageGoldBrown];
    }
    else if(colourImageItemsRandomNumber == 24){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageGoldGold];
    }
    else if(colourImageItemsRandomNumber == 25){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageGoldGreen];
    }
    else if(colourImageItemsRandomNumber == 26){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageGoldRed];
    }
    else if(colourImageItemsRandomNumber == 27){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageGoldWhite];
    }
    else if(colourImageItemsRandomNumber == 28){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageGreenBlack];
    }
    else if(colourImageItemsRandomNumber == 29){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageGreenBlue];
    }
    else if(colourImageItemsRandomNumber == 30){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageGreenBrown];
    }
    else if(colourImageItemsRandomNumber == 31){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageGreenGold];
    }
    else if(colourImageItemsRandomNumber == 32){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageGreenGreen];
    }
    else if(colourImageItemsRandomNumber == 33){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageGreenRed];
    }
    else if(colourImageItemsRandomNumber == 34){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageGreenWhite];
    }
    else if(colourImageItemsRandomNumber == 35){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageRedBlack];
    }
    else if(colourImageItemsRandomNumber == 36){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageRedBlue];
    }
    else if(colourImageItemsRandomNumber == 37){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageRedBrown];
    }
    else if(colourImageItemsRandomNumber == 38){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageRedGold];
    }
    else if(colourImageItemsRandomNumber == 39){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageRedGreen];
    }
    else if(colourImageItemsRandomNumber == 40){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageRedRed];
    }
    else if(colourImageItemsRandomNumber == 41){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageRedWhite];
    }
    else if(colourImageItemsRandomNumber == 42){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageWhiteBlack];
    }
    else if(colourImageItemsRandomNumber == 43){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageWhiteBlue];
    }
    else if(colourImageItemsRandomNumber == 44){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageWhiteBrown];
    }
    else if(colourImageItemsRandomNumber == 45){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageWhiteGold];
    }
    else if(colourImageItemsRandomNumber == 46){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageWhiteGreen];
    }
    else if(colourImageItemsRandomNumber == 47){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageWhiteRed];
    }
    else if(colourImageItemsRandomNumber == 48){
        [(CCMenuItemSprite*)[colourWordMenu getChildByTag: 401] setNormalImage:colourWordImageWhiteWhite];
    }
    
    colourAnswer = colourImageItemsRandomNumber;
    [self redrawColourButtons];
}

-(void) redrawColourButtons{
    [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] removeAllChildrenWithCleanup:YES];
    [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] removeAllChildrenWithCleanup:YES];
    [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] removeAllChildrenWithCleanup:YES];
    [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] removeAllChildrenWithCleanup:YES];
    
    buttonOneID = -1;
    buttonTwoID = -2;
    buttonThreeID = -3;
    buttonFourID = -4;
    
    buttonOneDrawnID = -1;
    buttonTwoDrawnID = -2;
    buttonThreeDrawnID = -3;
    buttonFourDrawnID = -4;
    
    if(colourAnswer % 7 == 0){
        buttonOneID = 0;
        textAnswerColour = @"black";
    }
    else if(colourAnswer % 7 == 1){
        buttonOneID = 1;
        textAnswerColour = @"blue";
    }
    else if(colourAnswer % 7 == 2){
        buttonOneID = 2;
        textAnswerColour = @"brown";
    }
    else if(colourAnswer % 7 == 3){
        buttonOneID = 3;
        textAnswerColour = @"gold";
    }
    else if(colourAnswer % 7 == 4){
        buttonOneID = 4;
        textAnswerColour = @"green";
    }
    else if(colourAnswer % 7 == 5){
        buttonOneID = 5;
        textAnswerColour = @"red";
    }
    else if(colourAnswer % 7 == 6){
        buttonOneID = 6;
        textAnswerColour = @"white";
    }
    int buttonCount = 0;
    
    while(buttonCount < 3){
        colourButtonRandomNumber = ((arc4random() % (6-0+1)) + 0); 
        if(colourButtonRandomNumber == buttonOneID || colourButtonRandomNumber == buttonTwoID || colourButtonRandomNumber == buttonThreeID || colourButtonRandomNumber == buttonFourID){
            //Do nothing, get new random number
        }
        else{
            if(buttonCount == 0){
                if(colourButtonRandomNumber == 0){
                    buttonTwoID = 0;
                }
                else if(colourButtonRandomNumber == 1){
                    buttonTwoID = 1;
                }
                else if(colourButtonRandomNumber == 2){
                    buttonTwoID = 2;
                }
                else if(colourButtonRandomNumber == 3){
                    buttonTwoID = 3;
                }
                else if(colourButtonRandomNumber == 4){
                    buttonTwoID = 4;
                }
                else if(colourButtonRandomNumber == 5){
                    buttonTwoID = 5;
                }
                else if(colourButtonRandomNumber == 6){
                    buttonTwoID = 6;
                }
                buttonCount++;
            }
            else if(buttonCount == 1){
                if(colourButtonRandomNumber == 0){
                    buttonThreeID = 0;
                }
                else if(colourButtonRandomNumber == 1){
                    buttonThreeID = 1;
                }
                else if(colourButtonRandomNumber == 2){
                    buttonThreeID = 2;
                }
                else if(colourButtonRandomNumber == 3){
                    buttonThreeID = 3;
                }
                else if(colourButtonRandomNumber == 4){
                    buttonThreeID = 4;
                }
                else if(colourButtonRandomNumber == 5){
                    buttonThreeID = 5;
                }
                else if(colourButtonRandomNumber == 6){
                    buttonThreeID = 6;
                }
                buttonCount++;
            }
            else if(buttonCount == 2){
                if(colourButtonRandomNumber == 0){
                    buttonFourID = 0;
                }
                else if(colourButtonRandomNumber == 1){
                    buttonFourID = 1;
                }
                else if(colourButtonRandomNumber == 2){
                    buttonFourID = 2;
                }
                else if(colourButtonRandomNumber == 3){
                    buttonFourID = 3;
                }
                else if(colourButtonRandomNumber == 4){
                    buttonFourID = 4;
                }
                else if(colourButtonRandomNumber == 5){
                    buttonFourID = 5;
                }
                else if(colourButtonRandomNumber == 6){
                    buttonFourID = 6;
                }
                buttonCount++;
            }
        }
    }
    
    buttonCount = 0;
    
    if(colourAnswersGiven % 2 == 0){
        while(buttonCount < 4){
            colourButtonRandomNumber = ((arc4random() % (3-0+1)) + 0);
            if(colourButtonRandomNumber == 0){
                if(buttonOneDrawnID != 0){
                    if(buttonOneID == 0){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageBlack];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageBlackSelected];
                            firstButtonColour = @"black";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageBlack];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageBlackSelected];
                            secondButtonColour = @"black";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageBlack];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageBlackSelected];
                            thirdButtonColour = @"black";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageBlack];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageBlackSelected];
                            fourthButtonColour = @"black";
                        }
                        buttonOneDrawnID = 0;
                        buttonCount++;
                    }
                    else if(buttonOneID == 1){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageBlue];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageBlueSelected];
                            firstButtonColour = @"blue";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageBlue];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageBlueSelected];
                            secondButtonColour = @"blue";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageBlue];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageBlueSelected];
                            thirdButtonColour = @"blue";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageBlue];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageBlueSelected];
                            fourthButtonColour = @"blue";
                        }
                        buttonOneDrawnID = 0;
                        buttonCount++;
                    }
                    else if(buttonOneID == 2){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageBrown];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageBrownSelected];
                            firstButtonColour = @"brown";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageBrown];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageBrownSelected];
                            secondButtonColour = @"brown";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageBrown];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageBrownSelected];
                            thirdButtonColour = @"brown";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageBrown];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageBrownSelected];
                            fourthButtonColour = @"brown";
                        }
                        buttonOneDrawnID = 0;
                        buttonCount++;
                    }
                    else if(buttonOneID == 3){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageGold];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageGoldSelected];
                            firstButtonColour = @"gold";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageGold];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageGoldSelected];
                            secondButtonColour = @"gold";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageGold];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageGoldSelected];
                            thirdButtonColour = @"gold";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageGold];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageGoldSelected];
                            fourthButtonColour = @"gold";
                        }
                        buttonOneDrawnID = 0;
                        buttonCount++;
                    }
                    else if(buttonOneID == 4){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageGreen];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageGreenSelected];
                            firstButtonColour = @"green";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageGreen];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageGreenSelected];
                            secondButtonColour = @"green";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageGreen];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageGreenSelected];
                            thirdButtonColour = @"green";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageGreen];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageGreenSelected];
                            fourthButtonColour = @"green";
                        }
                        buttonOneDrawnID = 0;
                        buttonCount++;
                    }
                    else if(buttonOneID == 5){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageRed];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageRedSelected];
                            firstButtonColour = @"red";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageRed];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageRedSelected];
                            secondButtonColour = @"red";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageRed];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageRedSelected];
                            thirdButtonColour = @"red";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageRed];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageRedSelected];
                            fourthButtonColour = @"red";
                        }
                        buttonOneDrawnID = 0;
                        buttonCount++;
                    }
                    else if(buttonOneID == 6){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageWhite];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageWhiteSelected];
                            firstButtonColour = @"white";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageWhite];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageWhiteSelected];
                            secondButtonColour = @"white";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageWhite];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageWhiteSelected];
                            thirdButtonColour = @"white";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageWhite];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageWhiteSelected];
                            fourthButtonColour = @"white";
                        }
                        buttonOneDrawnID = 0;
                        buttonCount++;
                    }
                }
            }
            else if(colourButtonRandomNumber == 1){
                if(buttonTwoDrawnID != 1){
                    if(buttonTwoID == 0){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageBlack];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageBlackSelected];
                            firstButtonColour = @"black";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageBlack];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageBlackSelected];
                            secondButtonColour = @"black";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageBlack];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageBlackSelected];
                            thirdButtonColour = @"black";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageBlack];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageBlackSelected];
                            fourthButtonColour = @"black";
                        }
                        buttonTwoDrawnID = 1;
                        buttonCount++;
                    }
                    else if(buttonTwoID == 1){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageBlue];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageBlueSelected];
                            firstButtonColour = @"blue";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageBlue];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageBlueSelected];
                            secondButtonColour = @"blue";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageBlue];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageBlueSelected];
                            thirdButtonColour = @"blue";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageBlue];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageBlueSelected];
                            fourthButtonColour = @"blue";
                        }
                        buttonTwoDrawnID = 1;
                        buttonCount++;
                    }
                    else if(buttonTwoID == 2){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageBrown];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageBrownSelected];
                            firstButtonColour = @"brown";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageBrown];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageBrownSelected];
                            secondButtonColour = @"brown";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageBrown];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageBrownSelected];
                            thirdButtonColour = @"brown";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageBrown];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageBrownSelected];
                            fourthButtonColour = @"brown";
                        }
                        buttonTwoDrawnID = 1;
                        buttonCount++;
                    }
                    else if(buttonTwoID == 3){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageGold];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageGoldSelected];
                            firstButtonColour = @"gold";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageGold];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageGoldSelected];
                            secondButtonColour = @"gold";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageGold];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageGoldSelected];
                            thirdButtonColour = @"gold";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageGold];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageGoldSelected];
                            fourthButtonColour = @"gold";
                        }
                        buttonTwoDrawnID = 1;
                        buttonCount++;
                    }
                    else if(buttonTwoID == 4){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageGreen];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageGreenSelected];
                            firstButtonColour = @"green";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageGreen];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageGreenSelected];
                            secondButtonColour = @"green";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageGreen];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageGreenSelected];
                            thirdButtonColour = @"green";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageGreen];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageGreenSelected];
                            fourthButtonColour = @"green";
                        }
                        buttonTwoDrawnID = 1;
                        buttonCount++;
                    }
                    else if(buttonTwoID == 5){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageRed];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageRedSelected];
                            firstButtonColour = @"red";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageRed];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageRedSelected];
                            secondButtonColour = @"red";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageRed];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageRedSelected];
                            thirdButtonColour = @"red";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageRed];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageRedSelected];
                            fourthButtonColour = @"red";
                        }
                        buttonTwoDrawnID = 1;
                        buttonCount++;
                    }
                    else if(buttonTwoID == 6){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageWhite];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageWhiteSelected];
                            firstButtonColour = @"white";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageWhite];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageWhiteSelected];
                            secondButtonColour = @"white";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageWhite];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageWhiteSelected];
                            thirdButtonColour = @"white";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageWhite];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageWhiteSelected];
                            fourthButtonColour = @"white";
                        }
                        buttonTwoDrawnID = 1;
                        buttonCount++;
                    }
                }
            }
            else if(colourButtonRandomNumber == 2){
                if(buttonThreeDrawnID != 2){
                    if(buttonThreeID == 0){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageBlack];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageBlackSelected];
                            firstButtonColour = @"black";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageBlack];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageBlackSelected];
                            secondButtonColour = @"black";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageBlack];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageBlackSelected];
                            thirdButtonColour = @"black";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageBlack];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageBlackSelected];
                            fourthButtonColour = @"black";
                        }
                        buttonThreeDrawnID = 2;
                        buttonCount++;
                    }
                    else if(buttonThreeID == 1){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageBlue];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageBlueSelected];
                            firstButtonColour = @"blue";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageBlue];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageBlueSelected];
                            secondButtonColour = @"blue";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageBlue];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageBlueSelected];
                            thirdButtonColour = @"blue";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageBlue];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageBlueSelected];
                            fourthButtonColour = @"blue";
                        }
                        buttonThreeDrawnID = 2;
                        buttonCount++;
                    }
                    else if(buttonThreeID == 2){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageBrown];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageBrownSelected];
                            firstButtonColour = @"brown";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageBrown];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageBrownSelected];
                            secondButtonColour = @"brown";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageBrown];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageBrownSelected];
                            thirdButtonColour = @"brown";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageBrown];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageBrownSelected];
                            fourthButtonColour = @"brown";
                        }
                        buttonThreeDrawnID = 2;
                        buttonCount++;
                    }
                    else if(buttonThreeID == 3){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageGold];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageGoldSelected];
                            firstButtonColour = @"gold";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageGold];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageGoldSelected];
                            secondButtonColour = @"gold";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageGold];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageGoldSelected];
                            thirdButtonColour = @"gold";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageGold];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageGoldSelected];
                            fourthButtonColour = @"gold";
                        }
                        buttonThreeDrawnID = 2;
                        buttonCount++;
                    }
                    else if(buttonThreeID == 4){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageGreen];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageGreenSelected];
                            firstButtonColour = @"green";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageGreen];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageGreenSelected];
                            secondButtonColour = @"green";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageGreen];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageGreenSelected];
                            thirdButtonColour = @"green";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageGreen];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageGreenSelected];
                            fourthButtonColour = @"green";
                        }
                        buttonThreeDrawnID = 2;
                        buttonCount++;
                    }
                    else if(buttonThreeID == 5){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageRed];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageRedSelected];
                            firstButtonColour = @"red";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageRed];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageRedSelected];
                            secondButtonColour = @"red";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageRed];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageRedSelected];
                            thirdButtonColour = @"red";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageRed];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageRedSelected];
                            fourthButtonColour = @"red";
                        }
                        buttonThreeDrawnID = 2;
                        buttonCount++;
                    }
                    else if(buttonThreeID == 6){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageWhite];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageWhiteSelected];
                            firstButtonColour = @"white";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageWhite];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageWhiteSelected];
                            secondButtonColour = @"white";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageWhite];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageWhiteSelected];
                            thirdButtonColour = @"white";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageWhite];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageWhiteSelected];
                            fourthButtonColour = @"white";
                        }
                        buttonThreeDrawnID = 2;
                        buttonCount++;
                    }
                }
            }
            else if(colourButtonRandomNumber == 3){
                if(buttonFourDrawnID != 3){
                    if(buttonFourID == 0){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageBlack];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageBlackSelected];
                            firstButtonColour = @"black";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageBlack];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageBlackSelected];
                            secondButtonColour = @"black";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageBlack];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageBlackSelected];
                            thirdButtonColour = @"black";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageBlack];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageBlackSelected];
                            fourthButtonColour = @"black";
                        }
                        buttonFourDrawnID = 3;
                        buttonCount++;
                    }
                    else if(buttonFourID == 1){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageBlue];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageBlueSelected];
                            firstButtonColour = @"blue";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageBlue];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageBlueSelected];
                            secondButtonColour = @"blue";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageBlue];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageBlueSelected];
                            thirdButtonColour = @"blue";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageBlue];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageBlueSelected];
                            fourthButtonColour = @"blue";
                        }
                        buttonFourDrawnID = 3;
                        buttonCount++;
                    }
                    else if(buttonFourID == 2){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageBrown];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageBrownSelected];
                            firstButtonColour = @"brown";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageBrown];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageBrownSelected];
                            secondButtonColour = @"brown";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageBrown];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageBrownSelected];
                            thirdButtonColour = @"brown";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageBrown];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageBrownSelected];
                            fourthButtonColour = @"brown";
                        }
                        buttonFourDrawnID = 3;
                        buttonCount++;
                    }
                    else if(buttonFourID == 3){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageGold];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageGoldSelected];
                            firstButtonColour = @"gold";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageGold];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageGoldSelected];
                            secondButtonColour = @"gold";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageGold];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageGoldSelected];
                            thirdButtonColour = @"gold";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageGold];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageGoldSelected];
                            fourthButtonColour = @"gold";
                        }
                        buttonFourDrawnID = 3;
                        buttonCount++;
                    }
                    else if(buttonFourID == 4){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageGreen];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageGreenSelected];
                            firstButtonColour = @"green";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageGreen];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageGreenSelected];
                            secondButtonColour = @"green";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageGreen];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageGreenSelected];
                            thirdButtonColour = @"green";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageGreen];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageGreenSelected];
                            fourthButtonColour = @"green";
                        }
                        buttonFourDrawnID = 3;
                        buttonCount++;
                    }
                    else if(buttonFourID == 5){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageRed];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageRedSelected];
                            firstButtonColour = @"red";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageRed];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageRedSelected];
                            secondButtonColour = @"red";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageRed];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageRedSelected];
                            thirdButtonColour = @"red";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageRed];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageRedSelected];
                            fourthButtonColour = @"red";
                        }
                        buttonFourDrawnID = 3;
                        buttonCount++;
                    }
                    else if(buttonFourID == 6){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageWhite];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageWhiteSelected];
                            firstButtonColour = @"white";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageWhite];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageWhiteSelected];
                            secondButtonColour = @"white";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageWhite];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageWhiteSelected];
                            thirdButtonColour = @"white";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageWhite];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageWhiteSelected];
                            fourthButtonColour = @"white";
                        }
                        buttonFourDrawnID = 3;
                        buttonCount++;
                    }
                }
            }
        }
    }
    else if(colourAnswersGiven % 2 == 1){
        while(buttonCount < 4){
            colourButtonRandomNumber = ((arc4random() % (3-0+1)) + 0);
            if(colourButtonRandomNumber == 0){
                if(buttonOneDrawnID != 0){
                    if(buttonOneID == 0){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageBlack2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageBlackSelected2];
                            firstButtonColour = @"black";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageBlack2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageBlackSelected2];
                            secondButtonColour = @"black";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageBlack2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageBlackSelected2];
                            thirdButtonColour = @"black";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageBlack2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageBlackSelected2];
                            fourthButtonColour = @"black";
                        }
                        buttonOneDrawnID = 0;
                        buttonCount++;
                    }
                    else if(buttonOneID == 1){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageBlue2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageBlueSelected2];
                            firstButtonColour = @"blue";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageBlue2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageBlueSelected2];
                            secondButtonColour = @"blue";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageBlue2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageBlueSelected2];
                            thirdButtonColour = @"blue";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageBlue2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageBlueSelected2];
                            fourthButtonColour = @"blue";
                        }
                        buttonOneDrawnID = 0;
                        buttonCount++;
                    }
                    else if(buttonOneID == 2){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageBrown2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageBrownSelected2];
                            firstButtonColour = @"brown";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageBrown2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageBrownSelected2];
                            secondButtonColour = @"brown";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageBrown2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageBrownSelected2];
                            thirdButtonColour = @"brown";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageBrown2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageBrownSelected2];
                            fourthButtonColour = @"brown";
                        }
                        buttonOneDrawnID = 0;
                        buttonCount++;
                    }
                    else if(buttonOneID == 3){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageGold2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageGoldSelected2];
                            firstButtonColour = @"gold";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageGold2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageGoldSelected2];
                            secondButtonColour = @"gold";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageGold2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageGoldSelected2];
                            thirdButtonColour = @"gold";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageGold2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageGoldSelected2];
                            fourthButtonColour = @"gold";
                        }
                        buttonOneDrawnID = 0;
                        buttonCount++;
                    }
                    else if(buttonOneID == 4){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageGreen2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageGreenSelected2];
                            firstButtonColour = @"green";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageGreen2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageGreenSelected2];
                            secondButtonColour = @"green";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageGreen2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageGreenSelected2];
                            thirdButtonColour = @"green";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageGreen2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageGreenSelected2];
                            fourthButtonColour = @"green";
                        }
                        buttonOneDrawnID = 0;
                        buttonCount++;
                    }
                    else if(buttonOneID == 5){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageRed2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageRedSelected2];
                            firstButtonColour = @"red";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageRed2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageRedSelected2];
                            secondButtonColour = @"red";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageRed2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageRedSelected2];
                            thirdButtonColour = @"red";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageRed2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageRedSelected2];
                            fourthButtonColour = @"red";
                        }
                        buttonOneDrawnID = 0;
                        buttonCount++;
                    }
                    else if(buttonOneID == 6){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageWhite2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageWhiteSelected2];
                            firstButtonColour = @"white";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageWhite2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageWhiteSelected2];
                            secondButtonColour = @"white";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageWhite2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageWhiteSelected2];
                            thirdButtonColour = @"white";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageWhite2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageWhiteSelected2];
                            fourthButtonColour = @"white";
                        }
                        buttonOneDrawnID = 0;
                        buttonCount++;
                    }
                }
            }
            else if(colourButtonRandomNumber == 1){
                if(buttonTwoDrawnID != 1){
                    if(buttonTwoID == 0){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageBlack2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageBlackSelected2];
                            firstButtonColour = @"black";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageBlack2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageBlackSelected2];
                            secondButtonColour = @"black";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageBlack2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageBlackSelected2];
                            thirdButtonColour = @"black";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageBlack2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageBlackSelected2];
                            fourthButtonColour = @"black";
                        }
                        buttonTwoDrawnID = 1;
                        buttonCount++;
                    }
                    else if(buttonTwoID == 1){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageBlue2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageBlueSelected2];
                            firstButtonColour = @"blue";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageBlue2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageBlueSelected2];
                            secondButtonColour = @"blue";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageBlue2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageBlueSelected2];
                            thirdButtonColour = @"blue";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageBlue2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageBlueSelected2];
                            fourthButtonColour = @"blue";
                        }
                        buttonTwoDrawnID = 1;
                        buttonCount++;
                    }
                    else if(buttonTwoID == 2){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageBrown2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageBrownSelected2];
                            firstButtonColour = @"brown";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageBrown2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageBrownSelected2];
                            secondButtonColour = @"brown";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageBrown2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageBrownSelected2];
                            thirdButtonColour = @"brown";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageBrown2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageBrownSelected2];
                            fourthButtonColour = @"brown";
                        }
                        buttonTwoDrawnID = 1;
                        buttonCount++;
                    }
                    else if(buttonTwoID == 3){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageGold2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageGoldSelected2];
                            firstButtonColour = @"gold";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageGold2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageGoldSelected2];
                            secondButtonColour = @"gold";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageGold2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageGoldSelected2];
                            thirdButtonColour = @"gold";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageGold2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageGoldSelected2];
                            fourthButtonColour = @"gold";
                        }
                        buttonTwoDrawnID = 1;
                        buttonCount++;
                    }
                    else if(buttonTwoID == 4){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageGreen2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageGreenSelected2];
                            firstButtonColour = @"green";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageGreen2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageGreenSelected2];
                            secondButtonColour = @"green";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageGreen2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageGreenSelected2];
                            thirdButtonColour = @"green";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageGreen2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageGreenSelected2];
                            fourthButtonColour = @"green";
                        }
                        buttonTwoDrawnID = 1;
                        buttonCount++;
                    }
                    else if(buttonTwoID == 5){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageRed2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageRedSelected2];
                            firstButtonColour = @"red";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageRed2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageRedSelected2];
                            secondButtonColour = @"red";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageRed2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageRedSelected2];
                            thirdButtonColour = @"red";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageRed2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageRedSelected2];
                            fourthButtonColour = @"red";
                        }
                        buttonTwoDrawnID = 1;
                        buttonCount++;
                    }
                    else if(buttonTwoID == 6){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageWhite2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageWhiteSelected2];
                            firstButtonColour = @"white";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageWhite2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageWhiteSelected2];
                            secondButtonColour = @"white";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageWhite2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageWhiteSelected2];
                            thirdButtonColour = @"white";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageWhite2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageWhiteSelected2];
                            fourthButtonColour = @"white";
                        }
                        buttonTwoDrawnID = 1;
                        buttonCount++;
                    }
                }
            }
            else if(colourButtonRandomNumber == 2){
                if(buttonThreeDrawnID != 2){
                    if(buttonThreeID == 0){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageBlack2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageBlackSelected2];
                            firstButtonColour = @"black";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageBlack2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageBlackSelected2];
                            secondButtonColour = @"black";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageBlack2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageBlackSelected2];
                            thirdButtonColour = @"black";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageBlack2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageBlackSelected2];
                            fourthButtonColour = @"black";
                        }
                        buttonThreeDrawnID = 2;
                        buttonCount++;
                    }
                    else if(buttonThreeID == 1){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageBlue2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageBlueSelected2];
                            firstButtonColour = @"blue";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageBlue2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageBlueSelected2];
                            secondButtonColour = @"blue";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageBlue2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageBlueSelected2];
                            thirdButtonColour = @"blue";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageBlue2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageBlueSelected2];
                            fourthButtonColour = @"blue";
                        }
                        buttonThreeDrawnID = 2;
                        buttonCount++;
                    }
                    else if(buttonThreeID == 2){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageBrown2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageBrownSelected2];
                            firstButtonColour = @"brown";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageBrown2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageBrownSelected2];
                            secondButtonColour = @"brown";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageBrown2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageBrownSelected2];
                            thirdButtonColour = @"brown";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageBrown2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageBrownSelected2];
                            fourthButtonColour = @"brown";
                        }
                        buttonThreeDrawnID = 2;
                        buttonCount++;
                    }
                    else if(buttonThreeID == 3){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageGold2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageGoldSelected2];
                            firstButtonColour = @"gold";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageGold2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageGoldSelected2];
                            secondButtonColour = @"gold";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageGold2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageGoldSelected2];
                            thirdButtonColour = @"gold";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageGold2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageGoldSelected2];
                            fourthButtonColour = @"gold";
                        }
                        buttonThreeDrawnID = 2;
                        buttonCount++;
                    }
                    else if(buttonThreeID == 4){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageGreen2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageGreenSelected2];
                            firstButtonColour = @"green";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageGreen2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageGreenSelected2];
                            secondButtonColour = @"green";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageGreen2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageGreenSelected2];
                            thirdButtonColour = @"green";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageGreen2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageGreenSelected2];
                            fourthButtonColour = @"green";
                        }
                        buttonThreeDrawnID = 2;
                        buttonCount++;
                    }
                    else if(buttonThreeID == 5){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageRed2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageRedSelected2];
                            firstButtonColour = @"red";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageRed2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageRedSelected2];
                            secondButtonColour = @"red";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageRed2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageRedSelected2];
                            thirdButtonColour = @"red";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageRed2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageRedSelected2];
                            fourthButtonColour = @"red";
                        }
                        buttonThreeDrawnID = 2;
                        buttonCount++;
                    }
                    else if(buttonThreeID == 6){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageWhite2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageWhiteSelected2];
                            firstButtonColour = @"white";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageWhite2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageWhiteSelected2];
                            secondButtonColour = @"white";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageWhite2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageWhiteSelected2];
                            thirdButtonColour = @"white";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageWhite2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageWhiteSelected2];
                            fourthButtonColour = @"white";
                        }
                        buttonThreeDrawnID = 2;
                        buttonCount++;
                    }
                }
            }
            else if(colourButtonRandomNumber == 3){
                if(buttonFourDrawnID != 3){
                    if(buttonFourID == 0){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageBlack2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageBlackSelected2];
                            firstButtonColour = @"black";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageBlack2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageBlackSelected2];
                            secondButtonColour = @"black";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageBlack2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageBlackSelected2];
                            thirdButtonColour = @"black";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageBlack2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageBlackSelected2];
                            fourthButtonColour = @"black";
                        }
                        buttonFourDrawnID = 3;
                        buttonCount++;
                    }
                    else if(buttonFourID == 1){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageBlue2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageBlueSelected2];
                            firstButtonColour = @"blue";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageBlue2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageBlueSelected2];
                            secondButtonColour = @"blue";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageBlue2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageBlueSelected2];
                            thirdButtonColour = @"blue";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageBlue2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageBlueSelected2];
                            fourthButtonColour = @"blue";
                        }
                        buttonFourDrawnID = 3;
                        buttonCount++;
                    }
                    else if(buttonFourID == 2){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageBrown2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageBrownSelected2];
                            firstButtonColour = @"brown";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageBrown2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageBrownSelected2];
                            secondButtonColour = @"brown";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageBrown2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageBrownSelected2];
                            thirdButtonColour = @"brown";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageBrown2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageBrownSelected2];
                            fourthButtonColour = @"brown";
                        }
                        buttonFourDrawnID = 3;
                        buttonCount++;
                    }
                    else if(buttonFourID == 3){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageGold2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageGoldSelected2];
                            firstButtonColour = @"gold";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageGold2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageGoldSelected2];
                            secondButtonColour = @"gold";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageGold2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageGoldSelected2];
                            thirdButtonColour = @"gold";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageGold2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageGoldSelected2];
                            fourthButtonColour = @"gold";
                        }
                        buttonFourDrawnID = 3;
                        buttonCount++;
                    }
                    else if(buttonFourID == 4){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageGreen2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageGreenSelected2];
                            firstButtonColour = @"green";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageGreen2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageGreenSelected2];
                            secondButtonColour = @"green";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageGreen2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageGreenSelected2];
                            thirdButtonColour = @"green";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageGreen2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageGreenSelected2];
                            fourthButtonColour = @"green";
                        }
                        buttonFourDrawnID = 3;
                        buttonCount++;
                    }
                    else if(buttonFourID == 5){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageRed2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageRedSelected2];
                            firstButtonColour = @"red";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageRed2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageRedSelected2];
                            secondButtonColour = @"red";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageRed2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageRedSelected2];
                            thirdButtonColour = @"red";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageRed2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageRedSelected2];
                            fourthButtonColour = @"red";
                        }
                        buttonFourDrawnID = 3;
                        buttonCount++;
                    }
                    else if(buttonFourID == 6){
                        if(buttonCount == 0){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setNormalImage: colourButtonImageWhite2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 101] setSelectedImage: colourButtonImageWhiteSelected2];
                            firstButtonColour = @"white";
                        }
                        else if(buttonCount == 1){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setNormalImage: colourButtonImageWhite2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 102] setSelectedImage: colourButtonImageWhiteSelected2];
                            secondButtonColour = @"white";
                        }
                        else if(buttonCount == 2){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setNormalImage: colourButtonImageWhite2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 103] setSelectedImage: colourButtonImageWhiteSelected2];
                            thirdButtonColour = @"white";
                        }
                        else if(buttonCount == 3){
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setNormalImage: colourButtonImageWhite2];
                            [(CCMenuItemSprite*)[colourButtonMenu getChildByTag: 104] setSelectedImage: colourButtonImageWhiteSelected2];
                            fourthButtonColour = @"white";
                        }
                        buttonFourDrawnID = 3;
                        buttonCount++;
                    }
                }
            }
        }
    }
}

-(void) onExit{
    [self unschedule:@selector(update:)];
    colourGameTime = 0;
    [[SimpleAudioEngine sharedEngine] stopBackgroundMusic];
    [super onExit];
}

- (void) dealloc{
    [colourScoreNumber0_1 release];
    [colourScoreNumber0_2 release];
    [colourScoreNumber0_3 release];
    [colourScoreNumber0_4 release];
    [colourScoreNumber0_5 release];
    [colourScoreNumber0_6 release];
    [colourScoreNumber1_1 release];
    [colourScoreNumber1_2 release];
    [colourScoreNumber1_3 release];
    [colourScoreNumber1_4 release];
    [colourScoreNumber1_5 release];
    [colourScoreNumber1_6 release];
    [colourScoreNumber2_1 release];
    [colourScoreNumber2_2 release];
    [colourScoreNumber2_3 release];
    [colourScoreNumber2_4 release];
    [colourScoreNumber2_5 release];
    [colourScoreNumber2_6 release];
    [colourScoreNumber3_1 release];
    [colourScoreNumber3_2 release];
    [colourScoreNumber3_3 release];
    [colourScoreNumber3_4 release];
    [colourScoreNumber3_5 release];
    [colourScoreNumber3_6 release];
    [colourScoreNumber4_1 release];
    [colourScoreNumber4_2 release];
    [colourScoreNumber4_3 release];
    [colourScoreNumber4_4 release];
    [colourScoreNumber4_5 release];
    [colourScoreNumber4_6 release];
    [colourScoreNumber5_1 release];
    [colourScoreNumber5_2 release];
    [colourScoreNumber5_3 release];
    [colourScoreNumber5_4 release];
    [colourScoreNumber5_5 release];
    [colourScoreNumber5_6 release];
    [colourScoreNumber6_1 release];
    [colourScoreNumber6_2 release];
    [colourScoreNumber6_3 release];
    [colourScoreNumber6_4 release];
    [colourScoreNumber6_5 release];
    [colourScoreNumber6_6 release];
    [colourScoreNumber7_1 release];
    [colourScoreNumber7_2 release];
    [colourScoreNumber7_3 release];
    [colourScoreNumber7_4 release];
    [colourScoreNumber7_5 release];
    [colourScoreNumber7_6 release];
    [colourScoreNumber8_1 release];
    [colourScoreNumber8_2 release];
    [colourScoreNumber8_3 release];
    [colourScoreNumber8_4 release];
    [colourScoreNumber8_5 release];
    [colourScoreNumber8_6 release];
    [colourScoreNumber9_1 release];
    [colourScoreNumber9_2 release];
    [colourScoreNumber9_3 release];
    [colourScoreNumber9_4 release];
    [colourScoreNumber9_5 release];
    [colourScoreNumber9_6 release];
    
    [colourWordImageBlackBlack release];
    [colourWordImageBlackBlue release];
    [colourWordImageBlackBrown release];
    [colourWordImageBlackGold release];
    [colourWordImageBlackGreen release];
    [colourWordImageBlackRed release];
    [colourWordImageBlackWhite release];
    [colourWordImageBlueBlack release];
    [colourWordImageBlueBlue release];
    [colourWordImageBlueBrown release];
    [colourWordImageBlueGold release];
    [colourWordImageBlueGreen release];
    [colourWordImageBlueRed release];
    [colourWordImageBlueWhite release];
    [colourWordImageBrownBlack release];
    [colourWordImageBrownBlue release];
    [colourWordImageBrownBrown release];
    [colourWordImageBrownGold release];
    [colourWordImageBrownGreen release];
    [colourWordImageBrownRed release];
    [colourWordImageBrownWhite release];
    [colourWordImageGoldBlack release];
    [colourWordImageGoldBlue release];
    [colourWordImageGoldBrown release];
    [colourWordImageGoldGold release];
    [colourWordImageGoldGreen release];
    [colourWordImageGoldRed release];
    [colourWordImageGoldWhite release];
    [colourWordImageGreenBlack release];
    [colourWordImageGreenBlue release];
    [colourWordImageGreenBrown release];
    [colourWordImageGreenGold release];
    [colourWordImageGreenGreen release];
    [colourWordImageGreenRed release];
    [colourWordImageGreenWhite release];
    [colourWordImageRedBlack release];
    [colourWordImageRedBlue release];
    [colourWordImageRedBrown release];
    [colourWordImageRedGold release];
    [colourWordImageRedGreen release];
    [colourWordImageRedRed release];
    [colourWordImageRedWhite release];
    [colourWordImageWhiteBlack release];
    [colourWordImageWhiteBlue release];
    [colourWordImageWhiteBrown release];
    [colourWordImageWhiteGold release];
    [colourWordImageWhiteGreen release];
    [colourWordImageWhiteRed release];
    [colourWordImageWhiteWhite release];
    
    [colourButtonImageBlack release];
    [colourButtonImageBlackSelected release];
    [colourButtonImageBlue release];
    [colourButtonImageBlueSelected release];
    [colourButtonImageBrown release];
    [colourButtonImageBrownSelected release];
    [colourButtonImageGold release];
    [colourButtonImageGoldSelected release];
    [colourButtonImageGreen release];
    [colourButtonImageGreenSelected release];
    [colourButtonImageRed release];
    [colourButtonImageRedSelected release];
    [colourButtonImageWhite release];
    [colourButtonImageWhiteSelected release];
    
    [colourButtonImageBlack2 release];
    [colourButtonImageBlackSelected2 release];
    [colourButtonImageBlue2 release];
    [colourButtonImageBlueSelected2 release];
    [colourButtonImageBrown2 release];
    [colourButtonImageBrownSelected2 release];
    [colourButtonImageGold2 release];
    [colourButtonImageGoldSelected2 release];
    [colourButtonImageGreen2 release];
    [colourButtonImageGreenSelected2 release];
    [colourButtonImageRed2 release];
    [colourButtonImageRedSelected2 release];
    [colourButtonImageWhite2 release];
    [colourButtonImageWhiteSelected2 release];
    
    [colourWordSprite release];
    [colourButtonSpriteOne release];
    [colourButtonSpriteTwo release];
    [colourButtonSpriteThree release];
    [colourButtonSpriteFour release];
    [colourButtonMenu release];
    
    [self unscheduleAllSelectors];
    [self removeAllChildrenWithCleanup:YES];
	[self release];
	[super dealloc];
}

@end
