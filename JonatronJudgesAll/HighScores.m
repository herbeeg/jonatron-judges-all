//
//  HighScores.m
//  JonatronJudgesAll
//
//  Created by Jonathan Herbst on 10/12/2012.
//  Copyright Herbtacular Games 2013. All rights reserved.
//

#import "HighScores.h"
#import "MainMenu.h"
#import "SimpleAudioEngine.h"

CCLayer *scoreBackgroundLayer;
CCLayer *scoreScreenButtons;

CCMenu *scoreMenu;
CCMenuItemImage *scoreBackButton;

CCSprite *highScoresBackground;
CCSprite *highScoresTitle;

CCMenu *scoreTextItemMenu;
CCMenuItemSprite *scoreTextEquation;
CCMenuItemSprite *scoreTextTapping;
CCMenuItemSprite *scoreTextColour;
CCMenuItemSprite *scoreTextLexical;

CCMenuItemSprite *scoreEquationSpriteOne;
CCMenuItemSprite *scoreEquationSpriteTwo;
CCMenuItemSprite *scoreEquationSpriteThree;
CCMenuItemSprite *scoreTappingSpriteOne;
CCMenuItemSprite *scoreTappingSpriteTwo;
CCMenuItemSprite *scoreTappingSpriteThree;
CCMenuItemSprite *scoreColourSpriteOne;
CCMenuItemSprite *scoreColourSpriteTwo;
CCMenuItemSprite *scoreColourSpriteThree;
CCMenuItemSprite *scoreLexicalSpriteOne;
CCMenuItemSprite *scoreLexicalSpriteTwo;
CCMenuItemSprite *scoreLexicalSpriteThree;

int score = 0;
int highScoreInt = 0;

#pragma mark - HighScores

@implementation HighScores

+(CCScene *) scene{
    CCScene *highScoreScene = [CCScene node];
    
    scoreBackgroundLayer = [HighScores node];
    
    [highScoreScene addChild: scoreBackgroundLayer];
    
    return highScoreScene;
}

-(id) init{
    if((self = [super init])){
        highScoresBackground = [CCSprite spriteWithFile: @"MenuImages/blank_background.png"];
        highScoresBackground.position = ccp(240, 160);
        
        highScoresTitle = [CCSprite spriteWithFile:@"HighScoreElements/high_scores_title_45px.png"];
        highScoresTitle.position = ccp(100, 304);
        
        [self addChild: highScoresBackground];
        [self addChild: highScoresTitle];
        [self drawScoreElements];
        [self loadScoreNumberImages];
    }
    
    score = 0;
    highScoreInt = 0;
    
    return self;
}

-(void) drawScoreElements{
    scoreBackButton = [CCMenuItemImage itemWithNormalImage:@"MenuButtons/back_button.png"
                                             selectedImage:@"MenuButtons/back_button_selected.png"
                                                    target:self
                                                  selector:@selector(backTouched:)];
    
    scoreTextEquation = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile: @"HighScoreElements/equation_word_scores.png"] selectedSprite:NULL];
    scoreTextTapping = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile: @"HighScoreElements/tapping_word_scores.png"] selectedSprite:NULL];
    scoreTextColour = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile: @"HighScoreElements/colour_word_scores.png"] selectedSprite:NULL];
    scoreTextLexical = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile: @"HighScoreElements/lexical_word_scores.png"] selectedSprite:NULL];
    
    scoreMenu = [CCMenu menuWithItems: scoreBackButton, nil];
    scoreBackButton.position = ccp(-175, -120);
    
    scoreTextEquation.position = ccp(-40, 100);
    scoreTextTapping.position = ccp(-40, 50);
    scoreTextColour.position = ccp(-40, 0);
    scoreTextLexical.position = ccp(-40, -50);
    
    scoreTextItemMenu = [CCMenu menuWithItems: scoreTextEquation, scoreTextTapping, scoreTextColour, scoreTextLexical, nil];
    
    [self addChild: scoreTextItemMenu];
    [self addChild: scoreMenu];
}

-(void) loadScoreNumberImages{
    //LOAD EQUATION SCORE
    score = [[NSUserDefaults standardUserDefaults] integerForKey:@"eScore"];
    highScoreInt = score;
    if(score <= 9){
        if(score == 0){
            scoreEquationSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_0_60px.png"] selectedSprite:NULL];
        }
        else if(score == 1){
            scoreEquationSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_1_60px.png"] selectedSprite:NULL];
        }
        else if(score == 2){
            scoreEquationSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_2_60px.png"] selectedSprite:NULL];
        }
        else if(score == 3){
            scoreEquationSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_3_60px.png"] selectedSprite:NULL];
        }
        else if(score == 4){
            scoreEquationSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_4_60px.png"] selectedSprite:NULL];
        }
        else if(score == 5){
            scoreEquationSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_5_60px.png"] selectedSprite:NULL];
        }
        else if(score == 6){
            scoreEquationSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_6_60px.png"] selectedSprite:NULL];
        }
        else if(score == 7){
            scoreEquationSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_7_60px.png"] selectedSprite:NULL];
        }
        else if(score == 8){
            scoreEquationSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_8_60px.png"] selectedSprite:NULL];
        }
        else if(score == 9){
            scoreEquationSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_9_60px.png"] selectedSprite:NULL];
        }
        scoreEquationSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_0_60px.png"] selectedSprite:NULL];
        scoreEquationSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_0_60px.png"] selectedSprite:NULL];
    }
    else if(score >= 10 && score <= 99){
        int lSD1 = highScoreInt % 10;
        if(lSD1 == 0){
            scoreEquationSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_0_60px.png"] selectedSprite:NULL];
        }
        else if(lSD1 == 1){
            scoreEquationSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_1_60px.png"] selectedSprite:NULL];
        }
        else if(lSD1 == 2){
            scoreEquationSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_2_60px.png"] selectedSprite:NULL];
        }
        else if(lSD1 == 3){
            scoreEquationSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_3_60px.png"] selectedSprite:NULL];
        }
        else if(lSD1 == 4){
            scoreEquationSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_4_60px.png"] selectedSprite:NULL];
        }
        else if(lSD1 == 5){
            scoreEquationSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_5_60px.png"] selectedSprite:NULL];
        }
        else if(lSD1 == 6){
            scoreEquationSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_6_60px.png"] selectedSprite:NULL];
        }
        else if(lSD1 == 7){
            scoreEquationSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_7_60px.png"] selectedSprite:NULL];
        }
        else if(lSD1 == 8){
            scoreEquationSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_8_60px.png"] selectedSprite:NULL];
        }
        else if(lSD1 == 9){
            scoreEquationSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_9_60px.png"] selectedSprite:NULL];
        }
        
        if(score >= 10 && score <= 19){
            scoreEquationSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_1_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 20 && score <= 29){
            scoreEquationSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_2_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 30 && score <= 39){
            scoreEquationSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_3_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 40 && score <= 49){
            scoreEquationSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_4_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 50 && score <= 59){
            scoreEquationSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_5_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 60 && score <= 69){
            scoreEquationSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_6_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 70 && score <= 79){
            scoreEquationSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_7_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 80 && score <= 89){
            scoreEquationSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_8_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 90 && score <= 99){
            scoreEquationSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_9_60px.png"] selectedSprite:NULL];
        }
        scoreEquationSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_0_60px.png"] selectedSprite:NULL];
    }
    else if(score >= 100 && score <= 999){
        int eqCount = 0;
        while(eqCount < 2){
            int lSD1 = highScoreInt % 10;
            if(eqCount == 0){
                if(lSD1 == 0){
                    scoreEquationSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_0_60px.png"] selectedSprite:NULL];
                }
                else if(lSD1 == 1){
                    scoreEquationSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_1_60px.png"] selectedSprite:NULL];
                }
                else if(lSD1 == 2){
                    scoreEquationSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_2_60px.png"] selectedSprite:NULL];
                }
                else if(lSD1 == 3){
                    scoreEquationSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_3_60px.png"] selectedSprite:NULL];
                }
                else if(lSD1 == 4){
                    scoreEquationSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_4_60px.png"] selectedSprite:NULL];
                }
                else if(lSD1 == 5){
                    scoreEquationSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_5_60px.png"] selectedSprite:NULL];
                }
                else if(lSD1 == 6){
                    scoreEquationSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_6_60px.png"] selectedSprite:NULL];
                }
                else if(lSD1 == 7){
                    scoreEquationSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_7_60px.png"] selectedSprite:NULL];
                }
                else if(lSD1 == 8){
                    scoreEquationSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_8_60px.png"] selectedSprite:NULL];
                }
                else if(lSD1 == 9){
                    scoreEquationSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_9_60px.png"] selectedSprite:NULL];
                }
            }
            else if(eqCount == 1){
                if(lSD1 == 0){
                    scoreEquationSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_0_60px.png"] selectedSprite:NULL];
                }
                else if(lSD1 == 1){
                    scoreEquationSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_1_60px.png"] selectedSprite:NULL];
                }
                else if(lSD1 == 2){
                    scoreEquationSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_2_60px.png"] selectedSprite:NULL];
                }
                else if(lSD1 == 3){
                    scoreEquationSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_3_60px.png"] selectedSprite:NULL];
                }
                else if(lSD1 == 4){
                    scoreEquationSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_4_60px.png"] selectedSprite:NULL];
                }
                else if(lSD1 == 5){
                    scoreEquationSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_5_60px.png"] selectedSprite:NULL];
                }
                else if(lSD1 == 6){
                    scoreEquationSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_6_60px.png"] selectedSprite:NULL];
                }
                else if(lSD1 == 7){
                    scoreEquationSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_7_60px.png"] selectedSprite:NULL];
                }
                else if(lSD1 == 8){
                    scoreEquationSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_8_60px.png"] selectedSprite:NULL];
                }
                else if(lSD1 == 9){
                    scoreEquationSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_9_60px.png"] selectedSprite:NULL];
                }
            }
            eqCount++;
            highScoreInt /= 10;
        }
        
        if(score >= 100 && score <= 199){
            scoreEquationSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_1_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 200 && score <= 299){
            scoreEquationSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_2_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 300 && score <= 399){
            scoreEquationSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_3_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 400 && score <= 499){
            scoreEquationSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_4_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 500 && score <= 599){
            scoreEquationSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_5_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 600 && score <= 699){
            scoreEquationSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_6_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 700 && score <= 799){
            scoreEquationSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_7_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 800 && score <= 899){
            scoreEquationSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_8_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 900 && score <= 999){
            scoreEquationSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_9_60px.png"] selectedSprite:NULL];
        }
        
    }
    
    scoreEquationSpriteOne.position = ccp(360, 260);
    scoreEquationSpriteTwo.position = ccp(390, 260);
    scoreEquationSpriteThree.position = ccp(420, 260);
    
    //LOAD FAST SCORE
    score = [[NSUserDefaults standardUserDefaults] integerForKey:@"fScore"];
    highScoreInt = score;
    if(score <= 9){
        if(score == 0){
            scoreTappingSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_0_60px.png"] selectedSprite:NULL];
        }
        else if(score == 1){
            scoreTappingSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_1_60px.png"] selectedSprite:NULL];
        }
        else if(score == 2){
            scoreTappingSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_2_60px.png"] selectedSprite:NULL];
        }
        else if(score == 3){
            scoreTappingSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_3_60px.png"] selectedSprite:NULL];
        }
        else if(score == 4){
            scoreTappingSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_4_60px.png"] selectedSprite:NULL];
        }
        else if(score == 5){
            scoreTappingSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_5_60px.png"] selectedSprite:NULL];
        }
        else if(score == 6){
            scoreTappingSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_6_60px.png"] selectedSprite:NULL];
        }
        else if(score == 7){
            scoreTappingSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_7_60px.png"] selectedSprite:NULL];
        }
        else if(score == 8){
            scoreTappingSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_8_60px.png"] selectedSprite:NULL];
        }
        else if(score == 9){
            scoreTappingSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_9_60px.png"] selectedSprite:NULL];
        }
        scoreTappingSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_0_60px.png"] selectedSprite:NULL];
        scoreTappingSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_0_60px.png"] selectedSprite:NULL];
    }
    else if(score >= 10 && score <= 99){
        int lSD2 = highScoreInt % 10;
        if(lSD2 == 0){
            scoreTappingSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_0_60px.png"] selectedSprite:NULL];
        }
        else if(lSD2 == 1){
            scoreTappingSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_1_60px.png"] selectedSprite:NULL];
        }
        else if(lSD2 == 2){
            scoreTappingSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_2_60px.png"] selectedSprite:NULL];
        }
        else if(lSD2 == 3){
            scoreTappingSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_3_60px.png"] selectedSprite:NULL];
        }
        else if(lSD2 == 4){
            scoreTappingSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_4_60px.png"] selectedSprite:NULL];
        }
        else if(lSD2 == 5){
            scoreTappingSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_5_60px.png"] selectedSprite:NULL];
        }
        else if(lSD2 == 6){
            scoreTappingSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_6_60px.png"] selectedSprite:NULL];
        }
        else if(lSD2 == 7){
            scoreTappingSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_7_60px.png"] selectedSprite:NULL];
        }
        else if(lSD2 == 8){
            scoreTappingSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_8_60px.png"] selectedSprite:NULL];
        }
        else if(lSD2 == 9){
            scoreTappingSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_9_60px.png"] selectedSprite:NULL];
        }
        
        if(score >= 10 && score <= 19){
            scoreTappingSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_1_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 20 && score <= 29){
            scoreTappingSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_2_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 30 && score <= 39){
            scoreTappingSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_3_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 40 && score <= 49){
            scoreTappingSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_4_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 50 && score <= 59){
            scoreTappingSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_5_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 60 && score <= 69){
            scoreTappingSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_6_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 70 && score <= 79){
            scoreTappingSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_7_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 80 && score <= 89){
            scoreTappingSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_8_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 90 && score <= 99){
            scoreTappingSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_9_60px.png"] selectedSprite:NULL];
        }
        scoreTappingSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_0_60px.png"] selectedSprite:NULL];
    }
    else if(score >= 100 && score <= 999){
        int fastCount = 0;
        while(fastCount < 2){
            int lSD2 = highScoreInt % 10;
            if(fastCount == 0){
                if(lSD2 == 0){
                    scoreTappingSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_0_60px.png"] selectedSprite:NULL];
                }
                else if(lSD2 == 1){
                    scoreTappingSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_1_60px.png"] selectedSprite:NULL];
                }
                else if(lSD2 == 2){
                    scoreTappingSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_2_60px.png"] selectedSprite:NULL];
                }
                else if(lSD2 == 3){
                    scoreTappingSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_3_60px.png"] selectedSprite:NULL];
                }
                else if(lSD2 == 4){
                    scoreTappingSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_4_60px.png"] selectedSprite:NULL];
                }
                else if(lSD2 == 5){
                    scoreTappingSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_5_60px.png"] selectedSprite:NULL];
                }
                else if(lSD2 == 6){
                    scoreTappingSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_6_60px.png"] selectedSprite:NULL];
                }
                else if(lSD2 == 7){
                    scoreTappingSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_7_60px.png"] selectedSprite:NULL];
                }
                else if(lSD2 == 8){
                    scoreTappingSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_8_60px.png"] selectedSprite:NULL];
                }
                else if(lSD2 == 9){
                    scoreTappingSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_9_60px.png"] selectedSprite:NULL];
                }
            }
            else if(fastCount == 1){
                if(lSD2 == 0){
                    scoreTappingSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_0_60px.png"] selectedSprite:NULL];
                }
                else if(lSD2 == 1){
                    scoreTappingSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_1_60px.png"] selectedSprite:NULL];
                }
                else if(lSD2 == 2){
                    scoreTappingSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_2_60px.png"] selectedSprite:NULL];
                }
                else if(lSD2 == 3){
                    scoreTappingSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_3_60px.png"] selectedSprite:NULL];
                }
                else if(lSD2 == 4){
                    scoreTappingSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_4_60px.png"] selectedSprite:NULL];
                }
                else if(lSD2 == 5){
                    scoreTappingSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_5_60px.png"] selectedSprite:NULL];
                }
                else if(lSD2 == 6){
                    scoreTappingSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_6_60px.png"] selectedSprite:NULL];
                }
                else if(lSD2 == 7){
                    scoreTappingSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_7_60px.png"] selectedSprite:NULL];
                }
                else if(lSD2 == 8){
                    scoreTappingSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_8_60px.png"] selectedSprite:NULL];
                }
                else if(lSD2 == 9){
                    scoreTappingSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_9_60px.png"] selectedSprite:NULL];
                }
            }
            fastCount++;
            highScoreInt /= 10;
        }
        
        if(score >= 100 && score <= 199){
            scoreTappingSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_1_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 200 && score <= 299){
            scoreTappingSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_2_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 300 && score <= 399){
            scoreTappingSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_3_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 400 && score <= 499){
            scoreTappingSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_4_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 500 && score <= 599){
            scoreTappingSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_5_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 600 && score <= 699){
            scoreTappingSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_6_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 700 && score <= 799){
            scoreTappingSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_7_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 800 && score <= 899){
            scoreTappingSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_8_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 900 && score <= 999){
            scoreTappingSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_9_60px.png"] selectedSprite:NULL];
        }
        
    }
    
    scoreTappingSpriteOne.position = ccp(360, 210);
    scoreTappingSpriteTwo.position = ccp(390, 210);
    scoreTappingSpriteThree.position = ccp(420, 210);
    
    //LOAD COLOUR SCORE
    score = [[NSUserDefaults standardUserDefaults] integerForKey:@"cScore"];
    highScoreInt = score;
    if(score <= 9){
        if(score == 0){
            scoreColourSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_0_60px.png"] selectedSprite:NULL];
        }
        else if(score == 1){
            scoreColourSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_1_60px.png"] selectedSprite:NULL];
        }
        else if(score == 2){
            scoreColourSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_2_60px.png"] selectedSprite:NULL];
        }
        else if(score == 3){
            scoreColourSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_3_60px.png"] selectedSprite:NULL];
        }
        else if(score == 4){
            scoreColourSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_4_60px.png"] selectedSprite:NULL];
        }
        else if(score == 5){
            scoreColourSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_5_60px.png"] selectedSprite:NULL];
        }
        else if(score == 6){
            scoreColourSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_6_60px.png"] selectedSprite:NULL];
        }
        else if(score == 7){
            scoreColourSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_7_60px.png"] selectedSprite:NULL];
        }
        else if(score == 8){
            scoreColourSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_8_60px.png"] selectedSprite:NULL];
        }
        else if(score == 9){
            scoreColourSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_9_60px.png"] selectedSprite:NULL];
        }
        scoreColourSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_0_60px.png"] selectedSprite:NULL];
        scoreColourSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_0_60px.png"] selectedSprite:NULL];
    }
    else if(score >= 10 && score <= 99){
        int lSD3 = highScoreInt % 10;
        if(lSD3 == 0){
            scoreColourSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_0_60px.png"] selectedSprite:NULL];
        }
        else if(lSD3 == 1){
            scoreColourSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_1_60px.png"] selectedSprite:NULL];
        }
        else if(lSD3 == 2){
            scoreColourSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_2_60px.png"] selectedSprite:NULL];
        }
        else if(lSD3 == 3){
            scoreColourSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_3_60px.png"] selectedSprite:NULL];
        }
        else if(lSD3 == 4){
            scoreColourSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_4_60px.png"] selectedSprite:NULL];
        }
        else if(lSD3 == 5){
            scoreColourSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_5_60px.png"] selectedSprite:NULL];
        }
        else if(lSD3 == 6){
            scoreColourSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_6_60px.png"] selectedSprite:NULL];
        }
        else if(lSD3 == 7){
            scoreColourSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_7_60px.png"] selectedSprite:NULL];
        }
        else if(lSD3 == 8){
            scoreColourSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_8_60px.png"] selectedSprite:NULL];
        }
        else if(lSD3 == 9){
            scoreColourSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_9_60px.png"] selectedSprite:NULL];
        }
        
        if(score >= 10 && score <= 19){
            scoreColourSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_1_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 20 && score <= 29){
            scoreColourSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_2_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 30 && score <= 39){
            scoreColourSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_3_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 40 && score <= 49){
            scoreColourSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_4_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 50 && score <= 59){
            scoreColourSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_5_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 60 && score <= 69){
            scoreColourSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_6_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 70 && score <= 79){
            scoreColourSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_7_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 80 && score <= 89){
            scoreColourSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_8_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 90 && score <= 99){
            scoreColourSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_9_60px.png"] selectedSprite:NULL];
        }
        scoreColourSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_0_60px.png"] selectedSprite:NULL];
    }
    else if(score >= 100 && score <= 999){
        int colourCount = 0;
        while(colourCount < 2){
            int lSD3 = highScoreInt % 10;
            if(colourCount == 0){
                if(lSD3 == 0){
                    scoreColourSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_0_60px.png"] selectedSprite:NULL];
                }
                else if(lSD3 == 1){
                    scoreColourSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_1_60px.png"] selectedSprite:NULL];
                }
                else if(lSD3 == 2){
                    scoreColourSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_2_60px.png"] selectedSprite:NULL];
                }
                else if(lSD3 == 3){
                    scoreColourSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_3_60px.png"] selectedSprite:NULL];
                }
                else if(lSD3 == 4){
                    scoreColourSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_4_60px.png"] selectedSprite:NULL];
                }
                else if(lSD3 == 5){
                    scoreColourSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_5_60px.png"] selectedSprite:NULL];
                }
                else if(lSD3 == 6){
                    scoreColourSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_6_60px.png"] selectedSprite:NULL];
                }
                else if(lSD3 == 7){
                    scoreColourSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_7_60px.png"] selectedSprite:NULL];
                }
                else if(lSD3 == 8){
                    scoreColourSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_8_60px.png"] selectedSprite:NULL];
                }
                else if(lSD3 == 9){
                    scoreColourSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_9_60px.png"] selectedSprite:NULL];
                }
            }
            else if(colourCount == 1){
                if(lSD3 == 0){
                    scoreColourSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_0_60px.png"] selectedSprite:NULL];
                }
                else if(lSD3 == 1){
                    scoreColourSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_1_60px.png"] selectedSprite:NULL];
                }
                else if(lSD3 == 2){
                    scoreColourSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_2_60px.png"] selectedSprite:NULL];
                }
                else if(lSD3 == 3){
                    scoreColourSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_3_60px.png"] selectedSprite:NULL];
                }
                else if(lSD3 == 4){
                    scoreColourSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_4_60px.png"] selectedSprite:NULL];
                }
                else if(lSD3 == 5){
                    scoreColourSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_5_60px.png"] selectedSprite:NULL];
                }
                else if(lSD3 == 6){
                    scoreColourSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_6_60px.png"] selectedSprite:NULL];
                }
                else if(lSD3 == 7){
                    scoreColourSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_7_60px.png"] selectedSprite:NULL];
                }
                else if(lSD3 == 8){
                    scoreColourSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_8_60px.png"] selectedSprite:NULL];
                }
                else if(lSD3 == 9){
                    scoreColourSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_9_60px.png"] selectedSprite:NULL];
                }
            }
            colourCount++;
            highScoreInt /= 10;
        }
        
        if(score >= 100 && score <= 199){
            scoreColourSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_1_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 200 && score <= 299){
            scoreColourSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_2_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 300 && score <= 399){
            scoreColourSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_3_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 400 && score <= 499){
            scoreColourSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_4_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 500 && score <= 599){
            scoreColourSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_5_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 600 && score <= 699){
            scoreColourSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_6_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 700 && score <= 799){
            scoreColourSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_7_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 800 && score <= 899){
            scoreColourSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_8_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 900 && score <= 999){
            scoreColourSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_9_60px.png"] selectedSprite:NULL];
        }
        
    }
    
    scoreColourSpriteOne.position = ccp(360, 160);
    scoreColourSpriteTwo.position = ccp(390, 160);
    scoreColourSpriteThree.position = ccp(420, 160);
    
    //LOAD LEXICAL SCORE
    score = [[NSUserDefaults standardUserDefaults] integerForKey:@"lScore"];
    highScoreInt = score;
    if(score <= 9){
        if(score == 0){
            scoreLexicalSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_0_60px.png"] selectedSprite:NULL];
        }
        else if(score == 1){
            scoreLexicalSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_1_60px.png"] selectedSprite:NULL];
        }
        else if(score == 2){
            scoreLexicalSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_2_60px.png"] selectedSprite:NULL];
        }
        else if(score == 3){
            scoreLexicalSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_3_60px.png"] selectedSprite:NULL];
        }
        else if(score == 4){
            scoreLexicalSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_4_60px.png"] selectedSprite:NULL];
        }
        else if(score == 5){
            scoreLexicalSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_5_60px.png"] selectedSprite:NULL];
        }
        else if(score == 6){
            scoreLexicalSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_6_60px.png"] selectedSprite:NULL];
        }
        else if(score == 7){
            scoreLexicalSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_7_60px.png"] selectedSprite:NULL];
        }
        else if(score == 8){
            scoreLexicalSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_8_60px.png"] selectedSprite:NULL];
        }
        else if(score == 9){
            scoreLexicalSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_9_60px.png"] selectedSprite:NULL];
        }
        scoreLexicalSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_0_60px.png"] selectedSprite:NULL];
        scoreLexicalSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_0_60px.png"] selectedSprite:NULL];
    }
    else if(score >= 10 && score <= 99){
        int lSD4 = highScoreInt % 10;
        if(lSD4 == 0){
            scoreLexicalSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_0_60px.png"] selectedSprite:NULL];
        }
        else if(lSD4 == 1){
            scoreLexicalSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_1_60px.png"] selectedSprite:NULL];
        }
        else if(lSD4 == 2){
            scoreLexicalSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_2_60px.png"] selectedSprite:NULL];
        }
        else if(lSD4 == 3){
            scoreLexicalSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_3_60px.png"] selectedSprite:NULL];
        }
        else if(lSD4 == 4){
            scoreLexicalSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_4_60px.png"] selectedSprite:NULL];
        }
        else if(lSD4 == 5){
            scoreLexicalSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_5_60px.png"] selectedSprite:NULL];
        }
        else if(lSD4 == 6){
            scoreLexicalSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_6_60px.png"] selectedSprite:NULL];
        }
        else if(lSD4 == 7){
            scoreLexicalSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_7_60px.png"] selectedSprite:NULL];
        }
        else if(lSD4 == 8){
            scoreLexicalSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_8_60px.png"] selectedSprite:NULL];
        }
        else if(lSD4 == 9){
            scoreLexicalSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_9_60px.png"] selectedSprite:NULL];
        }
        
        if(score >= 10 && score <= 19){
            scoreLexicalSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_1_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 20 && score <= 29){
            scoreLexicalSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_2_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 30 && score <= 39){
            scoreLexicalSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_3_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 40 && score <= 49){
            scoreLexicalSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_4_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 50 && score <= 59){
            scoreLexicalSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_5_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 60 && score <= 69){
            scoreLexicalSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_6_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 70 && score <= 79){
            scoreLexicalSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_7_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 80 && score <= 89){
            scoreLexicalSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_8_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 90 && score <= 99){
            scoreLexicalSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_9_60px.png"] selectedSprite:NULL];
        }
        scoreLexicalSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_0_60px.png"] selectedSprite:NULL];
    }
    else if(score >= 100 && score <= 999){
        int lexCount = 0;
        while(lexCount < 2){
            int lSD4 = highScoreInt % 10;
            if(lexCount == 0){
                if(lSD4 == 0){
                    scoreLexicalSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_0_60px.png"] selectedSprite:NULL];
                }
                else if(lSD4 == 1){
                    scoreLexicalSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_1_60px.png"] selectedSprite:NULL];
                }
                else if(lSD4 == 2){
                    scoreLexicalSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_2_60px.png"] selectedSprite:NULL];
                }
                else if(lSD4 == 3){
                    scoreLexicalSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_3_60px.png"] selectedSprite:NULL];
                }
                else if(lSD4 == 4){
                    scoreLexicalSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_4_60px.png"] selectedSprite:NULL];
                }
                else if(lSD4 == 5){
                    scoreLexicalSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_5_60px.png"] selectedSprite:NULL];
                }
                else if(lSD4 == 6){
                    scoreLexicalSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_6_60px.png"] selectedSprite:NULL];
                }
                else if(lSD4 == 7){
                    scoreLexicalSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_7_60px.png"] selectedSprite:NULL];
                }
                else if(lSD4 == 8){
                    scoreLexicalSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_8_60px.png"] selectedSprite:NULL];
                }
                else if(lSD4 == 9){
                    scoreLexicalSpriteThree = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_9_60px.png"] selectedSprite:NULL];
                }
            }
            else if(lexCount == 1){
                if(lSD4 == 0){
                    scoreLexicalSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_0_60px.png"] selectedSprite:NULL];
                }
                else if(lSD4 == 1){
                    scoreLexicalSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_1_60px.png"] selectedSprite:NULL];
                }
                else if(lSD4 == 2){
                    scoreLexicalSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_2_60px.png"] selectedSprite:NULL];
                }
                else if(lSD4 == 3){
                    scoreLexicalSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_3_60px.png"] selectedSprite:NULL];
                }
                else if(lSD4 == 4){
                    scoreLexicalSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_4_60px.png"] selectedSprite:NULL];
                }
                else if(lSD4 == 5){
                    scoreLexicalSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_5_60px.png"] selectedSprite:NULL];
                }
                else if(lSD4 == 6){
                    scoreLexicalSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_6_60px.png"] selectedSprite:NULL];
                }
                else if(lSD4 == 7){
                    scoreLexicalSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_7_60px.png"] selectedSprite:NULL];
                }
                else if(lSD4 == 8){
                    scoreLexicalSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_8_60px.png"] selectedSprite:NULL];
                }
                else if(lSD4 == 9){
                    scoreLexicalSpriteTwo = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_9_60px.png"] selectedSprite:NULL];
                }
            }
            lexCount++;
            highScoreInt /= 10;
        }
        
        if(score >= 100 && score <= 199){
            scoreLexicalSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_1_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 200 && score <= 299){
            scoreLexicalSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_2_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 300 && score <= 399){
            scoreLexicalSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_3_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 400 && score <= 499){
            scoreLexicalSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_4_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 500 && score <= 599){
            scoreLexicalSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_5_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 600 && score <= 699){
            scoreLexicalSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_6_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 700 && score <= 799){
            scoreLexicalSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_7_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 800 && score <= 899){
            scoreLexicalSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_8_60px.png"] selectedSprite:NULL];
        }
        else if(score >= 900 && score <= 999){
            scoreLexicalSpriteOne = [CCMenuItemSprite itemWithNormalSprite:[CCSprite spriteWithFile:@"GeneralNumbers/numbers_60px/number_9_60px.png"] selectedSprite:NULL];
        }
    }
    
    scoreLexicalSpriteOne.position = ccp(360, 110);
    scoreLexicalSpriteTwo.position = ccp(390, 110);
    scoreLexicalSpriteThree.position = ccp(420, 110);
    
    [self addChild: scoreEquationSpriteOne];
    [self addChild: scoreEquationSpriteTwo];
    [self addChild: scoreEquationSpriteThree];
    [self addChild: scoreTappingSpriteOne];
    [self addChild: scoreTappingSpriteTwo];
    [self addChild: scoreTappingSpriteThree];
    [self addChild: scoreColourSpriteOne];
    [self addChild: scoreColourSpriteTwo];
    [self addChild: scoreColourSpriteThree];
    [self addChild: scoreLexicalSpriteOne];
    [self addChild: scoreLexicalSpriteTwo];
    [self addChild: scoreLexicalSpriteThree];
}

-(void) backTouched:(id)sender{
    [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
    [[CCDirector sharedDirector] replaceScene: [CCTransitionCrossFade transitionWithDuration:.5 scene: [MainMenu node]]];
}

- (void) dealloc{
	[super dealloc];
}

@end
