//
//  GameFinish.m
//  JonatronJudgesAll
//
//  Created by Jonathan Herbst on 31/12/2012.
//  Copyright Herbtacular Games 2013. All rights reserved.
//

#import "GameFinish.h"
#import "MainMenu.h"
#import "EquationDiscombobulation.h"
#import "FastTapping.h"
#import "LexicalLinguine.h"
#import "ColourTypeMismatch.h"
#import "SimpleAudioEngine.h"

CCLayer *gameOverBackgroundLayer;
CCLayer *gameOverGraphicsLayer;
CCLayer *gameOverButtonLayer;

CCMenu *gameOverButtonMenu;
CCMenu *gameOverGraphicsMenu;

CCSprite *gameOverBackground;
CCMenuItemImage *gameOverFinish;
CCMenuItemImage *gameOverScore;
CCMenuItemImage *gameOverRank;
CCSprite *gameOverRatingDolphin;
CCSprite *gameOverRatingEinstein;
CCSprite *gameOverRatingFailure;
CCSprite *gameOverRatingGoldfish;
CCSprite *gameOverRatingPidgeon;
CCSprite *gameOverRatingPig;
CCSprite *gameOverRatingRat;

CCMenuItemSprite *gameOverRatingChoice;
CCMenuItemSprite *gameOverScoreDigitOne;
CCMenuItemSprite *gameOverScoreDigitTwo;
CCMenuItemSprite *gameOverScoreDigitThree;

CCSprite *gameOverNumber0_1;
CCSprite *gameOverNumber0_2;
CCSprite *gameOverNumber0_3;
CCSprite *gameOverNumber1_1;
CCSprite *gameOverNumber1_2;
CCSprite *gameOverNumber1_3;
CCSprite *gameOverNumber2_1;
CCSprite *gameOverNumber2_2;
CCSprite *gameOverNumber2_3;
CCSprite *gameOverNumber3_1;
CCSprite *gameOverNumber3_2;
CCSprite *gameOverNumber3_3;
CCSprite *gameOverNumber4_1;
CCSprite *gameOverNumber4_2;
CCSprite *gameOverNumber4_3;
CCSprite *gameOverNumber5_1;
CCSprite *gameOverNumber5_2;
CCSprite *gameOverNumber5_3;
CCSprite *gameOverNumber6_1;
CCSprite *gameOverNumber6_2;
CCSprite *gameOverNumber6_3;
CCSprite *gameOverNumber7_1;
CCSprite *gameOverNumber7_2;
CCSprite *gameOverNumber7_3;
CCSprite *gameOverNumber8_1;
CCSprite *gameOverNumber8_2;
CCSprite *gameOverNumber8_3;
CCSprite *gameOverNumber9_1;
CCSprite *gameOverNumber9_2;
CCSprite *gameOverNumber9_3;

CCMenuItemImage *gameOverRestartButton;
CCMenuItemImage *gameOverMenuButton;

ccTime gameOverGraphicsTimer = 0.0f;
BOOL isFinishGraphicDrawn = FALSE;
BOOL isScoreGraphicDrawn = FALSE;
BOOL isYourScoreDrawn = FALSE;
BOOL isRatingGraphicDrawn = FALSE;
BOOL isYourRatingDrawn = FALSE;
BOOL buttonMusicPlayed = FALSE;

int scoreToDraw = 0;
int gameOverInt = 0;

#pragma mark - GameFinish

@implementation GameFinish

+(CCScene *) scene{
    CCScene* finishScene = [CCScene node];
    
    gameOverBackgroundLayer = [GameFinish node];
    
    [finishScene addChild: gameOverBackgroundLayer];
    
    return finishScene;
}

-(void) onEnter{
    [self schedule:@selector(update:)];
    [super onEnter];
}

-(id) init{
    if((self = [super init])){
        gameOverBackground = [CCSprite spriteWithFile:@"MenuImages/blank_background.png"];
        gameOverBackground.position = ccp(240, 160);
        
        gameOverButtonLayer = [CCLayer node];
        gameOverGraphicsLayer = [CCLayer node];
        
        [self addChild: gameOverBackground];
        [self addChild: gameOverGraphicsLayer];
        [self addChild: gameOverButtonLayer];
        [self initGameScoreGraphics];
        [self initGameFinishGraphics];
        [self initGameFinishButtons];
    }
    
    gameOverGraphicsTimer = 0.0f;
    isFinishGraphicDrawn = FALSE;
    isScoreGraphicDrawn = FALSE;
    isYourScoreDrawn = FALSE;
    isRatingGraphicDrawn = FALSE;
    isYourRatingDrawn = FALSE;
    scoreToDraw = 0;
    gameOverInt = 0;
    buttonMusicPlayed = FALSE;
    
    return self;
}

-(void) update:(ccTime) dt{
    gameOverGraphicsTimer += dt;
    
    if(gameOverGraphicsTimer > 2.0f  && !isFinishGraphicDrawn){
        gameOverFinish.position = ccp(0, 120);
        [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/game_finish_graphic_noise.mp3"];
        isFinishGraphicDrawn = TRUE;
    }
    else if(gameOverGraphicsTimer > 2.5f && !isScoreGraphicDrawn){
        gameOverScore.position = ccp(-50, 60);
        [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/game_finish_graphic_noise.mp3"];
        isScoreGraphicDrawn = TRUE;
    }
    else if(gameOverGraphicsTimer > 3.0f && !isYourScoreDrawn){
        [self drawScoreSpriteGraphics];
        [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/game_finish_graphic_noise.mp3"];
        isYourScoreDrawn = TRUE;
    }
    else if(gameOverGraphicsTimer > 3.5f && !isRatingGraphicDrawn){
        gameOverRank.position = ccp(0, 0);
        [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/game_finish_graphic_noise.mp3"];
        isRatingGraphicDrawn = TRUE;
    }
    else if(gameOverGraphicsTimer > 4.0f && !isYourRatingDrawn){
        [self drawRatingGraphic];
        [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/game_finish_graphic_noise.mp3"];
        isYourRatingDrawn = TRUE;
    }
    else if(gameOverGraphicsTimer > 5.0f){
        if(!buttonMusicPlayed){
            [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/game_finish_buttons_appear.mp3"];
            buttonMusicPlayed = TRUE;
        }
        gameOverButtonLayer.position = ccp(0, 0);
    }
}

-(void) initGameFinishGraphics{
    gameOverFinish = [[CCMenuItemImage itemWithNormalImage:@"GameOverElements/game_over_finish.png"
                                            selectedImage:NULL]retain];
    
    gameOverScore = [[CCMenuItemImage itemWithNormalImage:@"GameOverElements/game_over_score.png"
                                           selectedImage:NULL]retain];
    
    gameOverRank = [[CCMenuItemImage itemWithNormalImage:@"GameOverElements/game_over_your_rank.png"
                                          selectedImage:NULL]retain];
    
    gameOverRatingDolphin = [[CCSprite spriteWithFile:@"GameOverElements/game_over_rating_dolphin.png"]retain];
    gameOverRatingEinstein = [[CCSprite spriteWithFile:@"GameOverElements/game_over_rating_einstein.png"]retain];
    gameOverRatingFailure = [[CCSprite spriteWithFile:@"GameOverElements/game_over_rating_failure.png"]retain];
    gameOverRatingGoldfish = [[CCSprite spriteWithFile:@"GameOverElements/game_over_rating_goldfish.png"]retain];
    gameOverRatingPidgeon = [[CCSprite spriteWithFile:@"GameOverElements/game_over_rating_pidgeon.png"]retain];
    gameOverRatingRat = [[CCSprite spriteWithFile:@"GameOverElements/game_over_rating_rat.png"]retain];
    gameOverRatingPig = [[CCSprite spriteWithFile:@"GameOverElements/game_over_rating_pig.png"]retain];
    
    gameOverRatingChoice = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                   selectedSprite:NULL]retain];
    
    gameOverGraphicsMenu = [CCMenu menuWithItems: gameOverFinish, gameOverScore, gameOverScoreDigitOne, gameOverScoreDigitTwo, gameOverScoreDigitThree, gameOverRank, gameOverRatingChoice, nil];
    
    gameOverFinish.position = ccp(1000, 1000);
    gameOverScore.position = ccp(1000, 1000);
    gameOverRank.position = ccp(1000, 1000);
    gameOverRatingChoice.position = ccp(0, -60);
    
    [gameOverGraphicsLayer addChild: gameOverGraphicsMenu];
    gameOverGraphicsLayer.position = ccp(0, 0);
}

-(void) initGameFinishButtons{
    gameOverMenuButton = [CCMenuItemImage itemWithNormalImage:@"MenuButtons/return_to_menu_button.png"
                                                selectedImage:@"MenuButtons/return_to_menu_button_selected.png"
                                                       target:self
                                                     selector:@selector(menuPressed:)];
    
    gameOverRestartButton = [CCMenuItemImage itemWithNormalImage:@"MenuButtons/restart_button.png"
                                                   selectedImage:@"MenuButtons/restart_button_selected.png"
                                                          target:self
                                                        selector:@selector(restartPressed:)];
    
    gameOverButtonMenu = [CCMenu menuWithItems: gameOverRestartButton, gameOverMenuButton, nil];
    [gameOverButtonMenu alignItemsHorizontallyWithPadding:230];
    gameOverButtonMenu.position = ccp(240, 40);
    
    [gameOverButtonLayer addChild: gameOverButtonMenu];
    
    gameOverButtonLayer.position = ccp(1000, 1000);
}

-(void) initGameScoreGraphics{
    gameOverNumber0_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_0_60px.png"]retain];
    gameOverNumber0_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_0_60px.png"]retain];
    gameOverNumber0_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_0_60px.png"]retain];
    gameOverNumber1_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_1_60px.png"]retain];
    gameOverNumber1_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_1_60px.png"]retain];
    gameOverNumber1_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_1_60px.png"]retain];
    gameOverNumber2_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_2_60px.png"]retain];
    gameOverNumber2_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_2_60px.png"]retain];
    gameOverNumber2_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_2_60px.png"]retain];
    gameOverNumber3_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_3_60px.png"]retain];
    gameOverNumber3_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_3_60px.png"]retain];
    gameOverNumber3_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_3_60px.png"]retain];
    gameOverNumber4_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_4_60px.png"]retain];
    gameOverNumber4_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_4_60px.png"]retain];
    gameOverNumber4_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_4_60px.png"]retain];
    gameOverNumber5_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_5_60px.png"]retain];
    gameOverNumber5_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_5_60px.png"]retain];
    gameOverNumber5_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_5_60px.png"]retain];
    gameOverNumber6_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_6_60px.png"]retain];
    gameOverNumber6_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_6_60px.png"]retain];
    gameOverNumber6_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_6_60px.png"]retain];
    gameOverNumber7_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_7_60px.png"]retain];
    gameOverNumber7_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_7_60px.png"]retain];
    gameOverNumber7_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_7_60px.png"]retain];
    gameOverNumber8_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_8_60px.png"]retain];
    gameOverNumber8_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_8_60px.png"]retain];
    gameOverNumber8_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_8_60px.png"]retain];
    gameOverNumber9_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_9_60px.png"]retain];
    gameOverNumber9_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_9_60px.png"]retain];
    gameOverNumber9_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_9_60px.png"]retain];
    
    gameOverScoreDigitOne = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                    selectedSprite:NULL]retain];
    
    gameOverScoreDigitTwo = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                     selectedSprite:NULL]retain];
    
    gameOverScoreDigitThree = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                     selectedSprite:NULL]retain];
    
    gameOverScoreDigitOne.position = ccp(100, 60);
    gameOverScoreDigitTwo.position = ccp(130, 60);
    gameOverScoreDigitThree.position = ccp(160, 60);
    
}

-(void) drawScoreSpriteGraphics{
    if([[NSUserDefaults standardUserDefaults] integerForKey:@"gameID"] == 0){
        //EQUATION
        scoreToDraw = [[NSUserDefaults standardUserDefaults] integerForKey:@"eScoreNew"];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"gameID"] == 1){
        //TAPPING
        scoreToDraw = [[NSUserDefaults standardUserDefaults] integerForKey:@"fScoreNew"];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"gameID"] == 2){
        //COLOUR
        scoreToDraw = [[NSUserDefaults standardUserDefaults] integerForKey:@"cScoreNew"];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"gameID"] == 3){
        //LEXICAL
        scoreToDraw = [[NSUserDefaults standardUserDefaults] integerForKey:@"lScoreNew"];
    }
    
    gameOverInt = scoreToDraw;
    
    //COMPUTE SCORE TO DRAW
    if(scoreToDraw <= 9){
        if(scoreToDraw == 0){
            [gameOverScoreDigitThree setNormalImage:gameOverNumber0_3];
        }
        else if(scoreToDraw == 1){
            [gameOverScoreDigitThree setNormalImage:gameOverNumber1_3];
        }
        else if(scoreToDraw == 2){
            [gameOverScoreDigitThree setNormalImage:gameOverNumber2_3];
        }
        else if(scoreToDraw == 3){
            [gameOverScoreDigitThree setNormalImage:gameOverNumber3_3];
        }
        else if(scoreToDraw == 4){
            [gameOverScoreDigitThree setNormalImage:gameOverNumber4_3];
        }
        else if(scoreToDraw == 5){
            [gameOverScoreDigitThree setNormalImage:gameOverNumber5_3];
        }
        else if(scoreToDraw == 6){
            [gameOverScoreDigitThree setNormalImage:gameOverNumber6_3];
        }
        else if(scoreToDraw == 7){
            [gameOverScoreDigitThree setNormalImage:gameOverNumber7_3];
        }
        else if(scoreToDraw == 8){
            [gameOverScoreDigitThree setNormalImage:gameOverNumber8_3];
        }
        else if(scoreToDraw == 9){
            [gameOverScoreDigitThree setNormalImage:gameOverNumber9_3];
        }
        
        [gameOverScoreDigitOne setNormalImage:gameOverNumber0_1];
        [gameOverScoreDigitTwo setNormalImage:gameOverNumber0_2];
    }
    else if(scoreToDraw >= 10 && scoreToDraw <= 99){
        int lSD = gameOverInt % 10;
        if(lSD == 0){
            [gameOverScoreDigitThree setNormalImage:gameOverNumber0_3];
        }
        else if(lSD == 1){
            [gameOverScoreDigitThree setNormalImage:gameOverNumber1_3];
        }
        else if(lSD == 2){
            [gameOverScoreDigitThree setNormalImage:gameOverNumber2_3];
        }
        else if(lSD == 3){
            [gameOverScoreDigitThree setNormalImage:gameOverNumber3_3];
        }
        else if(lSD == 4){
            [gameOverScoreDigitThree setNormalImage:gameOverNumber4_3];
        }
        else if(lSD == 5){
            [gameOverScoreDigitThree setNormalImage:gameOverNumber5_3];
        }
        else if(lSD == 6){
            [gameOverScoreDigitThree setNormalImage:gameOverNumber6_3];
        }
        else if(lSD == 7){
            [gameOverScoreDigitThree setNormalImage:gameOverNumber7_3];
        }
        else if(lSD == 8){
            [gameOverScoreDigitThree setNormalImage:gameOverNumber8_3];
        }
        else if(lSD == 9){
            [gameOverScoreDigitThree setNormalImage:gameOverNumber9_3];
        }
        
        if(scoreToDraw >= 10 && scoreToDraw <= 19){
            [gameOverScoreDigitTwo setNormalImage:gameOverNumber1_2];
        }
        else if(scoreToDraw >= 20 && scoreToDraw <= 29){
            [gameOverScoreDigitTwo setNormalImage:gameOverNumber2_2];
        }
        else if(scoreToDraw >= 30 && scoreToDraw <= 39){
            [gameOverScoreDigitTwo setNormalImage:gameOverNumber3_2];
        }
        else if(scoreToDraw >= 40 && scoreToDraw <= 49){
            [gameOverScoreDigitTwo setNormalImage:gameOverNumber4_2];
        }
        else if(scoreToDraw >= 50 && scoreToDraw <= 59){
            [gameOverScoreDigitTwo setNormalImage:gameOverNumber5_2];
        }
        else if(scoreToDraw >= 60 && scoreToDraw <= 69){
            [gameOverScoreDigitTwo setNormalImage:gameOverNumber6_2];
        }
        else if(scoreToDraw >= 70 && scoreToDraw <= 79){
            [gameOverScoreDigitTwo setNormalImage:gameOverNumber7_2];
        }
        else if(scoreToDraw >= 80 && scoreToDraw <= 89){
            [gameOverScoreDigitTwo setNormalImage:gameOverNumber8_2];
        }
        else if(scoreToDraw >= 90 && scoreToDraw <= 99){
            [gameOverScoreDigitTwo setNormalImage:gameOverNumber9_2];
        }
        [gameOverScoreDigitOne setNormalImage:gameOverNumber0_1];
    }
    else if(scoreToDraw >= 100 && scoreToDraw <= 999){
        int gameOverCount = 0;
        while(gameOverCount < 2){
            int lSDS = gameOverInt % 10;
            if(gameOverCount == 0){
                if(lSDS == 0){
                    [gameOverScoreDigitThree setNormalImage:gameOverNumber0_3];
                }
                else if(lSDS == 1){
                    [gameOverScoreDigitThree setNormalImage:gameOverNumber1_3];
                }
                else if(lSDS == 2){
                    [gameOverScoreDigitThree setNormalImage:gameOverNumber2_3];
                }
                else if(lSDS == 3){
                    [gameOverScoreDigitThree setNormalImage:gameOverNumber3_3];
                }
                else if(lSDS == 4){
                    [gameOverScoreDigitThree setNormalImage:gameOverNumber4_3];
                }
                else if(lSDS == 5){
                    [gameOverScoreDigitThree setNormalImage:gameOverNumber5_3];
                }
                else if(lSDS == 6){
                    [gameOverScoreDigitThree setNormalImage:gameOverNumber6_3];
                }
                else if(lSDS == 7){
                    [gameOverScoreDigitThree setNormalImage:gameOverNumber7_3];
                }
                else if(lSDS == 8){
                    [gameOverScoreDigitThree setNormalImage:gameOverNumber8_3];
                }
                else if(lSDS == 9){
                    [gameOverScoreDigitThree setNormalImage:gameOverNumber9_3];
                }
            }
            else if(gameOverCount == 1){
                if(lSDS == 0){
                    [gameOverScoreDigitTwo setNormalImage:gameOverNumber0_2];
                }
                else if(lSDS == 1){
                    [gameOverScoreDigitTwo setNormalImage:gameOverNumber1_2];
                }
                else if(lSDS == 2){
                    [gameOverScoreDigitTwo setNormalImage:gameOverNumber2_2];
                }
                else if(lSDS == 3){
                    [gameOverScoreDigitTwo setNormalImage:gameOverNumber3_2];
                }
                else if(lSDS == 4){
                    [gameOverScoreDigitTwo setNormalImage:gameOverNumber4_2];
                }
                else if(lSDS == 5){
                    [gameOverScoreDigitTwo setNormalImage:gameOverNumber5_2];
                }
                else if(lSDS == 6){
                    [gameOverScoreDigitTwo setNormalImage:gameOverNumber6_2];
                }
                else if(lSDS == 7){
                    [gameOverScoreDigitTwo setNormalImage:gameOverNumber7_2];
                }
                else if(lSDS == 8){
                    [gameOverScoreDigitTwo setNormalImage:gameOverNumber8_2];
                }
                else if(lSDS == 9){
                    [gameOverScoreDigitTwo setNormalImage:gameOverNumber9_2];
                }
            }
            gameOverCount++;
            gameOverInt /= 10;
        }
        if(scoreToDraw >= 100 && scoreToDraw <= 199){
            [gameOverScoreDigitOne setNormalImage:gameOverNumber1_1];
        }
        else if(scoreToDraw >= 200 && scoreToDraw <= 299){
            [gameOverScoreDigitOne setNormalImage:gameOverNumber2_1];
        }
        else if(scoreToDraw >= 300 && scoreToDraw <= 399){
            [gameOverScoreDigitOne setNormalImage:gameOverNumber3_1];
        }
        else if(scoreToDraw >= 400 && scoreToDraw <= 499){
            [gameOverScoreDigitOne setNormalImage:gameOverNumber4_1];
        }
        else if(scoreToDraw >= 500 && scoreToDraw <= 599){
            [gameOverScoreDigitOne setNormalImage:gameOverNumber5_1];
        }
        else if(scoreToDraw >= 600 && scoreToDraw <= 699){
            [gameOverScoreDigitOne setNormalImage:gameOverNumber6_1];
        }
        else if(scoreToDraw >= 700 && scoreToDraw <= 799){
            [gameOverScoreDigitOne setNormalImage:gameOverNumber7_1];
        }
        else if(scoreToDraw >= 800 && scoreToDraw <= 899){
            [gameOverScoreDigitOne setNormalImage:gameOverNumber8_1];
        }
        else if(scoreToDraw >= 900 && scoreToDraw <= 999){
            [gameOverScoreDigitOne setNormalImage:gameOverNumber9_1];
        }
    }
    else if(scoreToDraw <= 0){
        [gameOverScoreDigitOne setNormalImage:gameOverNumber0_1];
        [gameOverScoreDigitTwo setNormalImage:gameOverNumber0_2];
        [gameOverScoreDigitThree setNormalImage:gameOverNumber0_3];
    }
}

-(void) drawRatingGraphic{
    if([[NSUserDefaults standardUserDefaults] integerForKey:@"gameID"] == 0){
        //EQUATION
        if(scoreToDraw <= 10){
            [gameOverRatingChoice setNormalImage:gameOverRatingFailure];
        }
        else if(scoreToDraw >= 10 && scoreToDraw <= 25){
            [gameOverRatingChoice setNormalImage:gameOverRatingGoldfish];
        }
        else if(scoreToDraw >= 25 && scoreToDraw <= 50){
            [gameOverRatingChoice setNormalImage:gameOverRatingPidgeon];
        }
        else if(scoreToDraw >= 50 && scoreToDraw <= 75){
            [gameOverRatingChoice setNormalImage:gameOverRatingRat];
        }
        else if(scoreToDraw >= 75 && scoreToDraw <= 100){
            [gameOverRatingChoice setNormalImage:gameOverRatingPig];
        }
        else if(scoreToDraw >= 100 && scoreToDraw <= 125){
            [gameOverRatingChoice setNormalImage:gameOverRatingDolphin];
        }
        else if(scoreToDraw >= 125){
            [gameOverRatingChoice setNormalImage:gameOverRatingEinstein];
        }
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"gameID"] == 1){
        //TAPPING
        if(scoreToDraw <= 10){
            [gameOverRatingChoice setNormalImage:gameOverRatingFailure];
        }
        else if(scoreToDraw >= 10 && scoreToDraw <= 50){
            [gameOverRatingChoice setNormalImage:gameOverRatingGoldfish];
        }
        else if(scoreToDraw >= 50 && scoreToDraw <= 150){
            [gameOverRatingChoice setNormalImage:gameOverRatingPidgeon];
        }
        else if(scoreToDraw >= 150 && scoreToDraw <= 250){
            [gameOverRatingChoice setNormalImage:gameOverRatingRat];
        }
        else if(scoreToDraw >= 250 && scoreToDraw <= 350){
            [gameOverRatingChoice setNormalImage:gameOverRatingPig];
        }
        else if(scoreToDraw >= 350 && scoreToDraw <= 450){
            [gameOverRatingChoice setNormalImage:gameOverRatingDolphin];
        }
        else if(scoreToDraw >= 450){
            [gameOverRatingChoice setNormalImage:gameOverRatingEinstein];
        }
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"gameID"] == 2){
        //COLOUR
        if(scoreToDraw <= 10){
            [gameOverRatingChoice setNormalImage:gameOverRatingFailure];
        }
        else if(scoreToDraw >= 10 && scoreToDraw <= 50){
            [gameOverRatingChoice setNormalImage:gameOverRatingGoldfish];
        }
        else if(scoreToDraw >= 50 && scoreToDraw <= 125){
            [gameOverRatingChoice setNormalImage:gameOverRatingPidgeon];
        }
        else if(scoreToDraw >= 125 && scoreToDraw <= 200){
            [gameOverRatingChoice setNormalImage:gameOverRatingRat];
        }
        else if(scoreToDraw >= 200 && scoreToDraw <= 250){
            [gameOverRatingChoice setNormalImage:gameOverRatingPig];
        }
        else if(scoreToDraw >= 250 && scoreToDraw <= 350){
            [gameOverRatingChoice setNormalImage:gameOverRatingDolphin];
        }
        else if(scoreToDraw >= 350){
            [gameOverRatingChoice setNormalImage:gameOverRatingEinstein];
        }
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"gameID"] == 3){
        //LEXICAL
        if(scoreToDraw <= 10){
            [gameOverRatingChoice setNormalImage:gameOverRatingFailure];
        }
        else if(scoreToDraw >= 10 && scoreToDraw <= 30){
            [gameOverRatingChoice setNormalImage:gameOverRatingGoldfish];
        }
        else if(scoreToDraw >= 30 && scoreToDraw <= 75){
            [gameOverRatingChoice setNormalImage:gameOverRatingPidgeon];
        }
        else if(scoreToDraw >= 75 && scoreToDraw <= 125){
            [gameOverRatingChoice setNormalImage:gameOverRatingRat];
        }
        else if(scoreToDraw >= 125 && scoreToDraw <= 175){
            [gameOverRatingChoice setNormalImage:gameOverRatingPig];
        }
        else if(scoreToDraw >= 175 && scoreToDraw <= 225){
            [gameOverRatingChoice setNormalImage:gameOverRatingDolphin];
        }
        else if(scoreToDraw >= 225){
            [gameOverRatingChoice setNormalImage:gameOverRatingEinstein];
        }
    }
}

-(void) menuPressed:(id)sender{
    [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene: [MainMenu node]]];
}

-(void) restartPressed:(id)sender{
    //Replace scene with previously played mini-game
    if([[NSUserDefaults standardUserDefaults] integerForKey:@"gameID"] == 0){
        //EQUATION
        [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene: [EquationDiscombobulation node]]];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"gameID"] == 1){
        //TAPPING
        [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene: [FastTapping node]]];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"gameID"] == 2){
        //COLOUR
        [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene: [ColourTypeMismatch node]]];
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"gameID"] == 3){
        //LEXICAL
        [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene: [LexicalLinguine node]]];
    }
}

-(void) onExit{
    if([[NSUserDefaults standardUserDefaults] integerForKey:@"gameID"] == 0){
        //EQUATION
        if([[NSUserDefaults standardUserDefaults] integerForKey:@"eScoreNew"] >= [[NSUserDefaults standardUserDefaults] integerForKey:@"eScore"]){
            [[NSUserDefaults standardUserDefaults] setInteger:[[NSUserDefaults standardUserDefaults] integerForKey:@"eScoreNew"] forKey:@"eScore"];
        }
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"gameID"] == 1){
        //TAPPING
        if([[NSUserDefaults standardUserDefaults] integerForKey:@"fScoreNew"] >= [[NSUserDefaults standardUserDefaults] integerForKey:@"fScore"]){
            [[NSUserDefaults standardUserDefaults] setInteger:[[NSUserDefaults standardUserDefaults] integerForKey:@"fScoreNew"] forKey:@"fScore"];
        }
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"gameID"] == 2){
        //COLOUR
        if([[NSUserDefaults standardUserDefaults] integerForKey:@"cScoreNew"] >= [[NSUserDefaults standardUserDefaults] integerForKey:@"cScore"]){
            [[NSUserDefaults standardUserDefaults] setInteger:[[NSUserDefaults standardUserDefaults] integerForKey:@"cScoreNew"] forKey:@"cScore"];
        }
    }
    else if([[NSUserDefaults standardUserDefaults] integerForKey:@"gameID"] == 3){
        //LEXICAL
        if([[NSUserDefaults standardUserDefaults] integerForKey:@"lScoreNew"] >= [[NSUserDefaults standardUserDefaults] integerForKey:@"lScore"]){
            [[NSUserDefaults standardUserDefaults] setInteger:[[NSUserDefaults standardUserDefaults] integerForKey:@"lScoreNew"] forKey:@"lScore"];
        }
    }
    
    [[NSUserDefaults standardUserDefaults] synchronize];
    [self unschedule:@selector(update:)];
    [super onExit];
}

- (void) dealloc{
    [gameOverFinish release];
    [gameOverScore release];
    [gameOverRank release];
    [gameOverRatingDolphin release];
    [gameOverRatingEinstein release];
    [gameOverRatingFailure release];
    [gameOverRatingGoldfish release];
    [gameOverRatingPidgeon release];
    [gameOverRatingRat release];
    [gameOverRatingPig release];
    [gameOverRatingChoice release];
    
    [gameOverNumber0_1 release];
    [gameOverNumber0_2 release];
    [gameOverNumber0_3 release];
    [gameOverNumber1_1 release];
    [gameOverNumber1_2 release];
    [gameOverNumber1_3 release];
    [gameOverNumber2_1 release];
    [gameOverNumber2_2 release];
    [gameOverNumber2_3 release];
    [gameOverNumber3_1 release];
    [gameOverNumber3_2 release];
    [gameOverNumber3_3 release];
    [gameOverNumber4_1 release];
    [gameOverNumber4_2 release];
    [gameOverNumber4_3 release];
    [gameOverNumber5_1 release];
    [gameOverNumber5_2 release];
    [gameOverNumber5_3 release];
    [gameOverNumber6_1 release];
    [gameOverNumber6_2 release];
    [gameOverNumber6_3 release];
    [gameOverNumber7_1 release];
    [gameOverNumber7_2 release];
    [gameOverNumber7_3 release];
    [gameOverNumber8_1 release];
    [gameOverNumber8_2 release];
    [gameOverNumber8_3 release];
    [gameOverNumber9_1 release];
    [gameOverNumber9_2 release];
    [gameOverNumber9_3 release];
    [gameOverScoreDigitOne release];
    [gameOverScoreDigitTwo release];
    [gameOverScoreDigitThree release];
    
    [self unscheduleAllSelectors];
    [self release];
	[super dealloc];
}
 
@end
