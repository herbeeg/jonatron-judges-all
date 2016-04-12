//
//  LexicalLinguine.m
//  JonatronJudgesAll
//
//  Created by Jonathan Herbst on 29/11/2012.
//  Copyright Herbtacular Games 2013. All rights reserved.
//

#import "LexicalLinguine.h"
#import "GameFinish.h"
#import "SimpleAudioEngine.h"

CCMenu *lexicalButtonMenu;
CCMenu *lexicalScoreMenu;
CCMenu *lexicalTimeMenu;
CCMenu *lexicalWordMenu;
CCMenu *lexicalGraphicsMenu;

CCMenuItemSprite *lexicalWordSprite;

CCLayer *lexicalButtonLayer;
CCLayer *lexicalScoreTimeLayer;
CCLayer *lexicalWordLayer;
CCLayer *lexicalGraphicsLayer;

CCSprite *lexicalBackgroundImage;

CCSprite *lexicalIntro3;
CCSprite *lexicalIntro2;
CCSprite *lexicalIntro1;
CCSprite *lexicalIntroGo;

CCMenuItemSprite *lexicalMenuButton1;
CCMenuItemSprite *lexicalMenuButton2;
CCMenuItemSprite *lexicalMenuButton3;
CCMenuItemSprite *lexicalMenuButton4;

CCSprite *lexicalButtonA;
CCSprite *lexicalButtonB;
CCSprite *lexicalButtonC;
CCSprite *lexicalButtonD;
CCSprite *lexicalButtonE;
CCSprite *lexicalButtonF;
CCSprite *lexicalButtonG;
CCSprite *lexicalButtonH;
CCSprite *lexicalButtonI;
CCSprite *lexicalButtonJ;
CCSprite *lexicalButtonK;
CCSprite *lexicalButtonL;
CCSprite *lexicalButtonM;
CCSprite *lexicalButtonN;
CCSprite *lexicalButtonO;
CCSprite *lexicalButtonP;
CCSprite *lexicalButtonQ;
CCSprite *lexicalButtonR;
CCSprite *lexicalButtonS;
CCSprite *lexicalButtonT;
CCSprite *lexicalButtonU;
CCSprite *lexicalButtonV;
CCSprite *lexicalButtonW;
CCSprite *lexicalButtonX;
CCSprite *lexicalButtonY;
CCSprite *lexicalButtonZ;

CCSprite *lexicalButtonACopy;
CCSprite *lexicalButtonBCopy;
CCSprite *lexicalButtonCCopy;
CCSprite *lexicalButtonDCopy;
CCSprite *lexicalButtonECopy;
CCSprite *lexicalButtonFCopy;
CCSprite *lexicalButtonGCopy;
CCSprite *lexicalButtonHCopy;
CCSprite *lexicalButtonICopy;
CCSprite *lexicalButtonJCopy;
CCSprite *lexicalButtonKCopy;
CCSprite *lexicalButtonLCopy;
CCSprite *lexicalButtonMCopy;
CCSprite *lexicalButtonNCopy;
CCSprite *lexicalButtonOCopy;
CCSprite *lexicalButtonPCopy;
CCSprite *lexicalButtonQCopy;
CCSprite *lexicalButtonRCopy;
CCSprite *lexicalButtonSCopy;
CCSprite *lexicalButtonTCopy;
CCSprite *lexicalButtonUCopy;
CCSprite *lexicalButtonVCopy;
CCSprite *lexicalButtonWCopy;
CCSprite *lexicalButtonXCopy;
CCSprite *lexicalButtonYCopy;
CCSprite *lexicalButtonZCopy;

CCSprite *lexicalButtonASelected;
CCSprite *lexicalButtonBSelected;
CCSprite *lexicalButtonCSelected;
CCSprite *lexicalButtonDSelected;
CCSprite *lexicalButtonESelected;
CCSprite *lexicalButtonFSelected;
CCSprite *lexicalButtonGSelected;
CCSprite *lexicalButtonHSelected;
CCSprite *lexicalButtonISelected;
CCSprite *lexicalButtonJSelected;
CCSprite *lexicalButtonKSelected;
CCSprite *lexicalButtonLSelected;
CCSprite *lexicalButtonMSelected;
CCSprite *lexicalButtonNSelected;
CCSprite *lexicalButtonOSelected;
CCSprite *lexicalButtonPSelected;
CCSprite *lexicalButtonQSelected;
CCSprite *lexicalButtonRSelected;
CCSprite *lexicalButtonSSelected;
CCSprite *lexicalButtonTSelected;
CCSprite *lexicalButtonUSelected;
CCSprite *lexicalButtonVSelected;
CCSprite *lexicalButtonWSelected;
CCSprite *lexicalButtonXSelected;
CCSprite *lexicalButtonYSelected;
CCSprite *lexicalButtonZSelected;

CCSprite *lexicalButtonASelectedCopy;
CCSprite *lexicalButtonBSelectedCopy;
CCSprite *lexicalButtonCSelectedCopy;
CCSprite *lexicalButtonDSelectedCopy;
CCSprite *lexicalButtonESelectedCopy;
CCSprite *lexicalButtonFSelectedCopy;
CCSprite *lexicalButtonGSelectedCopy;
CCSprite *lexicalButtonHSelectedCopy;
CCSprite *lexicalButtonISelectedCopy;
CCSprite *lexicalButtonJSelectedCopy;
CCSprite *lexicalButtonKSelectedCopy;
CCSprite *lexicalButtonLSelectedCopy;
CCSprite *lexicalButtonMSelectedCopy;
CCSprite *lexicalButtonNSelectedCopy;
CCSprite *lexicalButtonOSelectedCopy;
CCSprite *lexicalButtonPSelectedCopy;
CCSprite *lexicalButtonQSelectedCopy;
CCSprite *lexicalButtonRSelectedCopy;
CCSprite *lexicalButtonSSelectedCopy;
CCSprite *lexicalButtonTSelectedCopy;
CCSprite *lexicalButtonUSelectedCopy;
CCSprite *lexicalButtonVSelectedCopy;
CCSprite *lexicalButtonWSelectedCopy;
CCSprite *lexicalButtonXSelectedCopy;
CCSprite *lexicalButtonYSelectedCopy;
CCSprite *lexicalButtonZSelectedCopy;

CCSprite *lexicalWordAcronym;
CCSprite *lexicalWordAcrylic;
CCSprite *lexicalWordAnymore;
CCSprite *lexicalWordAwesome;
CCSprite *lexicalWordBathing;
CCSprite *lexicalWordBazooka;
CCSprite *lexicalWordBelched;
CCSprite *lexicalWordBottoms;
CCSprite *lexicalWordCalzone;
CCSprite *lexicalWordCentrum;
CCSprite *lexicalWordChortle;
CCSprite *lexicalWordCompels;
CCSprite *lexicalWordDetoxes;
CCSprite *lexicalWordDollops;
CCSprite *lexicalWordDuality;
CCSprite *lexicalWordDugongs;
CCSprite *lexicalWordEditors;
CCSprite *lexicalWordEgghead;
CCSprite *lexicalWordElastic;
CCSprite *lexicalWordExcrete;
CCSprite *lexicalWordFarting;
CCSprite *lexicalWordFathoms;
CCSprite *lexicalWordFiddler;
CCSprite *lexicalWordFlaccid;
CCSprite *lexicalWordGelatin;
CCSprite *lexicalWordGluteus;
CCSprite *lexicalWordGrasped;
CCSprite *lexicalWordGuineas;
CCSprite *lexicalWordHaddock;
CCSprite *lexicalWordHijacks;
CCSprite *lexicalWordHonkers;
CCSprite *lexicalWordHydrant;
CCSprite *lexicalWordImplode;
CCSprite *lexicalWordIridium;
CCSprite *lexicalWordIroning;
CCSprite *lexicalWordIsotope;
CCSprite *lexicalWordJanitor;
CCSprite *lexicalWordJockeys;
CCSprite *lexicalWordJudging;
CCSprite *lexicalWordJuniper;
CCSprite *lexicalWordKarting;
CCSprite *lexicalWordKnocker;
CCSprite *lexicalWordKobolds;
CCSprite *lexicalWordKumquat;
CCSprite *lexicalWordLasagne;
CCSprite *lexicalWordLegible;
CCSprite *lexicalWordLoathed;
CCSprite *lexicalWordLychees;
CCSprite *lexicalWordMahjong;
CCSprite *lexicalWordManhole;
CCSprite *lexicalWordMitosis;
CCSprite *lexicalWordMuncher;
CCSprite *lexicalWordNarcism;
CCSprite *lexicalWordNewbies;
CCSprite *lexicalWordNitwits;
CCSprite *lexicalWordNoodles;
CCSprite *lexicalWordOctopus;
CCSprite *lexicalWordOnagers;
CCSprite *lexicalWordOrganic;
CCSprite *lexicalWordOxidant;
CCSprite *lexicalWordPackage;
CCSprite *lexicalWordParfait;
CCSprite *lexicalWordPerplex;
CCSprite *lexicalWordPincers;
CCSprite *lexicalWordQuacked;
CCSprite *lexicalWordQueried;
CCSprite *lexicalWordQuintet;
CCSprite *lexicalWordQuivers;
CCSprite *lexicalWordRectory;
CCSprite *lexicalWordRhubarb;
CCSprite *lexicalWordRoulade;
CCSprite *lexicalWordRustier;
CCSprite *lexicalWordSandbox;
CCSprite *lexicalWordSextets;
CCSprite *lexicalWordShoguns;
CCSprite *lexicalWordSpelunk;
CCSprite *lexicalWordTableau;
CCSprite *lexicalWordTimpani;
CCSprite *lexicalWordTopless;
CCSprite *lexicalWordTubists;
CCSprite *lexicalWordUmpteen;
CCSprite *lexicalWordUnboxed;
CCSprite *lexicalWordUpkeeps;
CCSprite *lexicalWordUrinals;
CCSprite *lexicalWordVaguely;
CCSprite *lexicalWordVintage;
CCSprite *lexicalWordViscous;
CCSprite *lexicalWordVomiter;
CCSprite *lexicalWordWalnuts;
CCSprite *lexicalWordWizards;
CCSprite *lexicalWordWordage;
CCSprite *lexicalWordWyverns;
CCSprite *lexicalWordXanthic;
CCSprite *lexicalWordXenopus;
CCSprite *lexicalWordXerotic;
CCSprite *lexicalWordXyloses;
CCSprite *lexicalWordYcleped;
CCSprite *lexicalWordYeshiva;
CCSprite *lexicalWordYoghurt;
CCSprite *lexicalWordYowlers;
CCSprite *lexicalWordZealots;
CCSprite *lexicalWordZelkova;
CCSprite *lexicalWordZestily;
CCSprite *lexicalWordZygotes;

CCArray *lexicalWordArray;

CCLayer *lexicalBackgroundLayer;

ccTime lexicalGameTime = 0.0f;

//Numbers 1-3 reserved for scoring display and numbers 4-6 reserved for the time display
CCSprite *lexicalScoreNumber0_1;
CCSprite *lexicalScoreNumber0_2;
CCSprite *lexicalScoreNumber0_3;
CCSprite *lexicalScoreNumber0_4;
CCSprite *lexicalScoreNumber0_5;
CCSprite *lexicalScoreNumber0_6;
CCSprite *lexicalScoreNumber1_1;
CCSprite *lexicalScoreNumber1_2;
CCSprite *lexicalScoreNumber1_3;
CCSprite *lexicalScoreNumber1_4;
CCSprite *lexicalScoreNumber1_5;
CCSprite *lexicalScoreNumber1_6;
CCSprite *lexicalScoreNumber2_1;
CCSprite *lexicalScoreNumber2_2;
CCSprite *lexicalScoreNumber2_3;
CCSprite *lexicalScoreNumber2_4;
CCSprite *lexicalScoreNumber2_5;
CCSprite *lexicalScoreNumber2_6;
CCSprite *lexicalScoreNumber3_1;
CCSprite *lexicalScoreNumber3_2;
CCSprite *lexicalScoreNumber3_3;
CCSprite *lexicalScoreNumber3_4;
CCSprite *lexicalScoreNumber3_5;
CCSprite *lexicalScoreNumber3_6;
CCSprite *lexicalScoreNumber4_1;
CCSprite *lexicalScoreNumber4_2;
CCSprite *lexicalScoreNumber4_3;
CCSprite *lexicalScoreNumber4_4;
CCSprite *lexicalScoreNumber4_5;
CCSprite *lexicalScoreNumber4_6;
CCSprite *lexicalScoreNumber5_1;
CCSprite *lexicalScoreNumber5_2;
CCSprite *lexicalScoreNumber5_3;
CCSprite *lexicalScoreNumber5_4;
CCSprite *lexicalScoreNumber5_5;
CCSprite *lexicalScoreNumber5_6;
CCSprite *lexicalScoreNumber6_1;
CCSprite *lexicalScoreNumber6_2;
CCSprite *lexicalScoreNumber6_3;
CCSprite *lexicalScoreNumber6_4;
CCSprite *lexicalScoreNumber6_5;
CCSprite *lexicalScoreNumber6_6;
CCSprite *lexicalScoreNumber7_1;
CCSprite *lexicalScoreNumber7_2;
CCSprite *lexicalScoreNumber7_3;
CCSprite *lexicalScoreNumber7_4;
CCSprite *lexicalScoreNumber7_5;
CCSprite *lexicalScoreNumber7_6;
CCSprite *lexicalScoreNumber8_1;
CCSprite *lexicalScoreNumber8_2;
CCSprite *lexicalScoreNumber8_3;
CCSprite *lexicalScoreNumber8_4;
CCSprite *lexicalScoreNumber8_5;
CCSprite *lexicalScoreNumber8_6;
CCSprite *lexicalScoreNumber9_1;
CCSprite *lexicalScoreNumber9_2;
CCSprite *lexicalScoreNumber9_3;
CCSprite *lexicalScoreNumber9_4;
CCSprite *lexicalScoreNumber9_5;
CCSprite *lexicalScoreNumber9_6;
CCMenuItemSprite *lexicalScoreDigitOne;
CCMenuItemSprite *lexicalScoreDigitTwo;
CCMenuItemSprite *lexicalScoreDigitThree;
CCMenuItemSprite *lexicalTimeDigitOne;
CCMenuItemSprite *lexicalTimeDigitTwo;
CCMenuItemSprite *lexicalTimeDigitThree;

CCMenuItemImage* lexicalScoreLetterS;
CCMenuItemImage* lexicalScoreLetterC;
CCMenuItemImage* lexicalScoreLetterO;
CCMenuItemImage* lexicalScoreLetterR;
CCMenuItemImage* lexicalScoreLetterE;
CCMenuItemImage* lexicalTimeLetterT;
CCMenuItemImage* lexicalTimeLetterI;
CCMenuItemImage* lexicalTimeLetterM;
CCMenuItemImage* lexicalTimeLetterE;
CCMenuItemImage* lexicalScoreLetterColon;
CCMenuItemImage* lexicalTimeLetterColon;
CCMenuItemImage* lexicalTimeLetterPoint;

CCSprite *lexicalGraphic1st;
CCSprite *lexicalGraphic2nd;
CCSprite *lexicalGraphic3rd;
CCSprite *lexicalGraphic4th;
CCSprite *lexicalGraphic5th;
CCSprite *lexicalGraphic6th;
CCSprite *lexicalGraphic7th;

CCSprite *lexicalGraphic1stCopy;
CCSprite *lexicalGraphic2ndCopy;
CCSprite *lexicalGraphic3rdCopy;
CCSprite *lexicalGraphic4thCopy;
CCSprite *lexicalGraphic5thCopy;
CCSprite *lexicalGraphic6thCopy;
CCSprite *lexicalGraphic7thCopy;

CCMenuItemImage *lexicalLetterInTheWord;
CCMenuItemSprite *lexicalLetterNumSprite;

NSString *lexicalWordLetterOne = @"";
NSString *lexicalWordLetterTwo= @"";
NSString *lexicalWordLetterThree = @"";
NSString *lexicalWordLetterFour = @"";
NSString *lexicalWordLetterFive = @"";
NSString *lexicalWordLetterSix = @"";
NSString *lexicalWordLetterSeven = @"";

NSString *lexicalWordChoiceOne = @"";
NSString *lexicalWordChoiceTwo = @"";
NSString *lexicalWordChoiceThree = @"";
NSString *lexicalWordChoiceFour = @"";

NSString *lexicalButtonOneID = @"";
NSString *lexicalButtonTwoID = @"";
NSString *lexicalButtonThreeID = @"";
NSString *lexicalButtonFourID = @"";

NSString *lexicalLetterChosen = @"";

NSString *lexicalActualAnswer = @"";

int lexicalPrevWordRandomNumber = 0;
int lexicalWordRandomNumber = 0;
int lexicalLetterRandomNumber = 0;

BOOL lexicalIntroFinished = NO;
BOOL lexicalAllChange = FALSE;
float lexicalTimeLeft = 60.0f;
int lexicalTick = 0;
int lexicalTimeInt = 0;

int lexicalPrevScore = 0;
int lexicalScore = 0;
int lexicalScoreInt = 0;
int lexicalAnswersGiven = 0;

BOOL letterOneDrawn = FALSE;
BOOL letterTwoDrawn = FALSE;
BOOL letterThreeDrawn = FALSE;
BOOL letterFourDrawn = FALSE;

int lexicalLetterChoiceRandom = -1;

int wordChosen = -1;

BOOL lexicalSelectionMade = FALSE;

BOOL lexicalTimeUpDrawn = FALSE;
CCSprite *lexicalTimeUp;

#pragma mark - LexicalLinguine

@implementation LexicalLinguine

+(CCScene *) scene{
    CCScene *lexicalLinguineScene = [CCScene node];
    
    lexicalLinguineScene = [LexicalLinguine node];
    
    [lexicalLinguineScene addChild: lexicalBackgroundLayer];
    
    return lexicalLinguineScene;
}

-(void) onEnter{
    [self schedule:@selector(update:)];
    [super onEnter];
}

-(id) init{
    lexicalButtonLayer = [CCLayer node];
    lexicalScoreTimeLayer = [CCLayer node];
    lexicalWordLayer = [CCLayer node];
    lexicalGraphicsLayer = [CCLayer node];
    
    [self initLexicalScoreTimeElements];
    [self initLexicalButtonImages];
    [self initLexicalWordItems];
    [self initLexicalGraphicImages];
    
    if((self = [super init])){
        lexicalBackgroundImage = [CCSprite spriteWithFile: @"MenuImages/blank_background.png"];
        lexicalBackgroundImage.position = ccp(240, 160);
        
        [self addChild: lexicalBackgroundImage];
        [self addChild: lexicalScoreTimeLayer];
        [self addChild: lexicalWordLayer];
        [self addChild: lexicalButtonLayer];
        [self addChild: lexicalGraphicsLayer];
    }
    
    lexicalGameTime = 0.0f;
    lexicalWordLetterOne = @"";
    lexicalWordLetterTwo= @"";
    lexicalWordLetterThree = @"";
    lexicalWordLetterFour = @"";
    lexicalWordLetterFive = @"";
    lexicalWordLetterSix = @"";
    lexicalWordLetterSeven = @"";
    lexicalWordChoiceOne = @"";
    lexicalWordChoiceTwo = @"";
    lexicalWordChoiceThree = @"";
    lexicalWordChoiceFour = @"";
    lexicalButtonOneID = @"";
    lexicalButtonTwoID = @"";
    lexicalButtonThreeID = @"";
    lexicalButtonFourID = @"";
    lexicalLetterChosen = @"";
    lexicalActualAnswer = @"";
    lexicalPrevWordRandomNumber = 0;
    lexicalWordRandomNumber = 0;
    lexicalLetterRandomNumber = 0;
    lexicalIntroFinished = NO;
    lexicalAllChange = FALSE;
    lexicalTimeLeft = 60.0f;
    lexicalTick = 0;
    lexicalTimeInt = 0;
    lexicalPrevScore = 0;
    lexicalScore = 0;
    lexicalScoreInt = 0;
    lexicalAnswersGiven = 0;
    letterOneDrawn = FALSE;
    letterTwoDrawn = FALSE;
    letterThreeDrawn = FALSE;
    letterFourDrawn = FALSE;
    lexicalLetterChoiceRandom = -1;
    wordChosen = -1;
    lexicalSelectionMade = FALSE;
    lexicalTimeUpDrawn = FALSE;
    
    return self;
}

-(void) update:(ccTime)dt{
    lexicalGameTime += dt;
    
    if (lexicalGameTime < 5 && lexicalIntroFinished == NO){
        if(lexicalGameTime > 0 && lexicalGameTime < 1.5){
            if(lexicalTick == 0){
                lexicalIntro3 = [CCSprite spriteWithFile: @"GameSplashImages/splash_3.png"];
                lexicalIntro3.position = ccp(240, 160);
                [self addChild: lexicalIntro3];
                lexicalTick = 1;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_three.mp3"];
            }
        }
        else if(lexicalGameTime > 1.5 && lexicalGameTime < 2.5){
            if(lexicalTick == 1) {
                lexicalIntro2 = [CCSprite spriteWithFile: @"GameSplashImages/splash_2.png"];
                lexicalIntro2.position = ccp(240, 160);
                [self addChild: lexicalIntro2];
                lexicalTick = 2;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_two.mp3"];
            }
            else if(lexicalTick == 2){
                [self removeChild: lexicalIntro3 cleanup:YES];
                lexicalTick = 3;
            }
        }
        else if(lexicalGameTime > 2.5 && lexicalGameTime < 3.5){
            if(lexicalTick == 3){
                lexicalIntro1 = [CCSprite spriteWithFile: @"GameSplashImages/splash_1.png"];
                lexicalIntro1.position = ccp(240, 160);
                [self addChild: lexicalIntro1];
                lexicalTick = 4;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_one.mp3"];
            }
            else if(lexicalTick == 4) {
                [self removeChild: lexicalIntro2 cleanup:YES];
                lexicalTick = 5;
            }
        }
        else if(lexicalGameTime > 3.5 && lexicalGameTime < 4.5){
            if(lexicalTick == 5){
                lexicalIntroGo = [CCSprite spriteWithFile: @"GameSplashImages/splash_go.png"];
                lexicalIntroGo.position = ccp(240, 160);
                [self addChild: lexicalIntroGo];
                lexicalTick = 6;
                [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_go.mp3"];
            }
            else if(lexicalTick == 6) {
                [self removeChild: lexicalIntro1 cleanup:YES];
                lexicalTick = 7;
            }
        }
        else{
            if(lexicalTick == 7){
                lexicalIntroFinished = YES;
                [self removeChild: lexicalIntroGo cleanup:YES];
                lexicalTick = 8;
                lexicalAllChange = TRUE;
            }
        }
    }
    
    else if(lexicalTick == 8){
        //Do everything else
        if(lexicalAllChange){
            [self drawLexicalElements];
            [[SimpleAudioEngine sharedEngine] playBackgroundMusic:@"AudioFiles/lexical_linguine.mp3"];
            lexicalAllChange = FALSE;
        }
        
        if(lexicalTimeLeft >= 0){
            lexicalTimeLeft -= dt;
            lexicalTimeLeft *= 10;
            
            lexicalTimeInt = (int) lexicalTimeLeft;
            
            lexicalTimeLeft /= 10;
            
            int count = 0;
            
            //TIME DIGIT CALCULATIONS
            if(lexicalTimeLeft >= 10){
                while(lexicalTimeInt > 0){
                    int lSD = lexicalTimeInt % 10;
                    
                    if(lSD == 0) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 203] setNormalImage:lexicalScoreNumber0_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 202] setNormalImage:lexicalScoreNumber0_5];
                        }
                        
                        else if(count == 2){
                            //Do nothing
                        }
                    }
                    
                    else if(lSD == 1) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 203] setNormalImage:lexicalScoreNumber1_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 202] setNormalImage:lexicalScoreNumber1_5];
                        }
                        
                        else if(count == 2){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 201] setNormalImage:lexicalScoreNumber1_4];
                        }
                    }
                    
                    else if(lSD == 2) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 203] setNormalImage:lexicalScoreNumber2_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 202] setNormalImage:lexicalScoreNumber2_5];
                        }
                        
                        else if(count == 2){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 201] setNormalImage:lexicalScoreNumber2_4];
                        }
                    }
                    
                    else if(lSD == 3) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 203] setNormalImage:lexicalScoreNumber3_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 202] setNormalImage:lexicalScoreNumber3_5];
                        }
                        
                        else if(count == 2){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 201] setNormalImage:lexicalScoreNumber3_4];
                        }
                    }
                    
                    else if(lSD == 4) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 203] setNormalImage:lexicalScoreNumber4_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 202] setNormalImage:lexicalScoreNumber4_5];
                        }
                        
                        else if(count == 2){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 201] setNormalImage:lexicalScoreNumber4_4];
                        }
                    }
                    
                    else if(lSD == 5) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 203] setNormalImage:lexicalScoreNumber5_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 202] setNormalImage:lexicalScoreNumber5_5];
                        }
                        
                        else if(count == 2){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 201] setNormalImage:lexicalScoreNumber5_4];
                        }
                    }
                    
                    else if(lSD == 6) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 203] setNormalImage:lexicalScoreNumber6_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 202] setNormalImage:lexicalScoreNumber6_5];
                        }
                        
                        else if(count == 2){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 201] setNormalImage:lexicalScoreNumber6_4];
                        }
                    }
                    
                    else if(lSD == 7) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 203] setNormalImage:lexicalScoreNumber7_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 202] setNormalImage:lexicalScoreNumber7_5];
                        }
                        
                        else if(count == 2){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 201] setNormalImage:lexicalScoreNumber7_4];
                        }
                    }
                    
                    else if(lSD == 8) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 203] setNormalImage:lexicalScoreNumber8_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 202] setNormalImage:lexicalScoreNumber8_5];
                        }
                        
                        else if(count == 2){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 201] setNormalImage:lexicalScoreNumber8_4];
                        }
                    }
                    
                    else if(lSD == 9) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 203] setNormalImage:lexicalScoreNumber9_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 202] setNormalImage:lexicalScoreNumber9_5];
                        }
                        
                        else if(count == 2){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 201] setNormalImage:lexicalScoreNumber9_4];
                        }
                    }
                    
                    lexicalTimeInt /= 10;
                    count++;
                }
            }
            
            else if(lexicalTimeLeft >= 1 && lexicalTimeLeft < 10){
                while (lexicalTimeInt > 0){
                    int lSD = lexicalTimeInt % 10;
                    
                    if(lSD == 0) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 203] setNormalImage:lexicalScoreNumber0_6];
                        }
                    }
                    
                    else if(lSD == 1) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 203] setNormalImage:lexicalScoreNumber1_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 202] setNormalImage:lexicalScoreNumber1_5];
                        }
                        
                        [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 201] setNormalImage:lexicalScoreNumber0_4];
                    }
                    
                    else if(lSD == 2) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 203] setNormalImage:lexicalScoreNumber2_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 202] setNormalImage:lexicalScoreNumber2_5];
                        }
                        
                        [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 201] setNormalImage:lexicalScoreNumber0_4];
                    }
                    
                    else if(lSD == 3) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 203] setNormalImage:lexicalScoreNumber3_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 202] setNormalImage:lexicalScoreNumber3_5];
                        }
                        
                        [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 201] setNormalImage:lexicalScoreNumber0_4];
                    }
                    
                    else if(lSD == 4) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 203] setNormalImage:lexicalScoreNumber4_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 202] setNormalImage:lexicalScoreNumber4_5];
                        }
                        
                        [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 201] setNormalImage:lexicalScoreNumber0_4];
                    }
                    
                    else if(lSD == 5) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 203] setNormalImage:lexicalScoreNumber5_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 202] setNormalImage:lexicalScoreNumber5_5];
                        }
                        
                        [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 201] setNormalImage:lexicalScoreNumber0_4];
                    }
                    
                    else if(lSD == 6) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 203] setNormalImage:lexicalScoreNumber6_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 202] setNormalImage:lexicalScoreNumber6_5];
                        }
                        
                        [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 201] setNormalImage:lexicalScoreNumber0_4];
                    }
                    
                    else if(lSD == 7) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 203] setNormalImage:lexicalScoreNumber7_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 202] setNormalImage:lexicalScoreNumber7_5];
                        }
                        
                        [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 201] setNormalImage:lexicalScoreNumber0_4];
                    }
                    
                    else if(lSD == 8) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 203] setNormalImage:lexicalScoreNumber8_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 202] setNormalImage:lexicalScoreNumber8_5];
                        }
                        
                        [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 201] setNormalImage:lexicalScoreNumber0_4];
                    }
                    
                    else if(lSD == 9) {
                        if(count == 0){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 203] setNormalImage:lexicalScoreNumber9_6];
                        }
                        
                        else if(count == 1){
                            [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 202] setNormalImage:lexicalScoreNumber9_5];
                        }
                        
                        [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 201] setNormalImage:lexicalScoreNumber0_4];
                    }
                    
                    lexicalTimeInt /= 10;
                    count++;
                }
            }
            
            else if(lexicalTimeLeft > 0 && lexicalTimeLeft < 1){
                int lSD = lexicalTimeInt % 10;
                
                if(lSD == 0) {
                    if(count == 0){
                        [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 203] setNormalImage:lexicalScoreNumber0_6];
                    }
                    
                    [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 202] setNormalImage:lexicalScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 201] setNormalImage:lexicalScoreNumber0_4];
                }
                
                else if(lSD == 1) {
                    if(count == 0){
                        [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 203] setNormalImage:lexicalScoreNumber1_6];
                    }
                    
                    [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 202] setNormalImage:lexicalScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 201] setNormalImage:lexicalScoreNumber0_4];
                }
                
                else if(lSD == 2) {
                    if(count == 0){
                        [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 203] setNormalImage:lexicalScoreNumber2_6];
                    }
                    
                    [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 202] setNormalImage:lexicalScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 201] setNormalImage:lexicalScoreNumber0_4];
                }
                
                else if(lSD == 3) {
                    if(count == 0){
                        [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 203] setNormalImage:lexicalScoreNumber3_6];
                    }
                    
                    [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 202] setNormalImage:lexicalScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 201] setNormalImage:lexicalScoreNumber0_4];
                }
                
                else if(lSD == 4) {
                    if(count == 0){
                        [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 203] setNormalImage:lexicalScoreNumber4_6];
                    }
                    
                    [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 202] setNormalImage:lexicalScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 201] setNormalImage:lexicalScoreNumber0_4];
                }
                
                else if(lSD == 5) {
                    if(count == 0){
                        [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 203] setNormalImage:lexicalScoreNumber5_6];
                    }
                    
                    [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 202] setNormalImage:lexicalScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 201] setNormalImage:lexicalScoreNumber0_4];
                }
                
                else if(lSD == 6) {
                    if(count == 0){
                        [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 203] setNormalImage:lexicalScoreNumber6_6];
                    }
                    
                    [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 202] setNormalImage:lexicalScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 201] setNormalImage:lexicalScoreNumber0_4];
                }
                
                else if(lSD == 7) {
                    if(count == 0){
                        [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 203] setNormalImage:lexicalScoreNumber7_6];
                    }
                    
                    [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 202] setNormalImage:lexicalScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 201] setNormalImage:lexicalScoreNumber0_4];
                }
                
                else if(lSD == 8) {
                    if(count == 0){
                        [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 203] setNormalImage:lexicalScoreNumber8_6];
                    }
                    
                    [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 202] setNormalImage:lexicalScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 201] setNormalImage:lexicalScoreNumber0_4];
                }
                
                else if(lSD == 9) {
                    if(count == 0){
                        [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 203] setNormalImage:lexicalScoreNumber9_6];
                    }
                    
                    [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 202] setNormalImage:lexicalScoreNumber0_5];
                    
                    [(CCMenuItemSprite*)[lexicalTimeMenu getChildByTag: 201] setNormalImage:lexicalScoreNumber0_4];
                }
                
                lexicalTimeInt /= 10;
                count++;
            }
            
            lexicalScoreInt = lexicalScore;
            
            //SCORE DIGIT CALCULATIONS
            if(lexicalTimeLeft > 0) {
                if(lexicalScore != lexicalPrevScore){
                    if(lexicalScore >= 0 && lexicalScore < 10){
                        if(lexicalScore == 0){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 303] setNormalImage:lexicalScoreNumber0_3];
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 302] setNormalImage:lexicalScoreNumber0_2];
                        }
                        else if(lexicalScore == 1){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 303] setNormalImage:lexicalScoreNumber1_3];
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 302] setNormalImage:lexicalScoreNumber0_2];
                        }
                        else if(lexicalScore == 2){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 303] setNormalImage:lexicalScoreNumber2_3];
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 302] setNormalImage:lexicalScoreNumber0_2];
                        }
                        else if(lexicalScore == 3){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 303] setNormalImage:lexicalScoreNumber3_3];
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 302] setNormalImage:lexicalScoreNumber0_2];
                        }
                        else if(lexicalScore == 4){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 303] setNormalImage:lexicalScoreNumber4_3];
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 302] setNormalImage:lexicalScoreNumber0_2];
                        }
                        else if(lexicalScore == 5){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 303] setNormalImage:lexicalScoreNumber5_3];
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 302] setNormalImage:lexicalScoreNumber0_2];
                        }
                        else if(lexicalScore == 6){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 303] setNormalImage:lexicalScoreNumber6_3];
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 302] setNormalImage:lexicalScoreNumber0_2];
                        }
                        else if(lexicalScore == 7){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 303] setNormalImage:lexicalScoreNumber7_3];
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 302] setNormalImage:lexicalScoreNumber0_2];
                        }
                        else if(lexicalScore == 8){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 303] setNormalImage:lexicalScoreNumber8_3];
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 302] setNormalImage:lexicalScoreNumber0_2];
                        }
                        else if(lexicalScore == 9){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 303] setNormalImage:lexicalScoreNumber9_3];
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 302] setNormalImage:lexicalScoreNumber0_2];
                        }
                        [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 301] setNormalImage:lexicalScoreNumber0_1];
                    }
                    
                    else if(lexicalScore >= 10 && lexicalScore <= 99){
                        int lSDS = lexicalScoreInt % 10;
                        if(lSDS == 0){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 303] setNormalImage:lexicalScoreNumber0_3];
                        }
                        else if(lSDS == 1){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 303] setNormalImage:lexicalScoreNumber1_3];
                        }
                        else if(lSDS == 2){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 303] setNormalImage:lexicalScoreNumber2_3];
                        }
                        else if(lSDS == 3){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 303] setNormalImage:lexicalScoreNumber3_3];
                        }
                        else if(lSDS == 4){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 303] setNormalImage:lexicalScoreNumber4_3];
                        }
                        else if(lSDS == 5){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 303] setNormalImage:lexicalScoreNumber5_3];
                        }
                        else if(lSDS == 6){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 303] setNormalImage:lexicalScoreNumber6_3];
                        }
                        else if(lSDS == 7){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 303] setNormalImage:lexicalScoreNumber7_3];
                        }
                        else if(lSDS == 8){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 303] setNormalImage:lexicalScoreNumber8_3];
                        }
                        else if(lSDS == 9){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 303] setNormalImage:lexicalScoreNumber9_3];
                        }
                        
                        if(lexicalScore >= 10 && lexicalScore <= 19){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 302] setNormalImage:lexicalScoreNumber1_2];
                        }
                        else if(lexicalScore >= 20 && lexicalScore <= 29){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 302] setNormalImage:lexicalScoreNumber2_2];
                        }
                        else if(lexicalScore >= 30 && lexicalScore <= 39){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 302] setNormalImage:lexicalScoreNumber3_2];
                        }
                        else if(lexicalScore >= 40 && lexicalScore <= 49){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 302] setNormalImage:lexicalScoreNumber4_2];
                        }
                        else if(lexicalScore >= 50 && lexicalScore <= 59){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 302] setNormalImage:lexicalScoreNumber5_2];
                        }
                        else if(lexicalScore >= 60 && lexicalScore <= 69){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 302] setNormalImage:lexicalScoreNumber6_2];
                        }
                        else if(lexicalScore >= 70 && lexicalScore <= 79){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 302] setNormalImage:lexicalScoreNumber7_2];
                        }
                        else if(lexicalScore >= 80 && lexicalScore <= 89){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 302] setNormalImage:lexicalScoreNumber8_2];
                        }
                        else if(lexicalScore >= 90 && lexicalScore <= 99){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 302] setNormalImage:lexicalScoreNumber9_2];
                        }
                        [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 301] setNormalImage:lexicalScoreNumber0_1];
                    }
                    
                    else if(lexicalScore >= 100 && lexicalScore <= 999){
                        int lexCount = 0;
                        while(lexCount < 2){
                            int lSDSs = lexicalScoreInt % 10;
                            if(lexCount == 0){
                                if(lSDSs == 0){
                                    [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 303] setNormalImage:lexicalScoreNumber0_3];
                                }
                                else if(lSDSs == 1){
                                    [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 303] setNormalImage:lexicalScoreNumber1_3];
                                }
                                else if(lSDSs == 2){
                                    [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 303] setNormalImage:lexicalScoreNumber2_3];
                                }
                                else if(lSDSs == 3){
                                    [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 303] setNormalImage:lexicalScoreNumber3_3];
                                }
                                else if(lSDSs == 4){
                                    [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 303] setNormalImage:lexicalScoreNumber4_3];
                                }
                                else if(lSDSs == 5){
                                    [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 303] setNormalImage:lexicalScoreNumber5_3];
                                }
                                else if(lSDSs == 6){
                                    [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 303] setNormalImage:lexicalScoreNumber6_3];
                                }
                                else if(lSDSs == 7){
                                    [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 303] setNormalImage:lexicalScoreNumber7_3];
                                }
                                else if(lSDSs == 8){
                                    [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 303] setNormalImage:lexicalScoreNumber8_3];
                                }
                                else if(lSDSs == 9){
                                    [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 303] setNormalImage:lexicalScoreNumber9_3];
                                }
                            }
                            else if(lexCount == 1){
                                if(lSDSs == 0){
                                    [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 302] setNormalImage:lexicalScoreNumber0_2];
                                }
                                else if(lSDSs == 1){
                                    [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 302] setNormalImage:lexicalScoreNumber1_2];
                                }
                                else if(lSDSs == 2){
                                    [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 302] setNormalImage:lexicalScoreNumber2_2];
                                }
                                else if(lSDSs == 3){
                                    [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 302] setNormalImage:lexicalScoreNumber3_2];
                                }
                                else if(lSDSs == 4){
                                    [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 302] setNormalImage:lexicalScoreNumber4_2];
                                }
                                else if(lSDSs == 5){
                                    [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 302] setNormalImage:lexicalScoreNumber5_2];
                                }
                                else if(lSDSs == 6){
                                    [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 302] setNormalImage:lexicalScoreNumber6_2];
                                }
                                else if(lSDSs == 7){
                                    [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 302] setNormalImage:lexicalScoreNumber7_2];
                                }
                                else if(lSDSs == 8){
                                    [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 302] setNormalImage:lexicalScoreNumber8_2];
                                }
                                else if(lSDSs == 9){
                                    [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 302] setNormalImage:lexicalScoreNumber9_2];
                                }
                            }
                            lexicalScoreInt /= 10;
                            lexCount++;
                        }
                        
                        if(lexicalScore >= 100 && lexicalScore <= 199){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 301] setNormalImage:lexicalScoreNumber1_1];
                        }
                        else if(lexicalScore >= 200 && lexicalScore <= 299){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 301] setNormalImage:lexicalScoreNumber2_1];
                        }
                        else if(lexicalScore >= 300 && lexicalScore <= 399){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 301] setNormalImage:lexicalScoreNumber3_1];
                        }
                        else if(lexicalScore >= 400 && lexicalScore <= 499){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 301] setNormalImage:lexicalScoreNumber4_1];
                        }
                        else if(lexicalScore >= 500 && lexicalScore <= 599){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 301] setNormalImage:lexicalScoreNumber5_1];
                        }
                        else if(lexicalScore >= 600 && lexicalScore <= 699){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 301] setNormalImage:lexicalScoreNumber6_1];
                        }
                        else if(lexicalScore >= 700 && lexicalScore <= 799){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 301] setNormalImage:lexicalScoreNumber7_1];
                        }
                        else if(lexicalScore >= 800 && lexicalScore <= 899){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 301] setNormalImage:lexicalScoreNumber8_1];
                        }
                        else if(lexicalScore >= 900 && lexicalScore <= 999){
                            [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 301] setNormalImage:lexicalScoreNumber9_1];
                        }
                    }
                    else if(lexicalScore <= 0){
                        [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 303] setNormalImage:lexicalScoreNumber0_3];
                        [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 302] setNormalImage:lexicalScoreNumber0_2];
                        [(CCMenuItemSprite*)[lexicalScoreMenu getChildByTag: 301] setNormalImage:lexicalScoreNumber0_1];
                    }
                }
            }
            
            lexicalPrevScore = lexicalScore;
            
            if(lexicalSelectionMade) {
                lexicalSelectionMade = FALSE;
                [self nextLexicalWord];
                [self randomiseButtons];
            }
        }
        
        else if(lexicalTimeLeft <= 0 && !lexicalTimeUpDrawn){
            lexicalTimeUp = [CCSprite spriteWithFile:@"GameSplashImages/time_up_splash.png"];
            lexicalTimeUp.position = ccp(240, 160);
            [self addChild: lexicalTimeUp];
            [self scheduleOnce:@selector(lexicalGameOver:) delay:2];
            [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/voice_finish.mp3"];
            lexicalTimeUpDrawn = TRUE;
        }
        
        else {
            //Do nothing
        }
    }
}

-(void) initLexicalButtonImages{
    lexicalButtonA = [[CCSprite spriteWithFile:@"LexicalLetters/lex_a.png"]retain];
    lexicalButtonASelected = [[CCSprite spriteWithFile:@"LexicalLetters/lex_a_selected.png"]retain];
    lexicalButtonB = [[CCSprite spriteWithFile:@"LexicalLetters/lex_b.png"]retain];
    lexicalButtonBSelected = [[CCSprite spriteWithFile:@"LexicalLetters/lex_b_selected.png"]retain];
    lexicalButtonC = [[CCSprite spriteWithFile:@"LexicalLetters/lex_c.png"]retain];
    lexicalButtonCSelected = [[CCSprite spriteWithFile:@"LexicalLetters/lex_c_selected.png"]retain];
    lexicalButtonD = [[CCSprite spriteWithFile:@"LexicalLetters/lex_d.png"]retain];
    lexicalButtonDSelected = [[CCSprite spriteWithFile:@"LexicalLetters/lex_d_selected.png"]retain];
    lexicalButtonE = [[CCSprite spriteWithFile:@"LexicalLetters/lex_e.png"]retain];
    lexicalButtonESelected = [[CCSprite spriteWithFile:@"LexicalLetters/lex_e_selected.png"]retain];
    lexicalButtonF = [[CCSprite spriteWithFile:@"LexicalLetters/lex_f.png"]retain];
    lexicalButtonFSelected = [[CCSprite spriteWithFile:@"LexicalLetters/lex_f_selected.png"]retain];
    lexicalButtonG = [[CCSprite spriteWithFile:@"LexicalLetters/lex_g.png"]retain];
    lexicalButtonGSelected = [[CCSprite spriteWithFile:@"LexicalLetters/lex_g_selected.png"]retain];
    lexicalButtonH = [[CCSprite spriteWithFile:@"LexicalLetters/lex_h.png"]retain];
    lexicalButtonHSelected = [[CCSprite spriteWithFile:@"LexicalLetters/lex_h_selected.png"]retain];
    lexicalButtonI = [[CCSprite spriteWithFile:@"LexicalLetters/lex_i.png"]retain];
    lexicalButtonISelected = [[CCSprite spriteWithFile:@"LexicalLetters/lex_i_selected.png"]retain];
    lexicalButtonJ = [[CCSprite spriteWithFile:@"LexicalLetters/lex_j.png"]retain];
    lexicalButtonJSelected = [[CCSprite spriteWithFile:@"LexicalLetters/lex_j_selected.png"]retain];
    lexicalButtonK = [[CCSprite spriteWithFile:@"LexicalLetters/lex_k.png"]retain];
    lexicalButtonKSelected = [[CCSprite spriteWithFile:@"LexicalLetters/lex_k_selected.png"]retain];
    lexicalButtonL = [[CCSprite spriteWithFile:@"LexicalLetters/lex_l.png"]retain];
    lexicalButtonLSelected = [[CCSprite spriteWithFile:@"LexicalLetters/lex_l_selected.png"]retain];
    lexicalButtonM = [[CCSprite spriteWithFile:@"LexicalLetters/lex_m.png"]retain];
    lexicalButtonMSelected = [[CCSprite spriteWithFile:@"LexicalLetters/lex_m_selected.png"]retain];
    lexicalButtonN = [[CCSprite spriteWithFile:@"LexicalLetters/lex_n.png"]retain];
    lexicalButtonNSelected = [[CCSprite spriteWithFile:@"LexicalLetters/lex_n_selected.png"]retain];
    lexicalButtonO = [[CCSprite spriteWithFile:@"LexicalLetters/lex_o.png"]retain];
    lexicalButtonOSelected = [[CCSprite spriteWithFile:@"LexicalLetters/lex_o_selected.png"]retain];
    lexicalButtonP = [[CCSprite spriteWithFile:@"LexicalLetters/lex_p.png"]retain];
    lexicalButtonPSelected = [[CCSprite spriteWithFile:@"LexicalLetters/lex_p_selected.png"]retain];
    lexicalButtonQ = [[CCSprite spriteWithFile:@"LexicalLetters/lex_q.png"]retain];
    lexicalButtonQSelected = [[CCSprite spriteWithFile:@"LexicalLetters/lex_q_selected.png"]retain];
    lexicalButtonR = [[CCSprite spriteWithFile:@"LexicalLetters/lex_r.png"]retain];
    lexicalButtonRSelected = [[CCSprite spriteWithFile:@"LexicalLetters/lex_r_selected.png"]retain];
    lexicalButtonS = [[CCSprite spriteWithFile:@"LexicalLetters/lex_s.png"]retain];
    lexicalButtonSSelected = [[CCSprite spriteWithFile:@"LexicalLetters/lex_s_selected.png"]retain];
    lexicalButtonT = [[CCSprite spriteWithFile:@"LexicalLetters/lex_t.png"]retain];
    lexicalButtonTSelected = [[CCSprite spriteWithFile:@"LexicalLetters/lex_t_selected.png"]retain];
    lexicalButtonU = [[CCSprite spriteWithFile:@"LexicalLetters/lex_u.png"]retain];
    lexicalButtonUSelected = [[CCSprite spriteWithFile:@"LexicalLetters/lex_u_selected.png"]retain];
    lexicalButtonV = [[CCSprite spriteWithFile:@"LexicalLetters/lex_v.png"]retain];
    lexicalButtonVSelected = [[CCSprite spriteWithFile:@"LexicalLetters/lex_v_selected.png"]retain];
    lexicalButtonW = [[CCSprite spriteWithFile:@"LexicalLetters/lex_w.png"]retain];
    lexicalButtonWSelected = [[CCSprite spriteWithFile:@"LexicalLetters/lex_w_selected.png"]retain];
    lexicalButtonX = [[CCSprite spriteWithFile:@"LexicalLetters/lex_x.png"]retain];
    lexicalButtonXSelected = [[CCSprite spriteWithFile:@"LexicalLetters/lex_x_selected.png"]retain];
    lexicalButtonY = [[CCSprite spriteWithFile:@"LexicalLetters/lex_y.png"]retain];
    lexicalButtonYSelected = [[CCSprite spriteWithFile:@"LexicalLetters/lex_y_selected.png"]retain];
    lexicalButtonZ = [[CCSprite spriteWithFile:@"LexicalLetters/lex_z.png"]retain];
    lexicalButtonZSelected = [[CCSprite spriteWithFile:@"LexicalLetters/lex_z_selected.png"]retain];
    
    lexicalButtonACopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_a.png"]retain];
    lexicalButtonASelectedCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_a_selected.png"]retain];
    lexicalButtonBCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_b.png"]retain];
    lexicalButtonBSelectedCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_b_selected.png"]retain];
    lexicalButtonCCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_c.png"]retain];
    lexicalButtonCSelectedCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_c_selected.png"]retain];
    lexicalButtonDCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_d.png"]retain];
    lexicalButtonDSelectedCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_d_selected.png"]retain];
    lexicalButtonECopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_e.png"]retain];
    lexicalButtonESelectedCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_e_selected.png"]retain];
    lexicalButtonFCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_f.png"]retain];
    lexicalButtonFSelectedCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_f_selected.png"]retain];
    lexicalButtonGCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_g.png"]retain];
    lexicalButtonGSelectedCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_g_selected.png"]retain];
    lexicalButtonHCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_h.png"]retain];
    lexicalButtonHSelectedCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_h_selected.png"]retain];
    lexicalButtonICopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_i.png"]retain];
    lexicalButtonISelectedCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_i_selected.png"]retain];
    lexicalButtonJCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_j.png"]retain];
    lexicalButtonJSelectedCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_j_selected.png"]retain];
    lexicalButtonKCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_k.png"]retain];
    lexicalButtonKSelectedCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_k_selected.png"]retain];
    lexicalButtonLCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_l.png"]retain];
    lexicalButtonLSelectedCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_l_selected.png"]retain];
    lexicalButtonMCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_m.png"]retain];
    lexicalButtonMSelectedCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_m_selected.png"]retain];
    lexicalButtonNCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_n.png"]retain];
    lexicalButtonNSelectedCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_n_selected.png"]retain];
    lexicalButtonOCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_o.png"]retain];
    lexicalButtonOSelectedCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_o_selected.png"]retain];
    lexicalButtonPCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_p.png"]retain];
    lexicalButtonPSelectedCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_p_selected.png"]retain];
    lexicalButtonQCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_q.png"]retain];
    lexicalButtonQSelectedCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_q_selected.png"]retain];
    lexicalButtonRCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_r.png"]retain];
    lexicalButtonRSelectedCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_r_selected.png"]retain];
    lexicalButtonSCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_s.png"]retain];
    lexicalButtonSSelectedCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_s_selected.png"]retain];
    lexicalButtonTCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_t.png"]retain];
    lexicalButtonTSelectedCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_t_selected.png"]retain];
    lexicalButtonUCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_u.png"]retain];
    lexicalButtonUSelectedCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_u_selected.png"]retain];
    lexicalButtonVCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_v.png"]retain];
    lexicalButtonVSelectedCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_v_selected.png"]retain];
    lexicalButtonWCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_w.png"]retain];
    lexicalButtonWSelectedCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_w_selected.png"]retain];
    lexicalButtonXCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_x.png"]retain];
    lexicalButtonXSelectedCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_x_selected.png"]retain];
    lexicalButtonYCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_y.png"]retain];
    lexicalButtonYSelectedCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_y_selected.png"]retain];
    lexicalButtonZCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_z.png"]retain];
    lexicalButtonZSelectedCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_z_selected.png"]retain];
    
    lexicalMenuButton1 = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                 selectedSprite:NULL
                                                         target:self
                                                       selector:@selector(buttonOnePressed:)]retain];
    
    lexicalMenuButton2 = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                 selectedSprite:NULL
                                                         target:self
                                                       selector:@selector(buttonTwoPressed:)]retain];
    
    lexicalMenuButton3 = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                 selectedSprite:NULL
                                                         target:self
                                                       selector:@selector(buttonThreePressed:)]retain];
    
    lexicalMenuButton4 = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                 selectedSprite:NULL
                                                         target:self
                                                       selector:@selector(buttonFourPressed:)]retain];
    
    [lexicalMenuButton1 setTag: 401];
    [lexicalMenuButton2 setTag: 402];
    [lexicalMenuButton3 setTag: 403];
    [lexicalMenuButton4 setTag: 404];
    
    lexicalButtonMenu = [[CCMenu menuWithItems: lexicalMenuButton1, lexicalMenuButton2, lexicalMenuButton3, lexicalMenuButton4, nil]retain];
    [lexicalButtonMenu alignItemsHorizontallyWithPadding: 119];
    lexicalButtonMenu.position = ccp(240, 45);
    
    [lexicalButtonLayer addChild: lexicalButtonMenu];
    lexicalButtonLayer.position = ccp(1000, 1000);
}

-(void) initLexicalScoreTimeElements{
    //ITEM IMAGES
   lexicalScoreLetterS = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_s_30px.png"
                                                  selectedImage:NULL];
    
    lexicalScoreLetterC = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_c_30px.png"
                                                  selectedImage:NULL];
    
    lexicalScoreLetterO = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_o_30px.png"
                                                  selectedImage:NULL];
    
    lexicalScoreLetterR = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_r_30px.png"
                                                  selectedImage:NULL];
    
    lexicalScoreLetterE = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_e_30px.png"
                                                  selectedImage:NULL];
    
    lexicalTimeLetterT = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_t_30px.png"
                                                 selectedImage:NULL];
    
    lexicalTimeLetterI = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_i_30px.png"
                                                 selectedImage:NULL];
    
    lexicalTimeLetterM = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_m_30px.png"
                                                 selectedImage:NULL];
    
    lexicalTimeLetterE = [CCMenuItemImage itemWithNormalImage:@"GeneralLetters/letters_30px/letter_e_30px.png"
                                                 selectedImage:NULL];
    
    lexicalScoreLetterColon = [CCMenuItemImage itemWithNormalImage:@"NumberSigns/signs_30px/letters_colon_30px.png"
                                                      selectedImage:NULL];
    
    lexicalTimeLetterColon = [CCMenuItemImage itemWithNormalImage:@"NumberSigns/signs_30px/letters_colon_30px.png"
                                                     selectedImage:NULL];
    
    lexicalTimeLetterPoint = [CCMenuItemImage itemWithNormalImage:@"NumberSigns/signs_30px/letter_point_30px.png"
                                                     selectedImage:NULL];

    
    //ITEM SPRITES
    lexicalScoreNumber0_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_0_30px.png"] retain];
    lexicalScoreNumber0_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_0_30px.png"] retain];
    lexicalScoreNumber0_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_0_30px.png"] retain];
    lexicalScoreNumber0_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_0_30px.png"] retain];
    lexicalScoreNumber0_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_0_30px.png"] retain];
    lexicalScoreNumber0_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_0_30px.png"] retain];
    lexicalScoreNumber1_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_1_30px.png"] retain];
    lexicalScoreNumber1_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_1_30px.png"] retain];
    lexicalScoreNumber1_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_1_30px.png"] retain];
    lexicalScoreNumber1_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_1_30px.png"] retain];
    lexicalScoreNumber1_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_1_30px.png"] retain];
    lexicalScoreNumber1_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_1_30px.png"] retain];
    lexicalScoreNumber2_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_2_30px.png"] retain];
    lexicalScoreNumber2_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_2_30px.png"] retain];
    lexicalScoreNumber2_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_2_30px.png"] retain];
    lexicalScoreNumber2_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_2_30px.png"] retain];
    lexicalScoreNumber2_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_2_30px.png"] retain];
    lexicalScoreNumber2_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_2_30px.png"] retain];
    lexicalScoreNumber3_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_3_30px.png"] retain];
    lexicalScoreNumber3_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_3_30px.png"] retain];
    lexicalScoreNumber3_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_3_30px.png"] retain];
    lexicalScoreNumber3_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_3_30px.png"] retain];
    lexicalScoreNumber3_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_3_30px.png"] retain];
    lexicalScoreNumber3_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_3_30px.png"] retain];
    lexicalScoreNumber4_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_4_30px.png"] retain];
    lexicalScoreNumber4_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_4_30px.png"] retain];
    lexicalScoreNumber4_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_4_30px.png"] retain];
    lexicalScoreNumber4_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_4_30px.png"] retain];
    lexicalScoreNumber4_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_4_30px.png"] retain];
    lexicalScoreNumber4_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_4_30px.png"] retain];
    lexicalScoreNumber5_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_5_30px.png"] retain];
    lexicalScoreNumber5_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_5_30px.png"] retain];
    lexicalScoreNumber5_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_5_30px.png"] retain];
    lexicalScoreNumber5_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_5_30px.png"] retain];
    lexicalScoreNumber5_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_5_30px.png"] retain];
    lexicalScoreNumber5_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_5_30px.png"] retain];
    lexicalScoreNumber6_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_6_30px.png"] retain];
    lexicalScoreNumber6_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_6_30px.png"] retain];
    lexicalScoreNumber6_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_6_30px.png"] retain];
    lexicalScoreNumber6_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_6_30px.png"] retain];
    lexicalScoreNumber6_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_6_30px.png"] retain];
    lexicalScoreNumber6_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_6_30px.png"] retain];
    lexicalScoreNumber7_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_7_30px.png"] retain];
    lexicalScoreNumber7_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_7_30px.png"] retain];
    lexicalScoreNumber7_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_7_30px.png"] retain];
    lexicalScoreNumber7_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_7_30px.png"] retain];
    lexicalScoreNumber7_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_7_30px.png"] retain];
    lexicalScoreNumber7_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_7_30px.png"] retain];
    lexicalScoreNumber8_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_8_30px.png"] retain];
    lexicalScoreNumber8_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_8_30px.png"] retain];
    lexicalScoreNumber8_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_8_30px.png"] retain];
    lexicalScoreNumber8_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_8_30px.png"] retain];
    lexicalScoreNumber8_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_8_30px.png"] retain];
    lexicalScoreNumber8_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_8_30px.png"] retain];
    lexicalScoreNumber9_1 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_9_30px.png"] retain];
    lexicalScoreNumber9_2 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_9_30px.png"] retain];
    lexicalScoreNumber9_3 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_9_30px.png"] retain];
    lexicalScoreNumber9_4 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_9_30px.png"] retain];
    lexicalScoreNumber9_5 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_9_30px.png"] retain];
    lexicalScoreNumber9_6 = [[CCSprite spriteWithFile:@"GeneralNumbers/numbers_30px/number_9_30px.png"] retain];
    
    lexicalScoreDigitOne = [[CCMenuItemSprite itemWithNormalSprite:lexicalScoreNumber0_1
                                                    selectedSprite:NULL]retain];
    
    lexicalScoreDigitTwo = [[CCMenuItemSprite itemWithNormalSprite:lexicalScoreNumber0_2
                                                    selectedSprite:NULL]retain];
    
    lexicalScoreDigitThree = [[CCMenuItemSprite itemWithNormalSprite:lexicalScoreNumber0_3
                                                      selectedSprite:NULL]retain];
    
    lexicalTimeDigitOne = [[CCMenuItemSprite itemWithNormalSprite:lexicalScoreNumber6_4
                                                   selectedSprite:NULL]retain];
    
    lexicalTimeDigitTwo = [[CCMenuItemSprite itemWithNormalSprite:lexicalScoreNumber0_5
                                                   selectedSprite:NULL]retain];
    
    lexicalTimeDigitThree = [[CCMenuItemSprite itemWithNormalSprite:lexicalScoreNumber0_6
                                                     selectedSprite:NULL]retain];
    
    [lexicalScoreDigitOne setTag: 301];
    [lexicalScoreDigitTwo setTag: 302];
    [lexicalScoreDigitThree setTag: 303];
    
    [lexicalTimeDigitOne setTag: 201];
    [lexicalTimeDigitTwo setTag: 202];
    [lexicalTimeDigitThree setTag: 203];
    
    lexicalScoreMenu = [[CCMenu menuWithItems:lexicalScoreLetterS, lexicalScoreLetterC, lexicalScoreLetterO, lexicalScoreLetterR, lexicalScoreLetterE, lexicalScoreLetterColon, lexicalScoreDigitOne, lexicalScoreDigitTwo, lexicalScoreDigitThree, nil]retain];
    
    lexicalTimeMenu = [[CCMenu menuWithItems:lexicalTimeLetterT, lexicalTimeLetterI, lexicalTimeLetterM, lexicalTimeLetterE, lexicalTimeLetterColon,lexicalTimeDigitOne, lexicalTimeDigitTwo, lexicalTimeLetterPoint, lexicalTimeDigitThree, nil]retain];
    
    [lexicalScoreMenu alignItemsHorizontallyWithPadding:2];
    [lexicalTimeMenu alignItemsHorizontallyWithPadding:2];
    lexicalScoreMenu.position = ccp(60, 305);
    lexicalTimeMenu.position = ccp(420, 305);
    [lexicalScoreTimeLayer addChild:lexicalScoreMenu];
    [lexicalScoreTimeLayer addChild:lexicalTimeMenu];
    lexicalScoreTimeLayer.position = ccp(1000, 1000);
}

-(void) initLexicalWordItems{
    //INITIALISE WORD IMAGES
    lexicalWordAcronym = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_acronym.png"]retain];
    lexicalWordAcrylic = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_acrylic.png"]retain];
    lexicalWordAnymore = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_anymore.png"]retain];
    lexicalWordAwesome = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_awesome.png"]retain];
    lexicalWordBathing = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_bathing.png"]retain];
    lexicalWordBazooka = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_bazooka.png"]retain];
    lexicalWordBelched = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_belched.png"]retain];
    lexicalWordBottoms = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_bottoms.png"]retain];
    lexicalWordCalzone = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_calzone.png"]retain];
    lexicalWordCentrum = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_centrum.png"]retain];
    lexicalWordChortle = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_chortle.png"]retain];
    lexicalWordCompels = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_compels.png"]retain];
    lexicalWordDetoxes = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_detoxes.png"]retain];
    lexicalWordDollops = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_dollops.png"]retain];
    lexicalWordDuality = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_duality.png"]retain];
    lexicalWordDugongs = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_dugongs.png"]retain];
    lexicalWordEditors = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_editors.png"]retain];
    lexicalWordEgghead = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_egghead.png"]retain];
    lexicalWordElastic = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_elastic.png"]retain];
    lexicalWordExcrete = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_excrete.png"]retain];
    lexicalWordFarting = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_farting.png"]retain];
    lexicalWordFathoms = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_fathoms.png"]retain];
    lexicalWordFiddler = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_fiddler.png"]retain];
    lexicalWordFlaccid = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_flaccid.png"]retain];
    lexicalWordGelatin = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_gelatin.png"]retain];
    lexicalWordGluteus = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_gluteus.png"]retain];
    lexicalWordGrasped = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_grasped.png"]retain];
    lexicalWordGuineas = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_guineas.png"]retain];
    lexicalWordHaddock = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_haddock.png"]retain];
    lexicalWordHijacks = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_hijacks.png"]retain];
    lexicalWordHonkers = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_honkers.png"]retain];
    lexicalWordHydrant = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_hydrant.png"]retain];
    lexicalWordImplode = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_implode.png"]retain];
    lexicalWordIridium = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_iridium.png"]retain];
    lexicalWordIroning = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_ironing.png"]retain];
    lexicalWordIsotope = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_isotope.png"]retain];
    lexicalWordJanitor = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_janitor.png"]retain];
    lexicalWordJockeys = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_jockeys.png"]retain];
    lexicalWordJudging = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_judging.png"]retain];
    lexicalWordJuniper = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_juniper.png"]retain];
    lexicalWordKarting = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_karting.png"]retain];
    lexicalWordKnocker = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_knocker.png"]retain];
    lexicalWordKobolds = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_kobolds.png"]retain];
    lexicalWordKumquat = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_kumquat.png"]retain];
    lexicalWordLasagne = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_lasagne.png"]retain];
    lexicalWordLegible = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_legible.png"]retain];
    lexicalWordLoathed = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_loathed.png"]retain];
    lexicalWordLychees = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_lychees.png"]retain];
    lexicalWordMahjong = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_mahjong.png"]retain];
    lexicalWordManhole = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_manhole.png"]retain];
    lexicalWordMitosis = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_mitosis.png"]retain];
    lexicalWordMuncher = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_muncher.png"]retain];
    lexicalWordNarcism = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_narcism.png"]retain];
    lexicalWordNewbies = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_newbies.png"]retain];
    lexicalWordNitwits = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_nitwits.png"]retain];
    lexicalWordNoodles = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_noodles.png"]retain];
    lexicalWordOctopus = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_octopus.png"]retain];
    lexicalWordOnagers = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_onagers.png"]retain];
    lexicalWordOrganic = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_organic.png"]retain];
    lexicalWordOxidant = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_oxidant.png"]retain];
    lexicalWordPackage = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_package.png"]retain];
    lexicalWordParfait = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_parfait.png"]retain];
    lexicalWordPerplex = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_perplex.png"]retain];
    lexicalWordPincers = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_pincers.png"]retain];
    lexicalWordQuacked = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_quacked.png"]retain];
    lexicalWordQueried = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_queried.png"]retain];
    lexicalWordQuintet = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_quintet.png"]retain];
    lexicalWordQuivers = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_quivers.png"]retain];
    lexicalWordRectory = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_rectory.png"]retain];
    lexicalWordRhubarb = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_rhubarb.png"]retain];
    lexicalWordRoulade = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_roulade.png"]retain];
    lexicalWordRustier = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_rustier.png"]retain];
    lexicalWordSandbox = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_sandbox.png"]retain];
    lexicalWordSextets = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_sextets.png"]retain];
    lexicalWordShoguns = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_shoguns.png"]retain];
    lexicalWordSpelunk = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_spelunk.png"]retain];
    lexicalWordTableau = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_tableau.png"]retain];
    lexicalWordTimpani = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_timpani.png"]retain];
    lexicalWordTopless = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_topless.png"]retain];
    lexicalWordTubists = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_tubists.png"]retain];
    lexicalWordUmpteen = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_umpteen.png"]retain];
    lexicalWordUnboxed = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_unboxed.png"]retain];
    lexicalWordUpkeeps = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_upkeeps.png"]retain];
    lexicalWordUrinals = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_urinals.png"]retain];
    lexicalWordVaguely = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_vaguely.png"]retain];
    lexicalWordVintage = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_vintage.png"]retain];
    lexicalWordViscous = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_viscous.png"]retain];
    lexicalWordVomiter = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_vomiter.png"]retain];
    lexicalWordWalnuts = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_walnuts.png"]retain];
    lexicalWordWizards = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_wizards.png"]retain];
    lexicalWordWordage = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_wordage.png"]retain];
    lexicalWordWyverns = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_wyverns.png"]retain];
    lexicalWordXanthic = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_xanthic.png"]retain];
    lexicalWordXenopus = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_xenopus.png"]retain];
    lexicalWordXerotic = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_xerotic.png"]retain];
    lexicalWordXyloses = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_xyloses.png"]retain];
    lexicalWordYcleped = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_ycleped.png"]retain];
    lexicalWordYeshiva = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_yeshiva.png"]retain];
    lexicalWordYoghurt = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_yoghurt.png"]retain];
    lexicalWordYowlers = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_yowlers.png"]retain];
    lexicalWordZealots = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_zealots.png"]retain];
    lexicalWordZelkova = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_zelkova.png"]retain];
    lexicalWordZestily = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_zestily.png"]retain];
    lexicalWordZygotes = [[CCSprite spriteWithFile:@"LexicalWords/lex_word_zygotes.png"]retain];
    
    //SET WORD TAGS FOR RECALL
    [lexicalWordAcronym setTag:0];
    [lexicalWordAcrylic setTag:1];
    [lexicalWordAnymore setTag:2];
    [lexicalWordAwesome setTag:3];
    [lexicalWordBathing setTag:4];
    [lexicalWordBazooka setTag:5];
    [lexicalWordBelched setTag:6];
    [lexicalWordBottoms setTag:7];
    [lexicalWordCalzone setTag:8];
    [lexicalWordCentrum setTag:9];
    [lexicalWordChortle setTag:10];
    [lexicalWordCompels setTag:11];
    [lexicalWordDetoxes setTag:12];
    [lexicalWordDollops setTag:13];
    [lexicalWordDuality setTag:14];
    [lexicalWordDugongs setTag:15];
    [lexicalWordEditors setTag:16];
    [lexicalWordEgghead setTag:17];
    [lexicalWordElastic setTag:18];
    [lexicalWordExcrete setTag:19];
    [lexicalWordFarting setTag:20];
    [lexicalWordFathoms setTag:21];
    [lexicalWordFiddler setTag:22];
    [lexicalWordFlaccid setTag:23];
    [lexicalWordGelatin setTag:24];
    [lexicalWordGluteus setTag:25];
    [lexicalWordGrasped setTag:26];
    [lexicalWordGuineas setTag:27];
    [lexicalWordHaddock setTag:28];
    [lexicalWordHijacks setTag:29];
    [lexicalWordHonkers setTag:30];
    [lexicalWordHydrant setTag:31];
    [lexicalWordImplode setTag:32];
    [lexicalWordIridium setTag:33];
    [lexicalWordIroning setTag:34];
    [lexicalWordIsotope setTag:35];
    [lexicalWordJanitor setTag:36];
    [lexicalWordJockeys setTag:37];
    [lexicalWordJudging setTag:38];
    [lexicalWordJuniper setTag:39];
    [lexicalWordKarting setTag:40];
    [lexicalWordKnocker setTag:41];
    [lexicalWordKobolds setTag:42];
    [lexicalWordKumquat setTag:43];
    [lexicalWordLasagne setTag:44];
    [lexicalWordLegible setTag:45];
    [lexicalWordLoathed setTag:46];
    [lexicalWordLychees setTag:47];
    [lexicalWordMahjong setTag:48];
    [lexicalWordManhole setTag:49];
    [lexicalWordMitosis setTag:50];
    [lexicalWordMuncher setTag:51];
    [lexicalWordNarcism setTag:52];
    [lexicalWordNewbies setTag:53];
    [lexicalWordNitwits setTag:54];
    [lexicalWordNoodles setTag:55];
    [lexicalWordOctopus setTag:56];
    [lexicalWordOnagers setTag:57];
    [lexicalWordOrganic setTag:58];
    [lexicalWordOxidant setTag:59];
    [lexicalWordPackage setTag:60];
    [lexicalWordParfait setTag:61];
    [lexicalWordPerplex setTag:62];
    [lexicalWordPincers setTag:63];
    [lexicalWordQuacked setTag:64];
    [lexicalWordQueried setTag:65];
    [lexicalWordQuintet setTag:66];
    [lexicalWordQuivers setTag:67];
    [lexicalWordRectory setTag:68];
    [lexicalWordRhubarb setTag:69];
    [lexicalWordRoulade setTag:70];
    [lexicalWordRustier setTag:71];
    [lexicalWordSandbox setTag:72];
    [lexicalWordSextets setTag:73];
    [lexicalWordShoguns setTag:74];
    [lexicalWordSpelunk setTag:75];
    [lexicalWordTableau setTag:76];
    [lexicalWordTimpani setTag:77];
    [lexicalWordTopless setTag:78];
    [lexicalWordTubists setTag:79];
    [lexicalWordUmpteen setTag:80];
    [lexicalWordUnboxed setTag:81];
    [lexicalWordUpkeeps setTag:82];
    [lexicalWordUrinals setTag:83];
    [lexicalWordVaguely setTag:84];
    [lexicalWordVintage setTag:85];
    [lexicalWordViscous setTag:86];
    [lexicalWordVomiter setTag:87];
    [lexicalWordWalnuts setTag:88];
    [lexicalWordWizards setTag:89];
    [lexicalWordWordage setTag:90];
    [lexicalWordWyverns setTag:91];
    [lexicalWordXanthic setTag:92];
    [lexicalWordXenopus setTag:93];
    [lexicalWordXerotic setTag:94];
    [lexicalWordXyloses setTag:95];
    [lexicalWordYcleped setTag:96];
    [lexicalWordYeshiva setTag:97];
    [lexicalWordYoghurt setTag:98];
    [lexicalWordYowlers setTag:99];
    [lexicalWordZealots setTag:100];
    [lexicalWordZelkova setTag:101];
    [lexicalWordZestily setTag:102];
    [lexicalWordZygotes setTag:103];
    
    //CREATE WORD ARRAY
    lexicalWordArray = [[CCArray arrayWithCapacity: 104]retain];
    
    //ADD TO ARRAY
    [lexicalWordArray addObject: lexicalWordAcronym];
    [lexicalWordArray addObject: lexicalWordAcrylic];
    [lexicalWordArray addObject: lexicalWordAnymore];
    [lexicalWordArray addObject: lexicalWordAwesome];
    [lexicalWordArray addObject: lexicalWordBathing];
    [lexicalWordArray addObject: lexicalWordBazooka];
    [lexicalWordArray addObject: lexicalWordBelched];
    [lexicalWordArray addObject: lexicalWordBottoms];
    [lexicalWordArray addObject: lexicalWordCalzone];
    [lexicalWordArray addObject: lexicalWordCentrum];
    [lexicalWordArray addObject: lexicalWordChortle];
    [lexicalWordArray addObject: lexicalWordCompels];
    [lexicalWordArray addObject: lexicalWordDetoxes];
    [lexicalWordArray addObject: lexicalWordDollops];
    [lexicalWordArray addObject: lexicalWordDuality];
    [lexicalWordArray addObject: lexicalWordDugongs];
    [lexicalWordArray addObject: lexicalWordEditors];
    [lexicalWordArray addObject: lexicalWordEgghead];
    [lexicalWordArray addObject: lexicalWordElastic];
    [lexicalWordArray addObject: lexicalWordExcrete];
    [lexicalWordArray addObject: lexicalWordFarting];
    [lexicalWordArray addObject: lexicalWordFathoms];
    [lexicalWordArray addObject: lexicalWordFiddler];
    [lexicalWordArray addObject: lexicalWordFlaccid];
    [lexicalWordArray addObject: lexicalWordGelatin];
    [lexicalWordArray addObject: lexicalWordGluteus];
    [lexicalWordArray addObject: lexicalWordGrasped];
    [lexicalWordArray addObject: lexicalWordGuineas];
    [lexicalWordArray addObject: lexicalWordHaddock];
    [lexicalWordArray addObject: lexicalWordHijacks];
    [lexicalWordArray addObject: lexicalWordHonkers];
    [lexicalWordArray addObject: lexicalWordHydrant];
    [lexicalWordArray addObject: lexicalWordImplode];
    [lexicalWordArray addObject: lexicalWordIridium];
    [lexicalWordArray addObject: lexicalWordIroning];
    [lexicalWordArray addObject: lexicalWordIsotope];
    [lexicalWordArray addObject: lexicalWordJanitor];
    [lexicalWordArray addObject: lexicalWordJockeys];
    [lexicalWordArray addObject: lexicalWordJudging];
    [lexicalWordArray addObject: lexicalWordJuniper];
    [lexicalWordArray addObject: lexicalWordKarting];
    [lexicalWordArray addObject: lexicalWordKnocker];
    [lexicalWordArray addObject: lexicalWordKobolds];
    [lexicalWordArray addObject: lexicalWordKumquat];
    [lexicalWordArray addObject: lexicalWordLasagne];
    [lexicalWordArray addObject: lexicalWordLegible];
    [lexicalWordArray addObject: lexicalWordLoathed];
    [lexicalWordArray addObject: lexicalWordLychees];
    [lexicalWordArray addObject: lexicalWordMahjong];
    [lexicalWordArray addObject: lexicalWordManhole];
    [lexicalWordArray addObject: lexicalWordMitosis];
    [lexicalWordArray addObject: lexicalWordMuncher];
    [lexicalWordArray addObject: lexicalWordNarcism];
    [lexicalWordArray addObject: lexicalWordNewbies];
    [lexicalWordArray addObject: lexicalWordNitwits];
    [lexicalWordArray addObject: lexicalWordNoodles];
    [lexicalWordArray addObject: lexicalWordOctopus];
    [lexicalWordArray addObject: lexicalWordOnagers];
    [lexicalWordArray addObject: lexicalWordOrganic];
    [lexicalWordArray addObject: lexicalWordOxidant];
    [lexicalWordArray addObject: lexicalWordPackage];
    [lexicalWordArray addObject: lexicalWordParfait];
    [lexicalWordArray addObject: lexicalWordPerplex];
    [lexicalWordArray addObject: lexicalWordPincers];
    [lexicalWordArray addObject: lexicalWordQuacked];
    [lexicalWordArray addObject: lexicalWordQueried];
    [lexicalWordArray addObject: lexicalWordQuintet];
    [lexicalWordArray addObject: lexicalWordQuivers];
    [lexicalWordArray addObject: lexicalWordRectory];
    [lexicalWordArray addObject: lexicalWordRhubarb];
    [lexicalWordArray addObject: lexicalWordRoulade];
    [lexicalWordArray addObject: lexicalWordRustier];
    [lexicalWordArray addObject: lexicalWordSandbox];
    [lexicalWordArray addObject: lexicalWordSextets];
    [lexicalWordArray addObject: lexicalWordShoguns];
    [lexicalWordArray addObject: lexicalWordSpelunk];
    [lexicalWordArray addObject: lexicalWordTableau];
    [lexicalWordArray addObject: lexicalWordTimpani];
    [lexicalWordArray addObject: lexicalWordTopless];
    [lexicalWordArray addObject: lexicalWordTubists];
    [lexicalWordArray addObject: lexicalWordUmpteen];
    [lexicalWordArray addObject: lexicalWordUnboxed];
    [lexicalWordArray addObject: lexicalWordUpkeeps];
    [lexicalWordArray addObject: lexicalWordUrinals];
    [lexicalWordArray addObject: lexicalWordVaguely];
    [lexicalWordArray addObject: lexicalWordVintage];
    [lexicalWordArray addObject: lexicalWordViscous];
    [lexicalWordArray addObject: lexicalWordVomiter];
    [lexicalWordArray addObject: lexicalWordWalnuts];
    [lexicalWordArray addObject: lexicalWordWizards];
    [lexicalWordArray addObject: lexicalWordWordage];
    [lexicalWordArray addObject: lexicalWordWyverns];
    [lexicalWordArray addObject: lexicalWordXanthic];
    [lexicalWordArray addObject: lexicalWordXenopus];
    [lexicalWordArray addObject: lexicalWordXerotic];
    [lexicalWordArray addObject: lexicalWordXyloses];
    [lexicalWordArray addObject: lexicalWordYcleped];
    [lexicalWordArray addObject: lexicalWordYeshiva];
    [lexicalWordArray addObject: lexicalWordYoghurt];
    [lexicalWordArray addObject: lexicalWordYowlers];
    [lexicalWordArray addObject: lexicalWordZealots];
    [lexicalWordArray addObject: lexicalWordZelkova];
    [lexicalWordArray addObject: lexicalWordZestily];
    [lexicalWordArray addObject: lexicalWordZygotes];
    
    lexicalWordSprite = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                selectedSprite:NULL]retain];
    
    [lexicalWordSprite setTag: 1001];
    
    lexicalWordMenu = [[CCMenu menuWithItems: lexicalWordSprite, nil]retain];
    [lexicalWordMenu alignItemsHorizontally];
    lexicalWordMenu.position = ccp(240, 250);
    
    [lexicalWordLayer addChild: lexicalWordMenu];
    lexicalWordLayer.position = ccp(1000, 1000);
}

-(void) initLexicalGraphicImages{
    lexicalGraphic1st = [[CCSprite spriteWithFile:@"LexicalLetters/lex_1st.png"]retain];
    lexicalGraphic2nd = [[CCSprite spriteWithFile:@"LexicalLetters/lex_2nd.png"]retain];
    lexicalGraphic3rd = [[CCSprite spriteWithFile:@"LexicalLetters/lex_3rd.png"]retain];
    lexicalGraphic4th = [[CCSprite spriteWithFile:@"LexicalLetters/lex_4th.png"]retain];
    lexicalGraphic5th = [[CCSprite spriteWithFile:@"LexicalLetters/lex_5th.png"]retain];
    lexicalGraphic6th = [[CCSprite spriteWithFile:@"LexicalLetters/lex_6th.png"]retain];
    lexicalGraphic7th = [[CCSprite spriteWithFile:@"LexicalLetters/lex_7th.png"]retain];
    
    lexicalGraphic1stCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_1st.png"]retain];
    lexicalGraphic2ndCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_2nd.png"]retain];
    lexicalGraphic3rdCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_3rd.png"]retain];
    lexicalGraphic4thCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_4th.png"]retain];
    lexicalGraphic5thCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_5th.png"]retain];
    lexicalGraphic6thCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_6th.png"]retain];
    lexicalGraphic7thCopy = [[CCSprite spriteWithFile:@"LexicalLetters/lex_7th.png"]retain];
    
    lexicalLetterInTheWord = [[CCMenuItemImage itemWithNormalImage:@"LexicalWords/lex_letter_in_the_word.png"
                                                    selectedImage:NULL]retain];
    
    lexicalLetterNumSprite = [[CCMenuItemSprite itemWithNormalSprite:NULL
                                                      selectedSprite:NULL]retain];
    
    [lexicalLetterNumSprite setTag: 801];
    
    lexicalGraphicsMenu = [CCMenu menuWithItems: lexicalLetterNumSprite, lexicalLetterInTheWord, nil];
    [lexicalGraphicsMenu alignItemsHorizontallyWithPadding:80];
    lexicalGraphicsMenu.position = ccp(270, 160);
    
    [lexicalGraphicsLayer addChild: lexicalGraphicsMenu];
    lexicalGraphicsLayer.position = ccp(1000, 1000);
}

-(void) buttonOnePressed:(id)sender{
    if(!lexicalTimeUpDrawn){
        lexicalLetterChosen = lexicalButtonOneID;
        
        if([lexicalLetterChosen isEqualToString:lexicalActualAnswer]){
            lexicalScore += 5;
            [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
        }
        else{
            if(lexicalScore <= 0){
                lexicalScore = 0;
            }
            else{
                lexicalScore -= 5;
            }
            [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
        }
        
        lexicalAnswersGiven++;
        lexicalSelectionMade = TRUE;
    }
    else{
        
    }
}

-(void) buttonTwoPressed:(id)sender{
    if(!lexicalTimeUpDrawn){
        lexicalLetterChosen = lexicalButtonTwoID;
        
        if([lexicalLetterChosen isEqualToString:lexicalActualAnswer]){
            lexicalScore += 5;
            [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
        }
        else{
            if(lexicalScore <= 0){
                lexicalScore = 0;
            }
            else{
                lexicalScore -= 5;
            }
            [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
        }
        
        lexicalAnswersGiven++;
        lexicalSelectionMade = TRUE;
    }
    else{
        
    }
}

-(void) buttonThreePressed:(id)sender{
    if(!lexicalTimeUpDrawn){
        lexicalLetterChosen = lexicalButtonThreeID;
        
        if([lexicalLetterChosen isEqualToString:lexicalActualAnswer]){
            lexicalScore += 5;
            [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
        }
        else{
            if(lexicalScore <= 0){
                lexicalScore = 0;
            }
            else{
                lexicalScore -= 5;
            }
            [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
        }
        
        lexicalAnswersGiven++;
        lexicalSelectionMade = TRUE;
    }
    else{
        
    }
}

-(void) buttonFourPressed:(id)sender{
    if(!lexicalTimeUpDrawn){
        lexicalLetterChosen = lexicalButtonFourID;
        
        if([lexicalLetterChosen isEqualToString:lexicalActualAnswer]){
            lexicalScore += 5;
            [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/menu_selection_and_correct.mp3"];
        }
        else{
            if(lexicalScore <= 0){
                lexicalScore = 0;
            }
            else{
                lexicalScore -= 5;
            }
            [[SimpleAudioEngine sharedEngine] playEffect:@"AudioFiles/incorrect.mp3"];
        }
        
        lexicalAnswersGiven++;
        lexicalSelectionMade = TRUE;
    }
    else{
        
    }
}

-(void) lexicalGameOver:(ccTime)dt{
    //Sort scores etc
    [[NSUserDefaults standardUserDefaults] setInteger:3 forKey:@"gameID"];
    [[NSUserDefaults standardUserDefaults] setInteger:lexicalScore forKey:@"lScoreNew"];
    [[CCDirector sharedDirector] replaceScene: [CCTransitionFade transitionWithDuration:.5 scene: [GameFinish node] withColor:ccWHITE]];
}

-(void) drawLexicalElements{
    lexicalButtonLayer.position = ccp(0, 0);
    lexicalScoreTimeLayer.position = ccp(0, 0);
    lexicalWordLayer.position = ccp(0, 0);
    lexicalGraphicsLayer.position = ccp(0, 0);
    lexicalAllChange = FALSE;
    [self nextLexicalWord];
    [self randomiseButtons];
}

-(void) nextLexicalWord{
    lexicalWordRandomNumber = ((arc4random() % (104)));
    
    while(lexicalWordRandomNumber == lexicalPrevWordRandomNumber){
        lexicalWordRandomNumber = ((arc4random() % (104)));
    }
    
    [(CCMenuItemSprite*)[lexicalWordMenu getChildByTag: 1001] setNormalImage:[lexicalWordArray objectAtIndex:lexicalWordRandomNumber]];
    
    lexicalPrevWordRandomNumber = lexicalWordRandomNumber;
    wordChosen = lexicalWordRandomNumber;
}

-(void) randomiseButtons{
    [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] removeAllChildrenWithCleanup:YES];
    [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] removeAllChildrenWithCleanup:YES];
    [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] removeAllChildrenWithCleanup:YES];
    [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] removeAllChildrenWithCleanup:YES];
    
    [(CCMenuItemSprite*)[lexicalGraphicsMenu getChildByTag: 801] removeAllChildrenWithCleanup:YES];
    
    lexicalWordChoiceOne = @"";
    lexicalWordChoiceTwo = @"";
    lexicalWordChoiceThree = @"";
    lexicalWordChoiceFour = @"";
    
    if(wordChosen == 0){
        lexicalWordLetterOne = @"A";lexicalWordLetterTwo = @"C";lexicalWordLetterThree = @"R";lexicalWordLetterFour = @"O";lexicalWordLetterFive = @"N";lexicalWordLetterSix = @"Y";lexicalWordLetterSeven = @"M";
    }
    else if(wordChosen == 1){
        lexicalWordLetterOne = @"A";lexicalWordLetterTwo = @"C";lexicalWordLetterThree = @"R";lexicalWordLetterFour = @"Y";lexicalWordLetterFive = @"L";lexicalWordLetterSix = @"I";lexicalWordLetterSeven = @"C";
    }
    else if(wordChosen == 2){
        lexicalWordLetterOne = @"A";lexicalWordLetterTwo = @"N";lexicalWordLetterThree = @"Y";lexicalWordLetterFour = @"M";lexicalWordLetterFive = @"O";lexicalWordLetterSix = @"R";lexicalWordLetterSeven = @"E";
    }
    else if(wordChosen == 3){
        lexicalWordLetterOne = @"A";lexicalWordLetterTwo = @"W";lexicalWordLetterThree = @"E";lexicalWordLetterFour = @"S";lexicalWordLetterFive = @"O";lexicalWordLetterSix = @"M";lexicalWordLetterSeven = @"E";
    }
    else if(wordChosen == 4){
        lexicalWordLetterOne = @"B";lexicalWordLetterTwo = @"A";lexicalWordLetterThree = @"T";lexicalWordLetterFour = @"H";lexicalWordLetterFive = @"I";lexicalWordLetterSix = @"N";lexicalWordLetterSeven = @"G";
    }
    else if(wordChosen == 5){
        lexicalWordLetterOne = @"B";lexicalWordLetterTwo = @"A";lexicalWordLetterThree = @"Z";lexicalWordLetterFour = @"O";lexicalWordLetterFive = @"O";lexicalWordLetterSix = @"K";lexicalWordLetterSeven = @"A";
    }
    else if(wordChosen == 6){
        lexicalWordLetterOne = @"B";lexicalWordLetterTwo = @"E";lexicalWordLetterThree = @"L";lexicalWordLetterFour = @"C";lexicalWordLetterFive = @"H";lexicalWordLetterSix = @"E";lexicalWordLetterSeven = @"D";
    }
    else if(wordChosen == 7){
        lexicalWordLetterOne = @"B";lexicalWordLetterTwo = @"O";lexicalWordLetterThree = @"T";lexicalWordLetterFour = @"T";lexicalWordLetterFive = @"O";lexicalWordLetterSix = @"M";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 8){
        lexicalWordLetterOne = @"C";lexicalWordLetterTwo = @"A";lexicalWordLetterThree = @"L";lexicalWordLetterFour = @"Z";lexicalWordLetterFive = @"O";lexicalWordLetterSix = @"N";lexicalWordLetterSeven = @"E";
    }
    else if(wordChosen == 9){
        lexicalWordLetterOne = @"C";lexicalWordLetterTwo = @"E";lexicalWordLetterThree = @"N";lexicalWordLetterFour = @"T";lexicalWordLetterFive = @"R";lexicalWordLetterSix = @"U";lexicalWordLetterSeven = @"M";
    }
    else if(wordChosen == 10){
        lexicalWordLetterOne = @"C";lexicalWordLetterTwo = @"H";lexicalWordLetterThree = @"O";lexicalWordLetterFour = @"R";lexicalWordLetterFive = @"T";lexicalWordLetterSix = @"L";lexicalWordLetterSeven = @"E";
    }
    else if(wordChosen == 11){
        lexicalWordLetterOne = @"C";lexicalWordLetterTwo = @"O";lexicalWordLetterThree = @"M";lexicalWordLetterFour = @"P";lexicalWordLetterFive = @"E";lexicalWordLetterSix = @"L";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 12){
        lexicalWordLetterOne = @"D";lexicalWordLetterTwo = @"E";lexicalWordLetterThree = @"T";lexicalWordLetterFour = @"O";lexicalWordLetterFive = @"X";lexicalWordLetterSix = @"E";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 13){
        lexicalWordLetterOne = @"D";lexicalWordLetterTwo = @"O";lexicalWordLetterThree = @"L";lexicalWordLetterFour = @"L";lexicalWordLetterFive = @"O";lexicalWordLetterSix = @"P";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 14){
        lexicalWordLetterOne = @"D";lexicalWordLetterTwo = @"U";lexicalWordLetterThree = @"A";lexicalWordLetterFour = @"L";lexicalWordLetterFive = @"I";lexicalWordLetterSix = @"T";lexicalWordLetterSeven = @"Y";
    }
    else if(wordChosen == 15){
        lexicalWordLetterOne = @"D";lexicalWordLetterTwo = @"U";lexicalWordLetterThree = @"G";lexicalWordLetterFour = @"O";lexicalWordLetterFive = @"N";lexicalWordLetterSix = @"G";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 16){
        lexicalWordLetterOne = @"E";lexicalWordLetterTwo = @"D";lexicalWordLetterThree = @"I";lexicalWordLetterFour = @"T";lexicalWordLetterFive = @"O";lexicalWordLetterSix = @"R";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 17){
        lexicalWordLetterOne = @"E";lexicalWordLetterTwo = @"G";lexicalWordLetterThree = @"G";lexicalWordLetterFour = @"H";lexicalWordLetterFive = @"E";lexicalWordLetterSix = @"A";lexicalWordLetterSeven = @"D";
    }
    else if(wordChosen == 18){
        lexicalWordLetterOne = @"E";lexicalWordLetterTwo = @"L";lexicalWordLetterThree = @"A";lexicalWordLetterFour = @"S";lexicalWordLetterFive = @"T";lexicalWordLetterSix = @"I";lexicalWordLetterSeven = @"C";
    }
    else if(wordChosen == 19){
        lexicalWordLetterOne = @"E";lexicalWordLetterTwo = @"X";lexicalWordLetterThree = @"C";lexicalWordLetterFour = @"R";lexicalWordLetterFive = @"E";lexicalWordLetterSix = @"T";lexicalWordLetterSeven = @"E";
    }
    else if(wordChosen == 20){
        lexicalWordLetterOne = @"F";lexicalWordLetterTwo = @"A";lexicalWordLetterThree = @"R";lexicalWordLetterFour = @"T";lexicalWordLetterFive = @"I";lexicalWordLetterSix = @"N";lexicalWordLetterSeven = @"G";
    }
    else if(wordChosen == 21){
        lexicalWordLetterOne = @"F";lexicalWordLetterTwo = @"A";lexicalWordLetterThree = @"T";lexicalWordLetterFour = @"H";lexicalWordLetterFive = @"O";lexicalWordLetterSix = @"M";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 22){
        lexicalWordLetterOne = @"F";lexicalWordLetterTwo = @"I";lexicalWordLetterThree = @"D";lexicalWordLetterFour = @"D";lexicalWordLetterFive = @"L";lexicalWordLetterSix = @"E";lexicalWordLetterSeven = @"R";
    }
    else if(wordChosen == 23){
        lexicalWordLetterOne = @"F";lexicalWordLetterTwo = @"L";lexicalWordLetterThree = @"A";lexicalWordLetterFour = @"C";lexicalWordLetterFive = @"C";lexicalWordLetterSix = @"I";lexicalWordLetterSeven = @"D";
    }
    else if(wordChosen == 24){
        lexicalWordLetterOne = @"G";lexicalWordLetterTwo = @"E";lexicalWordLetterThree = @"L";lexicalWordLetterFour = @"A";lexicalWordLetterFive = @"T";lexicalWordLetterSix = @"I";lexicalWordLetterSeven = @"N";
    }
    else if(wordChosen == 25){
        lexicalWordLetterOne = @"G";lexicalWordLetterTwo = @"L";lexicalWordLetterThree = @"U";lexicalWordLetterFour = @"T";lexicalWordLetterFive = @"E";lexicalWordLetterSix = @"U";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 26){
        lexicalWordLetterOne = @"G";lexicalWordLetterTwo = @"R";lexicalWordLetterThree = @"A";lexicalWordLetterFour = @"S";lexicalWordLetterFive = @"P";lexicalWordLetterSix = @"E";lexicalWordLetterSeven = @"D";
    }
    else if(wordChosen == 27){
        lexicalWordLetterOne = @"G";lexicalWordLetterTwo = @"U";lexicalWordLetterThree = @"I";lexicalWordLetterFour = @"N";lexicalWordLetterFive = @"E";lexicalWordLetterSix = @"A";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 28){
        lexicalWordLetterOne = @"H";lexicalWordLetterTwo = @"A";lexicalWordLetterThree = @"D";lexicalWordLetterFour = @"D";lexicalWordLetterFive = @"O";lexicalWordLetterSix = @"C";lexicalWordLetterSeven = @"K";
    }
    else if(wordChosen == 29){
        lexicalWordLetterOne = @"H";lexicalWordLetterTwo = @"I";lexicalWordLetterThree = @"J";lexicalWordLetterFour = @"A";lexicalWordLetterFive = @"C";lexicalWordLetterSix = @"K";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 30){
        lexicalWordLetterOne = @"H";lexicalWordLetterTwo = @"O";lexicalWordLetterThree = @"N";lexicalWordLetterFour = @"K";lexicalWordLetterFive = @"E";lexicalWordLetterSix = @"R";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 31){
        lexicalWordLetterOne = @"H";lexicalWordLetterTwo = @"Y";lexicalWordLetterThree = @"D";lexicalWordLetterFour = @"R";lexicalWordLetterFive = @"A";lexicalWordLetterSix = @"N";lexicalWordLetterSeven = @"T";
    }
    else if(wordChosen == 32){
        lexicalWordLetterOne = @"I";lexicalWordLetterTwo = @"M";lexicalWordLetterThree = @"P";lexicalWordLetterFour = @"L";lexicalWordLetterFive = @"O";lexicalWordLetterSix = @"D";lexicalWordLetterSeven = @"E";
    }
    else if(wordChosen == 33){
        lexicalWordLetterOne = @"I";lexicalWordLetterTwo = @"R";lexicalWordLetterThree = @"I";lexicalWordLetterFour = @"D";lexicalWordLetterFive = @"I";lexicalWordLetterSix = @"U";lexicalWordLetterSeven = @"M";
    }
    else if(wordChosen == 34){
        lexicalWordLetterOne = @"I";lexicalWordLetterTwo = @"R";lexicalWordLetterThree = @"O";lexicalWordLetterFour = @"N";lexicalWordLetterFive = @"I";lexicalWordLetterSix = @"N";lexicalWordLetterSeven = @"G";
    }
    else if(wordChosen == 35){
        lexicalWordLetterOne = @"I";lexicalWordLetterTwo = @"S";lexicalWordLetterThree = @"O";lexicalWordLetterFour = @"T";lexicalWordLetterFive = @"O";lexicalWordLetterSix = @"P";lexicalWordLetterSeven = @"E";
    }
    else if(wordChosen == 36){
        lexicalWordLetterOne = @"J";lexicalWordLetterTwo = @"A";lexicalWordLetterThree = @"N";lexicalWordLetterFour = @"I";lexicalWordLetterFive = @"T";lexicalWordLetterSix = @"O";lexicalWordLetterSeven = @"R";
    }
    else if(wordChosen == 37){
        lexicalWordLetterOne = @"J";lexicalWordLetterTwo = @"O";lexicalWordLetterThree = @"C";lexicalWordLetterFour = @"K";lexicalWordLetterFive = @"E";lexicalWordLetterSix = @"Y";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 38){
        lexicalWordLetterOne = @"J";lexicalWordLetterTwo = @"U";lexicalWordLetterThree = @"D";lexicalWordLetterFour = @"G";lexicalWordLetterFive = @"I";lexicalWordLetterSix = @"N";lexicalWordLetterSeven = @"G";
    }
    else if(wordChosen == 39){
        lexicalWordLetterOne = @"J";lexicalWordLetterTwo = @"U";lexicalWordLetterThree = @"N";lexicalWordLetterFour = @"I";lexicalWordLetterFive = @"P";lexicalWordLetterSix = @"E";lexicalWordLetterSeven = @"R";
    }
    else if(wordChosen == 40){
        lexicalWordLetterOne = @"K";lexicalWordLetterTwo = @"A";lexicalWordLetterThree = @"R";lexicalWordLetterFour = @"T";lexicalWordLetterFive = @"I";lexicalWordLetterSix = @"N";lexicalWordLetterSeven = @"G";
    }
    else if(wordChosen == 41){
        lexicalWordLetterOne = @"K";lexicalWordLetterTwo = @"N";lexicalWordLetterThree = @"O";lexicalWordLetterFour = @"C";lexicalWordLetterFive = @"K";lexicalWordLetterSix = @"E";lexicalWordLetterSeven = @"R";
    }
    else if(wordChosen == 42){
        lexicalWordLetterOne = @"K";lexicalWordLetterTwo = @"O";lexicalWordLetterThree = @"B";lexicalWordLetterFour = @"O";lexicalWordLetterFive = @"L";lexicalWordLetterSix = @"D";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 43){
        lexicalWordLetterOne = @"K";lexicalWordLetterTwo = @"U";lexicalWordLetterThree = @"M";lexicalWordLetterFour = @"Q";lexicalWordLetterFive = @"U";lexicalWordLetterSix = @"A";lexicalWordLetterSeven = @"T";
    }
    else if(wordChosen == 44){
        lexicalWordLetterOne = @"L";lexicalWordLetterTwo = @"A";lexicalWordLetterThree = @"S";lexicalWordLetterFour = @"A";lexicalWordLetterFive = @"G";lexicalWordLetterSix = @"N";lexicalWordLetterSeven = @"E";
    }
    else if(wordChosen == 45){
        lexicalWordLetterOne = @"L";lexicalWordLetterTwo = @"E";lexicalWordLetterThree = @"G";lexicalWordLetterFour = @"I";lexicalWordLetterFive = @"B";lexicalWordLetterSix = @"L";lexicalWordLetterSeven = @"E";
    }
    else if(wordChosen == 46){
        lexicalWordLetterOne = @"L";lexicalWordLetterTwo = @"O";lexicalWordLetterThree = @"A";lexicalWordLetterFour = @"T";lexicalWordLetterFive = @"H";lexicalWordLetterSix = @"E";lexicalWordLetterSeven = @"D";
    }
    else if(wordChosen == 47){
        lexicalWordLetterOne = @"L";lexicalWordLetterTwo = @"Y";lexicalWordLetterThree = @"C";lexicalWordLetterFour = @"H";lexicalWordLetterFive = @"E";lexicalWordLetterSix = @"E";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 48){
        lexicalWordLetterOne = @"M";lexicalWordLetterTwo = @"A";lexicalWordLetterThree = @"H";lexicalWordLetterFour = @"J";lexicalWordLetterFive = @"O";lexicalWordLetterSix = @"N";lexicalWordLetterSeven = @"G";
    }
    else if(wordChosen == 49){
        lexicalWordLetterOne = @"M";lexicalWordLetterTwo = @"A";lexicalWordLetterThree = @"N";lexicalWordLetterFour = @"H";lexicalWordLetterFive = @"O";lexicalWordLetterSix = @"L";lexicalWordLetterSeven = @"E";
    }
    else if(wordChosen == 50){
        lexicalWordLetterOne = @"M";lexicalWordLetterTwo = @"I";lexicalWordLetterThree = @"T";lexicalWordLetterFour = @"O";lexicalWordLetterFive = @"S";lexicalWordLetterSix = @"I";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 51){
        lexicalWordLetterOne = @"M";lexicalWordLetterTwo = @"U";lexicalWordLetterThree = @"N";lexicalWordLetterFour = @"C";lexicalWordLetterFive = @"H";lexicalWordLetterSix = @"E";lexicalWordLetterSeven = @"R";
    }
    else if(wordChosen == 52){
        lexicalWordLetterOne = @"N";lexicalWordLetterTwo = @"A";lexicalWordLetterThree = @"R";lexicalWordLetterFour = @"C";lexicalWordLetterFive = @"I";lexicalWordLetterSix = @"S";lexicalWordLetterSeven = @"M";
    }
    else if(wordChosen == 53){
        lexicalWordLetterOne = @"N";lexicalWordLetterTwo = @"E";lexicalWordLetterThree = @"W";lexicalWordLetterFour = @"B";lexicalWordLetterFive = @"I";lexicalWordLetterSix = @"E";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 54){
        lexicalWordLetterOne = @"N";lexicalWordLetterTwo = @"I";lexicalWordLetterThree = @"T";lexicalWordLetterFour = @"W";lexicalWordLetterFive = @"I";lexicalWordLetterSix = @"T";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 55){
        lexicalWordLetterOne = @"N";lexicalWordLetterTwo = @"O";lexicalWordLetterThree = @"O";lexicalWordLetterFour = @"D";lexicalWordLetterFive = @"L";lexicalWordLetterSix = @"E";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 56){
        lexicalWordLetterOne = @"O";lexicalWordLetterTwo = @"C";lexicalWordLetterThree = @"T";lexicalWordLetterFour = @"O";lexicalWordLetterFive = @"P";lexicalWordLetterSix = @"U";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 57){
        lexicalWordLetterOne = @"O";lexicalWordLetterTwo = @"N";lexicalWordLetterThree = @"A";lexicalWordLetterFour = @"G";lexicalWordLetterFive = @"E";lexicalWordLetterSix = @"R";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 58){
        lexicalWordLetterOne = @"O";lexicalWordLetterTwo = @"R";lexicalWordLetterThree = @"G";lexicalWordLetterFour = @"A";lexicalWordLetterFive = @"N";lexicalWordLetterSix = @"I";lexicalWordLetterSeven = @"C";
    }
    else if(wordChosen == 59){
        lexicalWordLetterOne = @"O";lexicalWordLetterTwo = @"X";lexicalWordLetterThree = @"I";lexicalWordLetterFour = @"D";lexicalWordLetterFive = @"A";lexicalWordLetterSix = @"N";lexicalWordLetterSeven = @"T";
    }
    else if(wordChosen == 60){
        lexicalWordLetterOne = @"P";lexicalWordLetterTwo = @"A";lexicalWordLetterThree = @"C";lexicalWordLetterFour = @"K";lexicalWordLetterFive = @"A";lexicalWordLetterSix = @"G";lexicalWordLetterSeven = @"E";
    }
    else if(wordChosen == 61){
        lexicalWordLetterOne = @"P";lexicalWordLetterTwo = @"A";lexicalWordLetterThree = @"R";lexicalWordLetterFour = @"F";lexicalWordLetterFive = @"A";lexicalWordLetterSix = @"I";lexicalWordLetterSeven = @"T";
    }
    else if(wordChosen == 62){
        lexicalWordLetterOne = @"P";lexicalWordLetterTwo = @"E";lexicalWordLetterThree = @"R";lexicalWordLetterFour = @"P";lexicalWordLetterFive = @"L";lexicalWordLetterSix = @"E";lexicalWordLetterSeven = @"X";
    }
    else if(wordChosen == 63){
        lexicalWordLetterOne = @"P";lexicalWordLetterTwo = @"I";lexicalWordLetterThree = @"N";lexicalWordLetterFour = @"C";lexicalWordLetterFive = @"E";lexicalWordLetterSix = @"R";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 64){
        lexicalWordLetterOne = @"Q";lexicalWordLetterTwo = @"U";lexicalWordLetterThree = @"A";lexicalWordLetterFour = @"C";lexicalWordLetterFive = @"K";lexicalWordLetterSix = @"E";lexicalWordLetterSeven = @"D";
    }
    else if(wordChosen == 65){
        lexicalWordLetterOne = @"Q";lexicalWordLetterTwo = @"U";lexicalWordLetterThree = @"E";lexicalWordLetterFour = @"R";lexicalWordLetterFive = @"I";lexicalWordLetterSix = @"E";lexicalWordLetterSeven = @"D";
    }
    else if(wordChosen == 66){
        lexicalWordLetterOne = @"Q";lexicalWordLetterTwo = @"U";lexicalWordLetterThree = @"I";lexicalWordLetterFour = @"N";lexicalWordLetterFive = @"T";lexicalWordLetterSix = @"E";lexicalWordLetterSeven = @"T";
    }
    else if(wordChosen == 67){
        lexicalWordLetterOne = @"Q";lexicalWordLetterTwo = @"U";lexicalWordLetterThree = @"I";lexicalWordLetterFour = @"V";lexicalWordLetterFive = @"E";lexicalWordLetterSix = @"R";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 68){
        lexicalWordLetterOne = @"R";lexicalWordLetterTwo = @"E";lexicalWordLetterThree = @"C";lexicalWordLetterFour = @"T";lexicalWordLetterFive = @"O";lexicalWordLetterSix = @"R";lexicalWordLetterSeven = @"Y";
    }
    else if(wordChosen == 69){
        lexicalWordLetterOne = @"R";lexicalWordLetterTwo = @"H";lexicalWordLetterThree = @"U";lexicalWordLetterFour = @"B";lexicalWordLetterFive = @"A";lexicalWordLetterSix = @"R";lexicalWordLetterSeven = @"B";
    }
    else if(wordChosen == 70){
        lexicalWordLetterOne = @"R";lexicalWordLetterTwo = @"O";lexicalWordLetterThree = @"U";lexicalWordLetterFour = @"L";lexicalWordLetterFive = @"A";lexicalWordLetterSix = @"D";lexicalWordLetterSeven = @"E";
    }
    else if(wordChosen == 71){
        lexicalWordLetterOne = @"R";lexicalWordLetterTwo = @"U";lexicalWordLetterThree = @"S";lexicalWordLetterFour = @"T";lexicalWordLetterFive = @"I";lexicalWordLetterSix = @"E";lexicalWordLetterSeven = @"R";
    }
    else if(wordChosen == 72){
        lexicalWordLetterOne = @"S";lexicalWordLetterTwo = @"A";lexicalWordLetterThree = @"N";lexicalWordLetterFour = @"D";lexicalWordLetterFive = @"B";lexicalWordLetterSix = @"O";lexicalWordLetterSeven = @"X";
    }
    else if(wordChosen == 73){
        lexicalWordLetterOne = @"S";lexicalWordLetterTwo = @"E";lexicalWordLetterThree = @"X";lexicalWordLetterFour = @"T";lexicalWordLetterFive = @"E";lexicalWordLetterSix = @"T";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 74){
        lexicalWordLetterOne = @"S";lexicalWordLetterTwo = @"H";lexicalWordLetterThree = @"O";lexicalWordLetterFour = @"G";lexicalWordLetterFive = @"U";lexicalWordLetterSix = @"N";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 75){
        lexicalWordLetterOne = @"S";lexicalWordLetterTwo = @"P";lexicalWordLetterThree = @"E";lexicalWordLetterFour = @"L";lexicalWordLetterFive = @"U";lexicalWordLetterSix = @"N";lexicalWordLetterSeven = @"K";
    }
    else if(wordChosen == 76){
        lexicalWordLetterOne = @"T";lexicalWordLetterTwo = @"A";lexicalWordLetterThree = @"B";lexicalWordLetterFour = @"L";lexicalWordLetterFive = @"E";lexicalWordLetterSix = @"A";lexicalWordLetterSeven = @"U";
    }
    else if(wordChosen == 77){
        lexicalWordLetterOne = @"T";lexicalWordLetterTwo = @"I";lexicalWordLetterThree = @"M";lexicalWordLetterFour = @"P";lexicalWordLetterFive = @"A";lexicalWordLetterSix = @"N";lexicalWordLetterSeven = @"I";
    }
    else if(wordChosen == 78){
        lexicalWordLetterOne = @"T";lexicalWordLetterTwo = @"O";lexicalWordLetterThree = @"P";lexicalWordLetterFour = @"L";lexicalWordLetterFive = @"E";lexicalWordLetterSix = @"S";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 79){
        lexicalWordLetterOne = @"T";lexicalWordLetterTwo = @"U";lexicalWordLetterThree = @"B";lexicalWordLetterFour = @"I";lexicalWordLetterFive = @"S";lexicalWordLetterSix = @"T";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 80){
        lexicalWordLetterOne = @"U";lexicalWordLetterTwo = @"M";lexicalWordLetterThree = @"P";lexicalWordLetterFour = @"T";lexicalWordLetterFive = @"E";lexicalWordLetterSix = @"E";lexicalWordLetterSeven = @"N";
    }
    else if(wordChosen == 81){
        lexicalWordLetterOne = @"U";lexicalWordLetterTwo = @"N";lexicalWordLetterThree = @"B";lexicalWordLetterFour = @"O";lexicalWordLetterFive = @"X";lexicalWordLetterSix = @"E";lexicalWordLetterSeven = @"D";
    }
    else if(wordChosen == 82){
        lexicalWordLetterOne = @"U";lexicalWordLetterTwo = @"P";lexicalWordLetterThree = @"K";lexicalWordLetterFour = @"E";lexicalWordLetterFive = @"E";lexicalWordLetterSix = @"P";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 83){
        lexicalWordLetterOne = @"U";lexicalWordLetterTwo = @"R";lexicalWordLetterThree = @"I";lexicalWordLetterFour = @"N";lexicalWordLetterFive = @"A";lexicalWordLetterSix = @"L";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 84){
        lexicalWordLetterOne = @"V";lexicalWordLetterTwo = @"A";lexicalWordLetterThree = @"G";lexicalWordLetterFour = @"U";lexicalWordLetterFive = @"E";lexicalWordLetterSix = @"L";lexicalWordLetterSeven = @"Y";
    }
    else if(wordChosen == 85){
        lexicalWordLetterOne = @"V";lexicalWordLetterTwo = @"I";lexicalWordLetterThree = @"N";lexicalWordLetterFour = @"T";lexicalWordLetterFive = @"A";lexicalWordLetterSix = @"G";lexicalWordLetterSeven = @"E";
    }
    else if(wordChosen == 86){
        lexicalWordLetterOne = @"V";lexicalWordLetterTwo = @"I";lexicalWordLetterThree = @"S";lexicalWordLetterFour = @"C";lexicalWordLetterFive = @"O";lexicalWordLetterSix = @"U";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 87){
        lexicalWordLetterOne = @"V";lexicalWordLetterTwo = @"O";lexicalWordLetterThree = @"M";lexicalWordLetterFour = @"I";lexicalWordLetterFive = @"T";lexicalWordLetterSix = @"E";lexicalWordLetterSeven = @"R";
    }
    else if(wordChosen == 88){
        lexicalWordLetterOne = @"W";lexicalWordLetterTwo = @"A";lexicalWordLetterThree = @"L";lexicalWordLetterFour = @"N";lexicalWordLetterFive = @"U";lexicalWordLetterSix = @"T";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 89){
        lexicalWordLetterOne = @"W";lexicalWordLetterTwo = @"I";lexicalWordLetterThree = @"Z";lexicalWordLetterFour = @"A";lexicalWordLetterFive = @"R";lexicalWordLetterSix = @"D";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 90){
        lexicalWordLetterOne = @"W";lexicalWordLetterTwo = @"O";lexicalWordLetterThree = @"R";lexicalWordLetterFour = @"D";lexicalWordLetterFive = @"A";lexicalWordLetterSix = @"G";lexicalWordLetterSeven = @"E";
    }
    else if(wordChosen == 91){
        lexicalWordLetterOne = @"W";lexicalWordLetterTwo = @"Y";lexicalWordLetterThree = @"V";lexicalWordLetterFour = @"E";lexicalWordLetterFive = @"R";lexicalWordLetterSix = @"N";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 92){
        lexicalWordLetterOne = @"X";lexicalWordLetterTwo = @"A";lexicalWordLetterThree = @"N";lexicalWordLetterFour = @"T";lexicalWordLetterFive = @"H";lexicalWordLetterSix = @"I";lexicalWordLetterSeven = @"C";
    }
    else if(wordChosen == 93){
        lexicalWordLetterOne = @"X";lexicalWordLetterTwo = @"E";lexicalWordLetterThree = @"N";lexicalWordLetterFour = @"O";lexicalWordLetterFive = @"P";lexicalWordLetterSix = @"U";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 94){
        lexicalWordLetterOne = @"X";lexicalWordLetterTwo = @"E";lexicalWordLetterThree = @"R";lexicalWordLetterFour = @"O";lexicalWordLetterFive = @"T";lexicalWordLetterSix = @"I";lexicalWordLetterSeven = @"C";
    }
    else if(wordChosen == 95){
        lexicalWordLetterOne = @"X";lexicalWordLetterTwo = @"Y";lexicalWordLetterThree = @"L";lexicalWordLetterFour = @"O";lexicalWordLetterFive = @"S";lexicalWordLetterSix = @"E";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 96){
        lexicalWordLetterOne = @"Y";lexicalWordLetterTwo = @"C";lexicalWordLetterThree = @"L";lexicalWordLetterFour = @"E";lexicalWordLetterFive = @"P";lexicalWordLetterSix = @"E";lexicalWordLetterSeven = @"D";
    }
    else if(wordChosen == 97){
        lexicalWordLetterOne = @"Y";lexicalWordLetterTwo = @"E";lexicalWordLetterThree = @"S";lexicalWordLetterFour = @"H";lexicalWordLetterFive = @"I";lexicalWordLetterSix = @"V";lexicalWordLetterSeven = @"A";
    }
    else if(wordChosen == 98){
        lexicalWordLetterOne = @"Y";lexicalWordLetterTwo = @"O";lexicalWordLetterThree = @"G";lexicalWordLetterFour = @"H";lexicalWordLetterFive = @"U";lexicalWordLetterSix = @"R";lexicalWordLetterSeven = @"T";
    }
    else if(wordChosen == 99){
        lexicalWordLetterOne = @"Y";lexicalWordLetterTwo = @"O";lexicalWordLetterThree = @"W";lexicalWordLetterFour = @"L";lexicalWordLetterFive = @"E";lexicalWordLetterSix = @"R";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 100){
        lexicalWordLetterOne = @"Z";lexicalWordLetterTwo = @"E";lexicalWordLetterThree = @"A";lexicalWordLetterFour = @"L";lexicalWordLetterFive = @"O";lexicalWordLetterSix = @"T";lexicalWordLetterSeven = @"S";
    }
    else if(wordChosen == 101){
        lexicalWordLetterOne = @"Z";lexicalWordLetterTwo = @"E";lexicalWordLetterThree = @"L";lexicalWordLetterFour = @"K";lexicalWordLetterFive = @"O";lexicalWordLetterSix = @"V";lexicalWordLetterSeven = @"A";
    }
    else if(wordChosen == 102){
        lexicalWordLetterOne = @"Z";lexicalWordLetterTwo = @"E";lexicalWordLetterThree = @"S";lexicalWordLetterFour = @"T";lexicalWordLetterFive = @"I";lexicalWordLetterSix = @"L";lexicalWordLetterSeven = @"Y";
    }
    else if(wordChosen == 103){
        lexicalWordLetterOne = @"Z";lexicalWordLetterTwo = @"Y";lexicalWordLetterThree = @"G";lexicalWordLetterFour = @"O";lexicalWordLetterFive = @"T";lexicalWordLetterSix = @"E";lexicalWordLetterSeven = @"S";
    }
    
    lexicalLetterRandomNumber = ((arc4random() % (7)));
    
    if(lexicalAnswersGiven % 2 == 0){
        if(lexicalLetterRandomNumber == 0){
            lexicalActualAnswer = lexicalWordLetterOne;
            [(CCMenuItemSprite*)[lexicalGraphicsMenu getChildByTag: 801] setNormalImage:lexicalGraphic1st];
        }
        else if(lexicalLetterRandomNumber == 1){
            lexicalActualAnswer = lexicalWordLetterTwo;
            [(CCMenuItemSprite*)[lexicalGraphicsMenu getChildByTag: 801] setNormalImage:lexicalGraphic2nd];
        }
        else if(lexicalLetterRandomNumber == 2){
            lexicalActualAnswer = lexicalWordLetterThree;
            [(CCMenuItemSprite*)[lexicalGraphicsMenu getChildByTag: 801] setNormalImage:lexicalGraphic3rd];
        }
        else if(lexicalLetterRandomNumber == 3){
            lexicalActualAnswer = lexicalWordLetterFour;
            [(CCMenuItemSprite*)[lexicalGraphicsMenu getChildByTag: 801] setNormalImage:lexicalGraphic4th];
        }
        else if(lexicalLetterRandomNumber == 4){
            lexicalActualAnswer = lexicalWordLetterFive;
            [(CCMenuItemSprite*)[lexicalGraphicsMenu getChildByTag: 801] setNormalImage:lexicalGraphic5th];
        }
        else if(lexicalLetterRandomNumber == 5){
            lexicalActualAnswer = lexicalWordLetterSix;
            [(CCMenuItemSprite*)[lexicalGraphicsMenu getChildByTag: 801] setNormalImage:lexicalGraphic6th];
        }
        else if(lexicalLetterRandomNumber == 6){
            lexicalActualAnswer = lexicalWordLetterSeven;
            [(CCMenuItemSprite*)[lexicalGraphicsMenu getChildByTag: 801] setNormalImage:lexicalGraphic7th];
        }
    }
    else if(lexicalAnswersGiven % 2 == 1){
        if(lexicalLetterRandomNumber == 0){
            lexicalActualAnswer = lexicalWordLetterOne;
            [(CCMenuItemSprite*)[lexicalGraphicsMenu getChildByTag: 801] setNormalImage:lexicalGraphic1stCopy];
        }
        else if(lexicalLetterRandomNumber == 1){
            lexicalActualAnswer = lexicalWordLetterTwo;
            [(CCMenuItemSprite*)[lexicalGraphicsMenu getChildByTag: 801] setNormalImage:lexicalGraphic2ndCopy];
        }
        else if(lexicalLetterRandomNumber == 2){
            lexicalActualAnswer = lexicalWordLetterThree;
            [(CCMenuItemSprite*)[lexicalGraphicsMenu getChildByTag: 801] setNormalImage:lexicalGraphic3rdCopy];
        }
        else if(lexicalLetterRandomNumber == 3){
            lexicalActualAnswer = lexicalWordLetterFour;
            [(CCMenuItemSprite*)[lexicalGraphicsMenu getChildByTag: 801] setNormalImage:lexicalGraphic4thCopy];
        }
        else if(lexicalLetterRandomNumber == 4){
            lexicalActualAnswer = lexicalWordLetterFive;
            [(CCMenuItemSprite*)[lexicalGraphicsMenu getChildByTag: 801] setNormalImage:lexicalGraphic5thCopy];
        }
        else if(lexicalLetterRandomNumber == 5){
            lexicalActualAnswer = lexicalWordLetterSix;
            [(CCMenuItemSprite*)[lexicalGraphicsMenu getChildByTag: 801] setNormalImage:lexicalGraphic6thCopy];
        }
        else if(lexicalLetterRandomNumber == 6){
            lexicalActualAnswer = lexicalWordLetterSeven;
            [(CCMenuItemSprite*)[lexicalGraphicsMenu getChildByTag: 801] setNormalImage:lexicalGraphic7thCopy];
        }
    }
    
    lexicalWordChoiceOne = lexicalActualAnswer;
    
    int lC = 0;
    while(lC <= 2){
        lexicalLetterRandomNumber = ((arc4random() % (7)));
        if(lexicalLetterRandomNumber == 0){
            if(![lexicalWordChoiceOne isEqualToString:lexicalWordLetterOne] &&
               ![lexicalWordChoiceTwo isEqualToString:lexicalWordLetterOne] &&
               ![lexicalWordChoiceThree isEqualToString:lexicalWordLetterOne] &&
               ![lexicalWordChoiceFour isEqualToString:lexicalWordLetterOne]){
                if(lC == 0){
                    lexicalWordChoiceTwo = lexicalWordLetterOne;
                }
                else if(lC == 1){
                    lexicalWordChoiceThree = lexicalWordLetterOne;
                }
                else if(lC == 2){
                    lexicalWordChoiceFour = lexicalWordLetterOne;
                }
                lC++;
            }
        }
        else if(lexicalLetterRandomNumber == 1){
            if(![lexicalWordChoiceOne isEqualToString:lexicalWordLetterTwo] &&
               ![lexicalWordChoiceTwo isEqualToString:lexicalWordLetterTwo] &&
               ![lexicalWordChoiceThree isEqualToString:lexicalWordLetterTwo] &&
               ![lexicalWordChoiceFour isEqualToString:lexicalWordLetterTwo]){
                if(lC == 0){
                    lexicalWordChoiceTwo = lexicalWordLetterTwo;
                }
                else if(lC == 1){
                    lexicalWordChoiceThree = lexicalWordLetterTwo;
                }
                else if(lC == 2){
                    lexicalWordChoiceFour = lexicalWordLetterTwo;
                }
                lC++;
            }
        }
        else if(lexicalLetterRandomNumber == 2){
            if(![lexicalWordChoiceOne isEqualToString:lexicalWordLetterThree] &&
               ![lexicalWordChoiceTwo isEqualToString:lexicalWordLetterThree] &&
               ![lexicalWordChoiceThree isEqualToString:lexicalWordLetterThree] &&
               ![lexicalWordChoiceFour isEqualToString:lexicalWordLetterThree]){
                if(lC == 0){
                    lexicalWordChoiceTwo = lexicalWordLetterThree;
                }
                else if(lC == 1){
                    lexicalWordChoiceThree = lexicalWordLetterThree;
                }
                else if(lC == 2){
                    lexicalWordChoiceFour = lexicalWordLetterThree;
                }
                lC++;
            }
        }
        else if(lexicalLetterRandomNumber == 3){
            if(![lexicalWordChoiceOne isEqualToString:lexicalWordLetterFour] &&
               ![lexicalWordChoiceTwo isEqualToString:lexicalWordLetterFour] &&
               ![lexicalWordChoiceThree isEqualToString:lexicalWordLetterFour] &&
               ![lexicalWordChoiceFour isEqualToString:lexicalWordLetterFour]){
                if(lC == 0){
                    lexicalWordChoiceTwo = lexicalWordLetterFour;
                }
                else if(lC == 1){
                    lexicalWordChoiceThree = lexicalWordLetterFour;
                }
                else if(lC == 2){
                    lexicalWordChoiceFour = lexicalWordLetterFour;
                }
                lC++;
            }
        }
        else if(lexicalLetterRandomNumber == 4){
            if(![lexicalWordChoiceOne isEqualToString:lexicalWordLetterFive] &&
               ![lexicalWordChoiceTwo isEqualToString:lexicalWordLetterFive] &&
               ![lexicalWordChoiceThree isEqualToString:lexicalWordLetterFive] &&
               ![lexicalWordChoiceFour isEqualToString:lexicalWordLetterFive]){
                if(lC == 0){
                    lexicalWordChoiceTwo = lexicalWordLetterFive;
                }
                else if(lC == 1){
                    lexicalWordChoiceThree = lexicalWordLetterFive;
                }
                else if(lC == 2){
                    lexicalWordChoiceFour = lexicalWordLetterFive;
                }
                lC++;
            }
        }
        else if(lexicalLetterRandomNumber == 5){
            if(![lexicalWordChoiceOne isEqualToString:lexicalWordLetterSix] &&
               ![lexicalWordChoiceTwo isEqualToString:lexicalWordLetterSix] &&
               ![lexicalWordChoiceThree isEqualToString:lexicalWordLetterSix] &&
               ![lexicalWordChoiceFour isEqualToString:lexicalWordLetterSix]){
                if(lC == 0){
                    lexicalWordChoiceTwo = lexicalWordLetterSix;
                }
                else if(lC == 1){
                    lexicalWordChoiceThree = lexicalWordLetterSix;
                }
                else if(lC == 2){
                    lexicalWordChoiceFour = lexicalWordLetterSix;
                }
                lC++;
            }
        }
        else if(lexicalLetterRandomNumber == 6){
            if(![lexicalWordChoiceOne isEqualToString:lexicalWordLetterSeven] &&
               ![lexicalWordChoiceTwo isEqualToString:lexicalWordLetterSeven] &&
               ![lexicalWordChoiceThree isEqualToString:lexicalWordLetterSeven] &&
               ![lexicalWordChoiceFour isEqualToString:lexicalWordLetterSeven]){
                if(lC == 0){
                    lexicalWordChoiceTwo = lexicalWordLetterSeven;
                }
                else if(lC == 1){
                    lexicalWordChoiceThree = lexicalWordLetterSeven;
                }
                else if(lC == 2){
                    lexicalWordChoiceFour = lexicalWordLetterSeven;
                }
                lC++;
            }
        }
    }
    
    letterOneDrawn = FALSE;
    letterTwoDrawn = FALSE;
    letterThreeDrawn = FALSE;
    letterFourDrawn = FALSE;

    if(lexicalAnswersGiven % 2 == 0){
        int lC2 = 0;
        while(lC2 <= 3){
            lexicalLetterChoiceRandom = ((arc4random() % (4)));
            if(lexicalLetterChoiceRandom == 0){
                if(!letterOneDrawn){
                    if([lexicalWordChoiceOne isEqualToString:@"A"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonA];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonASelected];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonA];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonASelected];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonA];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonASelected];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonA];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonASelected];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"B"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonB];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonBSelected];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonB];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonBSelected];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonB];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonBSelected];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonB];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonBSelected];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"C"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonC];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonCSelected];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonC];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonCSelected];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonC];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonCSelected];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonC];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonCSelected];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"D"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonD];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonDSelected];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonD];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonDSelected];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonD];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonDSelected];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonD];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonDSelected];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"E"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonE];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonESelected];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonE];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonESelected];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonE];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonESelected];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonE];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonESelected];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"F"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonF];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonFSelected];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonF];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonFSelected];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonF];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonFSelected];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonF];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonFSelected];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"G"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonG];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonGSelected];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonG];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonGSelected];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonG];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonGSelected];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonG];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonGSelected];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"H"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonH];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonHSelected];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonH];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonHSelected];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonH];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonHSelected];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonH];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonHSelected];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"I"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonI];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonISelected];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonI];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonISelected];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonI];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonISelected];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonI];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonISelected];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"J"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonJ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonJSelected];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonJ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonJSelected];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonJ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonJSelected];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonJ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonJSelected];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"K"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonK];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonKSelected];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonK];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonKSelected];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonK];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonKSelected];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonK];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonKSelected];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"L"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonL];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonLSelected];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonL];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonLSelected];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonL];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonLSelected];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonL];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonLSelected];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"M"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonM];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonMSelected];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonM];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonMSelected];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonM];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonMSelected];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonM];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonMSelected];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"N"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonN];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonNSelected];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonN];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonNSelected];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonN];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonNSelected];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonN];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonNSelected];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"O"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonO];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonOSelected];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonO];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonOSelected];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonO];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonOSelected];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonO];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonOSelected];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"P"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonP];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonPSelected];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonP];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonPSelected];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonP];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonPSelected];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonP];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonPSelected];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"Q"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonQ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonQSelected];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonQ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonQSelected];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonQ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonQSelected];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonQ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonQSelected];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"R"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonR];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonRSelected];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonR];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonRSelected];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonR];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonRSelected];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonR];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonRSelected];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"S"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonS];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonSSelected];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonS];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonSSelected];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonS];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonSSelected];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonS];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonSSelected];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"T"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonT];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonTSelected];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonT];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonTSelected];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonT];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonTSelected];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonT];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonTSelected];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"U"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonU];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonUSelected];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonU];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonUSelected];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonU];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonUSelected];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonU];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonUSelected];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"V"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonV];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonVSelected];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonV];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonVSelected];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonV];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonVSelected];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonV];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonVSelected];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"W"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonW];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonWSelected];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonW];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonWSelected];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonW];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonWSelected];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonW];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonWSelected];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"X"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonX];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonXSelected];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonX];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonXSelected];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonX];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonXSelected];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonX];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonXSelected];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"Y"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonY];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonYSelected];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonY];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonYSelected];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonY];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonYSelected];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonY];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonYSelected];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"Z"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonZ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonZSelected];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonZ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonZSelected];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonZ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonZSelected];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonZ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonZSelected];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    
                    letterOneDrawn = TRUE;
                    lC2++;
                }
            }
            else if(lexicalLetterChoiceRandom == 1){
                if(!letterTwoDrawn){
                    if([lexicalWordChoiceTwo isEqualToString:@"A"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonA];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonASelected];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonA];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonASelected];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonA];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonASelected];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonA];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonASelected];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"B"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonB];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonBSelected];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonB];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonBSelected];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonB];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonBSelected];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonB];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonBSelected];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"C"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonC];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonCSelected];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonC];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonCSelected];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonC];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonCSelected];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonC];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonCSelected];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"D"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonD];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonDSelected];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonD];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonDSelected];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonD];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonDSelected];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonD];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonDSelected];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"E"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonE];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonESelected];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonE];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonESelected];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonE];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonESelected];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonE];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonESelected];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"F"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonF];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonFSelected];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonF];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonFSelected];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonF];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonFSelected];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonF];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonFSelected];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"G"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonG];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonGSelected];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonG];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonGSelected];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonG];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonGSelected];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonG];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonGSelected];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"H"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonH];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonHSelected];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonH];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonHSelected];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonH];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonHSelected];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonH];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonHSelected];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"I"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonI];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonISelected];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonI];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonISelected];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonI];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonISelected];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonI];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonISelected];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"J"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonJ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonJSelected];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonJ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonJSelected];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonJ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonJSelected];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonJ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonJSelected];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"K"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonK];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonKSelected];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonK];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonKSelected];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonK];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonKSelected];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonK];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonKSelected];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"L"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonL];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonLSelected];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonL];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonLSelected];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonL];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonLSelected];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonL];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonLSelected];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"M"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonM];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonMSelected];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonM];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonMSelected];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonM];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonMSelected];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonM];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonMSelected];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"N"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonN];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonNSelected];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonN];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonNSelected];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonN];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonNSelected];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonN];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonNSelected];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"O"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonO];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonOSelected];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonO];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonOSelected];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonO];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonOSelected];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonO];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonOSelected];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"P"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonP];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonPSelected];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonP];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonPSelected];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonP];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonPSelected];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonP];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonPSelected];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"Q"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonQ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonQSelected];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonQ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonQSelected];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonQ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonQSelected];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonQ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonQSelected];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"R"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonR];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonRSelected];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonR];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonRSelected];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonR];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonRSelected];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonR];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonRSelected];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"S"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonS];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonSSelected];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonS];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonSSelected];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonS];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonSSelected];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonS];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonSSelected];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"T"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonT];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonTSelected];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonT];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonTSelected];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonT];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonTSelected];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonT];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonTSelected];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"U"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonU];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonUSelected];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonU];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonUSelected];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonU];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonUSelected];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonU];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonUSelected];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"V"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonV];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonVSelected];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonV];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonVSelected];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonV];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonVSelected];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonV];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonVSelected];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"W"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonW];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonWSelected];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonW];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonWSelected];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonW];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonWSelected];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonW];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonWSelected];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"X"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonX];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonXSelected];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonX];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonXSelected];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonX];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonXSelected];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonX];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonXSelected];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"Y"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonY];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonYSelected];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonY];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonYSelected];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonY];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonYSelected];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonY];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonYSelected];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"Z"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonZ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonZSelected];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonZ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonZSelected];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonZ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonZSelected];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonZ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonZSelected];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    
                    letterTwoDrawn = TRUE;
                    lC2++;
                }
            }
            else if(lexicalLetterChoiceRandom == 2){
                if(!letterThreeDrawn){
                    if([lexicalWordChoiceThree isEqualToString:@"A"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonA];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonASelected];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonA];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonASelected];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonA];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonASelected];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonA];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonASelected];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"B"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonB];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonBSelected];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonB];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonBSelected];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonB];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonBSelected];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonB];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonBSelected];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"C"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonC];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonCSelected];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonC];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonCSelected];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonC];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonCSelected];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonC];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonCSelected];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"D"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonD];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonDSelected];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonD];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonDSelected];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonD];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonDSelected];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonD];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonDSelected];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"E"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonE];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonESelected];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonE];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonESelected];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonE];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonESelected];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonE];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonESelected];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"F"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonF];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonFSelected];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonF];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonFSelected];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonF];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonFSelected];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonF];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonFSelected];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"G"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonG];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonGSelected];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonG];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonGSelected];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonG];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonGSelected];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonG];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonGSelected];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"H"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonH];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonHSelected];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonH];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonHSelected];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonH];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonHSelected];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonH];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonHSelected];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"I"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonI];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonISelected];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonI];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonISelected];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonI];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonISelected];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonI];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonISelected];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"J"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonJ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonJSelected];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonJ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonJSelected];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonJ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonJSelected];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonJ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonJSelected];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"K"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonK];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonKSelected];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonK];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonKSelected];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonK];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonKSelected];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonK];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonKSelected];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"L"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonL];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonLSelected];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonL];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonLSelected];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonL];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonLSelected];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonL];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonLSelected];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"M"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonM];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonMSelected];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonM];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonMSelected];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonM];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonMSelected];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonM];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonMSelected];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"N"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonN];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonNSelected];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonN];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonNSelected];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonN];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonNSelected];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonN];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonNSelected];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"O"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonO];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonOSelected];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonO];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonOSelected];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonO];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonOSelected];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonO];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonOSelected];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"P"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonP];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonPSelected];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonP];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonPSelected];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonP];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonPSelected];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonP];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonPSelected];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"Q"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonQ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonQSelected];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonQ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonQSelected];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonQ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonQSelected];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonQ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonQSelected];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"R"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonR];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonRSelected];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonR];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonRSelected];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonR];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonRSelected];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonR];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonRSelected];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"S"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonS];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonSSelected];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonS];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonSSelected];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonS];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonSSelected];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonS];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonSSelected];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"T"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonT];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonTSelected];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonT];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonTSelected];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonT];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonTSelected];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonT];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonTSelected];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"U"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonU];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonUSelected];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonU];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonUSelected];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonU];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonUSelected];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonU];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonUSelected];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"V"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonV];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonVSelected];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonV];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonVSelected];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonV];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonVSelected];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonV];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonVSelected];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"W"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonW];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonWSelected];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonW];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonWSelected];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonW];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonWSelected];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonW];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonWSelected];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"X"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonX];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonXSelected];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonX];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonXSelected];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonX];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonXSelected];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonX];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonXSelected];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"Y"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonY];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonYSelected];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonY];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonYSelected];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonY];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonYSelected];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonY];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonYSelected];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"Z"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonZ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonZSelected];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonZ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonZSelected];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonZ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonZSelected];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonZ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonZSelected];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    
                    letterThreeDrawn = TRUE;
                    lC2++;
                }
            }
            else if(lexicalLetterChoiceRandom == 3){
                if(!letterFourDrawn){
                    if([lexicalWordChoiceFour isEqualToString:@"A"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonA];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonASelected];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonA];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonASelected];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonA];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonASelected];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonA];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonASelected];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"B"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonB];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonBSelected];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonB];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonBSelected];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonB];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonBSelected];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonB];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonBSelected];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"C"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonC];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonCSelected];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonC];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonCSelected];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonC];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonCSelected];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonC];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonCSelected];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"D"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonD];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonDSelected];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonD];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonDSelected];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonD];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonDSelected];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonD];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonDSelected];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"E"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonE];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonESelected];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonE];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonESelected];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonE];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonESelected];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonE];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonESelected];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"F"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonF];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonFSelected];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonF];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonFSelected];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonF];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonFSelected];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonF];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonFSelected];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"G"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonG];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonGSelected];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonG];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonGSelected];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonG];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonGSelected];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonG];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonGSelected];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"H"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonH];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonHSelected];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonH];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonHSelected];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonH];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonHSelected];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonH];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonHSelected];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"I"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonI];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonISelected];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonI];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonISelected];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonI];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonISelected];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonI];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonISelected];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"J"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonJ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonJSelected];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonJ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonJSelected];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonJ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonJSelected];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonJ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonJSelected];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"K"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonK];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonKSelected];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonK];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonKSelected];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonK];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonKSelected];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonK];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonKSelected];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"L"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonL];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonLSelected];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonL];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonLSelected];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonL];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonLSelected];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonL];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonLSelected];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"M"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonM];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonMSelected];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonM];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonMSelected];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonM];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonMSelected];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonM];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonMSelected];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"N"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonN];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonNSelected];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonN];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonNSelected];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonN];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonNSelected];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonN];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonNSelected];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"O"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonO];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonOSelected];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonO];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonOSelected];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonO];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonOSelected];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonO];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonOSelected];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"P"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonP];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonPSelected];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonP];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonPSelected];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonP];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonPSelected];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonP];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonPSelected];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"Q"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonQ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonQSelected];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonQ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonQSelected];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonQ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonQSelected];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonQ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonQSelected];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"R"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonR];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonRSelected];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonR];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonRSelected];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonR];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonRSelected];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonR];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonRSelected];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"S"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonS];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonSSelected];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonS];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonSSelected];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonS];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonSSelected];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonS];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonSSelected];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"T"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonT];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonTSelected];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonT];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonTSelected];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonT];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonTSelected];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonT];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonTSelected];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"U"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonU];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonUSelected];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonU];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonUSelected];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonU];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonUSelected];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonU];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonUSelected];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"V"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonV];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonVSelected];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonV];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonVSelected];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonV];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonVSelected];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonV];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonVSelected];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"W"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonW];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonWSelected];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonW];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonWSelected];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonW];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonWSelected];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonW];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonWSelected];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"X"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonX];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonXSelected];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonX];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonXSelected];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonX];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonXSelected];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonX];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonXSelected];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"Y"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonY];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonYSelected];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonY];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonYSelected];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonY];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonYSelected];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonY];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonYSelected];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"Z"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonZ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonZSelected];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonZ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonZSelected];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonZ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonZSelected];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonZ];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonZSelected];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    
                    letterFourDrawn = TRUE;
                    lC2++;
                }
            }
        }
    }
    else if(lexicalAnswersGiven % 2 == 1){
        int lC2 = 0;
        while(lC2 <= 3){
            lexicalLetterChoiceRandom = ((arc4random() % (4)));
            if(lexicalLetterChoiceRandom == 0){
                if(!letterOneDrawn){
                    if([lexicalWordChoiceOne isEqualToString:@"A"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonACopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonASelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonACopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonASelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonACopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonASelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonACopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonASelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"B"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonBCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonBSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonBCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonBSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonBCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonBSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonBCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonBSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"C"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonCCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonCSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonCCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonCSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonCCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonCSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonCCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonCSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"D"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonDCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonDSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonDCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonDSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonDCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonDSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonDCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonDSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"E"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonECopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonESelected];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonECopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonESelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonECopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonESelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonECopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonESelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"F"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonFCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonFSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonFCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonFSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonFCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonFSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonFCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonFSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"G"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonGCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonGSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonGCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonGSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonGCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonGSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonGCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonGSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"H"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonHCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonHSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonHCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonHSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonHCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonHSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonHCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonHSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"I"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonICopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonISelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonICopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonISelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonICopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonISelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonICopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonISelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"J"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonJCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonJSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonJCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonJSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonJCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonJSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonJCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonJSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"K"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonKCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonKSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonKCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonKSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonKCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonKSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonKCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonKSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"L"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonLCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonLSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonLCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonLSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonLCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonLSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonLCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonLSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"M"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonMCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonMSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonMCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonMSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonMCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonMSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonMCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonMSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"N"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonNCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonNSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonNCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonNSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonNCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonNSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonNCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonNSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"O"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonOCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonOSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonOCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonOSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonOCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonOSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonOCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonOSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"P"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonPCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonPSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonPCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonPSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonPCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonPSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonPCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonPSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"Q"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonQCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonQSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonQCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonQSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonQCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonQSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonQCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonQSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"R"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonRCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonRSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonRCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonRSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonRCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonRSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonRCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonRSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"S"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonSCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonSSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonSCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonSSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonSCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonSSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonSCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonSSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"T"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonTCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonTSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonTCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonTSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonTCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonTSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonTCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonTSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"U"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonUCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonUSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonUCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonUSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonUCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonUSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonUCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonUSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"V"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonVCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonVSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonVCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonVSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonVCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonVSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonVCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonVSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"W"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonWCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonWSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonWCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonWSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonWCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonWSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonWCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonWSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"X"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonXCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonXSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonXCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonXSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonXCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonXSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonXCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonXSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"Y"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonYCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonYSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonYCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonYSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonYCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonYSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonYCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonYSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    else if([lexicalWordChoiceOne isEqualToString:@"Z"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonZCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonZSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonZCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonZSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonZCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonZSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceOne;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonZCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonZSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceOne;
                        }
                    }
                    
                    letterOneDrawn = TRUE;
                    lC2++;
                }
            }
            else if(lexicalLetterChoiceRandom == 1){
                if(!letterTwoDrawn){
                    if([lexicalWordChoiceTwo isEqualToString:@"A"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonACopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonASelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonACopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonASelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonACopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonASelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonACopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonASelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"B"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonBCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonBSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonBCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonBSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonBCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonBSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonBCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonBSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"C"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonCCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonCSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonCCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonCSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonCCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonCSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonCCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonCSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"D"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonDCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonDSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonDCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonDSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonDCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonDSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonDCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonDSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"E"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonECopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonESelected];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonECopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonESelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonECopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonESelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonECopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonESelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"F"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonFCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonFSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonFCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonFSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonFCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonFSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonFCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonFSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"G"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonGCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonGSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonGCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonGSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonGCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonGSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonGCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonGSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"H"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonHCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonHSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonHCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonHSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonHCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonHSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonHCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonHSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"I"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonICopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonISelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonICopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonISelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonICopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonISelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonICopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonISelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"J"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonJCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonJSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonJCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonJSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonJCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonJSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonJCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonJSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"K"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonKCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonKSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonKCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonKSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonKCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonKSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonKCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonKSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"L"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonLCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonLSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonLCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonLSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonLCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonLSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonLCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonLSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"M"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonMCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonMSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonMCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonMSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonMCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonMSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonMCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonMSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"N"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonNCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonNSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonNCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonNSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonNCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonNSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonNCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonNSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"O"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonOCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonOSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonOCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonOSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonOCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonOSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonOCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonOSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"P"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonPCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonPSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonPCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonPSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonPCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonPSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonPCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonPSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"Q"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonQCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonQSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonQCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonQSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonQCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonQSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonQCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonQSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"R"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonRCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonRSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonRCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonRSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonRCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonRSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonRCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonRSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"S"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonSCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonSSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonSCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonSSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonSCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonSSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonSCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonSSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"T"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonTCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonTSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonTCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonTSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonTCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonTSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonTCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonTSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"U"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonUCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonUSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonUCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonUSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonUCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonUSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonUCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonUSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"V"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonVCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonVSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonVCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonVSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonVCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonVSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonVCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonVSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"W"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonWCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonWSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonWCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonWSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonWCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonWSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonWCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonWSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"X"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonXCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonXSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonXCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonXSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonXCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonXSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonXCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonXSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"Y"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonYCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonYSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonYCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonYSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonYCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonYSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonYCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonYSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    else if([lexicalWordChoiceTwo isEqualToString:@"Z"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonZCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonZSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonZCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonZSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonZCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonZSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceTwo;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonZCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonZSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceTwo;
                        }
                    }
                    
                    letterTwoDrawn = TRUE;
                    lC2++;
                }
            }
            else if(lexicalLetterChoiceRandom == 2){
                if(!letterThreeDrawn){
                    if([lexicalWordChoiceThree isEqualToString:@"A"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonACopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonASelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonACopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonASelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonACopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonASelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonACopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonASelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"B"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonBCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonBSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonBCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonBSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonBCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonBSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonBCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonBSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"C"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonCCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonCSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonCCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonCSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonCCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonCSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonCCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonCSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"D"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonDCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonDSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonDCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonDSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonDCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonDSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonDCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonDSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"E"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonECopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonESelected];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonECopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonESelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonECopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonESelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonECopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonESelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"F"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonFCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonFSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonFCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonFSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonFCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonFSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonFCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonFSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"G"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonGCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonGSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonGCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonGSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonGCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonGSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonGCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonGSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"H"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonHCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonHSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonHCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonHSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonHCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonHSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonHCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonHSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"I"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonICopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonISelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonICopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonISelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonICopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonISelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonICopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonISelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"J"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonJCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonJSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonJCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonJSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonJCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonJSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonJCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonJSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"K"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonKCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonKSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonKCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonKSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonKCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonKSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonKCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonKSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"L"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonLCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonLSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonLCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonLSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonLCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonLSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonLCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonLSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"M"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonMCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonMSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonMCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonMSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonMCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonMSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonMCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonMSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"N"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonNCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonNSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonNCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonNSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonNCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonNSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonNCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonNSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"O"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonOCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonOSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonOCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonOSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonOCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonOSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonOCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonOSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"P"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonPCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonPSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonPCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonPSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonPCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonPSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonPCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonPSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"Q"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonQCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonQSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonQCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonQSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonQCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonQSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonQCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonQSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"R"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonRCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonRSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonRCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonRSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonRCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonRSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonRCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonRSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"S"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonSCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonSSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonSCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonSSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonSCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonSSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonSCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonSSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"T"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonTCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonTSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonTCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonTSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonTCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonTSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonTCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonTSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"U"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonUCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonUSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonUCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonUSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonUCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonUSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonUCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonUSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"V"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonVCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonVSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonVCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonVSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonVCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonVSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonVCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonVSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"W"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonWCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonWSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonWCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonWSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonWCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonWSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonWCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonWSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"X"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonXCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonXSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonXCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonXSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonXCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonXSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonXCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonXSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"Y"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonYCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonYSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonYCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonYSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonYCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonYSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonYCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonYSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    else if([lexicalWordChoiceThree isEqualToString:@"Z"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonZCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonZSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonZCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonZSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonZCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonZSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceThree;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonZCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonZSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceThree;
                        }
                    }
                    
                    letterThreeDrawn = TRUE;
                    lC2++;
                }
            }
            else if(lexicalLetterChoiceRandom == 3){
                if(!letterFourDrawn){
                    if([lexicalWordChoiceFour isEqualToString:@"A"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonACopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonASelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonACopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonASelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonACopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonASelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonACopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonASelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"B"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonBCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonBSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonBCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonBSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonBCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonBSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonBCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonBSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"C"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonCCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonCSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonCCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonCSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonCCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonCSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonCCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonCSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"D"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonDCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonDSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonDCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonDSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonDCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonDSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonDCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonDSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"E"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonECopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonESelected];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonECopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonESelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonECopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonESelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonECopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonESelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"F"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonFCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonFSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonFCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonFSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonFCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonFSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonFCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonFSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"G"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonGCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonGSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonGCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonGSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonGCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonGSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonGCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonGSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"H"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonHCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonHSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonHCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonHSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonHCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonHSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonHCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonHSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"I"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonICopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonISelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonICopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonISelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonICopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonISelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonICopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonISelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"J"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonJCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonJSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonJCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonJSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonJCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonJSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonJCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonJSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"K"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonKCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonKSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonKCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonKSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonKCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonKSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonKCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonKSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"L"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonLCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonLSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonLCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonLSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonLCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonLSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonLCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonLSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"M"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonMCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonMSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonMCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonMSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonMCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonMSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonMCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonMSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"N"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonNCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonNSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonNCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonNSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonNCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonNSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonNCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonNSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"O"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonOCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonOSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonOCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonOSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonOCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonOSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonOCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonOSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"P"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonPCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonPSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonPCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonPSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonPCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonPSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonPCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonPSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"Q"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonQCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonQSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonQCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonQSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonQCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonQSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonQCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonQSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"R"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonRCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonRSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonRCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonRSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonRCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonRSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonRCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonRSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"S"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonSCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonSSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonSCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonSSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonSCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonSSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonSCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonSSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"T"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonTCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonTSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonTCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonTSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonTCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonTSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonTCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonTSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"U"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonUCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonUSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonUCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonUSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonUCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonUSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonUCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonUSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"V"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonVCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonVSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonVCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonVSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonVCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonVSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonVCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonVSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"W"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonWCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonWSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonWCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonWSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonWCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonWSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonWCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonWSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"X"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonXCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonXSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonXCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonXSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonXCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonXSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonXCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonXSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"Y"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonYCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonYSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonYCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonYSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonYCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonYSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonYCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonYSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    else if([lexicalWordChoiceFour isEqualToString:@"Z"]){
                        if(lC2 == 0){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setNormalImage:lexicalButtonZCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 401] setSelectedImage:lexicalButtonZSelectedCopy];
                            lexicalButtonOneID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 1){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setNormalImage:lexicalButtonZCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 402] setSelectedImage:lexicalButtonZSelectedCopy];
                            lexicalButtonTwoID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 2){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setNormalImage:lexicalButtonZCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 403] setSelectedImage:lexicalButtonZSelectedCopy];
                            lexicalButtonThreeID = lexicalWordChoiceFour;
                        }
                        else if(lC2 == 3){
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setNormalImage:lexicalButtonZCopy];
                            [(CCMenuItemSprite*)[lexicalButtonMenu getChildByTag: 404] setSelectedImage:lexicalButtonZSelectedCopy];
                            lexicalButtonFourID = lexicalWordChoiceFour;
                        }
                    }
                    
                    letterFourDrawn = TRUE;
                    lC2++;
                }
            }
        }
    }
}

-(void) onExit{
    [self unschedule:@selector(update:)];
    lexicalGameTime = 0;
    [[SimpleAudioEngine sharedEngine] stopBackgroundMusic];
    [super onExit];
}

- (void) dealloc{
    [lexicalButtonA release];
    [lexicalButtonASelected release];
    [lexicalButtonB release];
    [lexicalButtonBSelected release];
    [lexicalButtonC release];
    [lexicalButtonCSelected release];
    [lexicalButtonD release];
    [lexicalButtonDSelected release];
    [lexicalButtonE release];
    [lexicalButtonESelected release];
    [lexicalButtonF release];
    [lexicalButtonFSelected release];
    [lexicalButtonG release];
    [lexicalButtonGSelected release];
    [lexicalButtonH release];
    [lexicalButtonHSelected release];
    [lexicalButtonI release];
    [lexicalButtonISelected release];
    [lexicalButtonJ release];
    [lexicalButtonJSelected release];
    [lexicalButtonK release];
    [lexicalButtonKSelected release];
    [lexicalButtonL release];
    [lexicalButtonLSelected release];
    [lexicalButtonM release];
    [lexicalButtonMSelected release];
    [lexicalButtonN release];
    [lexicalButtonNSelected release];
    [lexicalButtonO release];
    [lexicalButtonOSelected release];
    [lexicalButtonP release];
    [lexicalButtonPSelected release];
    [lexicalButtonQ release];
    [lexicalButtonQSelected release];
    [lexicalButtonR release];
    [lexicalButtonRSelected release];
    [lexicalButtonS release];
    [lexicalButtonSSelected release];
    [lexicalButtonT release];
    [lexicalButtonTSelected release];
    [lexicalButtonU release];
    [lexicalButtonUSelected release];
    [lexicalButtonV release];
    [lexicalButtonVSelected release];
    [lexicalButtonW release];
    [lexicalButtonWSelected release];
    [lexicalButtonX release];
    [lexicalButtonXSelected release];
    [lexicalButtonY release];
    [lexicalButtonYSelected release];
    [lexicalButtonZ release];
    [lexicalButtonZSelected release];
    [lexicalButtonACopy release];
    [lexicalButtonASelectedCopy release];
    [lexicalButtonBCopy release];
    [lexicalButtonBSelectedCopy release];
    [lexicalButtonCCopy release];
    [lexicalButtonCSelectedCopy release];
    [lexicalButtonDCopy release];
    [lexicalButtonDSelectedCopy release];
    [lexicalButtonECopy release];
    [lexicalButtonESelectedCopy release];
    [lexicalButtonFCopy release];
    [lexicalButtonFSelectedCopy release];
    [lexicalButtonGCopy release];
    [lexicalButtonGSelectedCopy release];
    [lexicalButtonHCopy release];
    [lexicalButtonHSelectedCopy release];
    [lexicalButtonICopy release];
    [lexicalButtonISelectedCopy release];
    [lexicalButtonJCopy release];
    [lexicalButtonJSelectedCopy release];
    [lexicalButtonKCopy release];
    [lexicalButtonKSelectedCopy release];
    [lexicalButtonLCopy release];
    [lexicalButtonLSelectedCopy release];
    [lexicalButtonMCopy release];
    [lexicalButtonMSelectedCopy release];
    [lexicalButtonNCopy release];
    [lexicalButtonNSelectedCopy release];
    [lexicalButtonOCopy release];
    [lexicalButtonOSelectedCopy release];
    [lexicalButtonPCopy release];
    [lexicalButtonPSelectedCopy release];
    [lexicalButtonQCopy release];
    [lexicalButtonQSelectedCopy release];
    [lexicalButtonRCopy release];
    [lexicalButtonRSelectedCopy release];
    [lexicalButtonSCopy release];
    [lexicalButtonSSelectedCopy release];
    [lexicalButtonTCopy release];
    [lexicalButtonTSelectedCopy release];
    [lexicalButtonUCopy release];
    [lexicalButtonUSelectedCopy release];
    [lexicalButtonVCopy release];
    [lexicalButtonVSelectedCopy release];
    [lexicalButtonWCopy release];
    [lexicalButtonWSelectedCopy release];
    [lexicalButtonXCopy release];
    [lexicalButtonXSelectedCopy release];
    [lexicalButtonYCopy release];
    [lexicalButtonYSelectedCopy release];
    [lexicalButtonZCopy release];
    [lexicalButtonZSelectedCopy release];
    [lexicalMenuButton1 release];
    [lexicalMenuButton2 release];
    [lexicalMenuButton3 release];
    [lexicalMenuButton4 release];
    [lexicalButtonMenu release];
    
    [lexicalScoreNumber0_1 release];
    [lexicalScoreNumber0_2 release];
    [lexicalScoreNumber0_3 release];
    [lexicalScoreNumber0_4 release];
    [lexicalScoreNumber0_5 release];
    [lexicalScoreNumber0_6 release];
    [lexicalScoreNumber1_1 release];
    [lexicalScoreNumber1_2 release];
    [lexicalScoreNumber1_3 release];
    [lexicalScoreNumber1_4 release];
    [lexicalScoreNumber1_5 release];
    [lexicalScoreNumber1_6 release];
    [lexicalScoreNumber2_1 release];
    [lexicalScoreNumber2_2 release];
    [lexicalScoreNumber2_3 release];
    [lexicalScoreNumber2_4 release];
    [lexicalScoreNumber2_5 release];
    [lexicalScoreNumber2_6 release];
    [lexicalScoreNumber3_1 release];
    [lexicalScoreNumber3_2 release];
    [lexicalScoreNumber3_3 release];
    [lexicalScoreNumber3_4 release];
    [lexicalScoreNumber3_5 release];
    [lexicalScoreNumber3_6 release];
    [lexicalScoreNumber4_1 release];
    [lexicalScoreNumber4_2 release];
    [lexicalScoreNumber4_3 release];
    [lexicalScoreNumber4_4 release];
    [lexicalScoreNumber4_5 release];
    [lexicalScoreNumber4_6 release];
    [lexicalScoreNumber5_1 release];
    [lexicalScoreNumber5_2 release];
    [lexicalScoreNumber5_3 release];
    [lexicalScoreNumber5_4 release];
    [lexicalScoreNumber5_5 release];
    [lexicalScoreNumber5_6 release];
    [lexicalScoreNumber6_1 release];
    [lexicalScoreNumber6_2 release];
    [lexicalScoreNumber6_3 release];
    [lexicalScoreNumber6_4 release];
    [lexicalScoreNumber6_5 release];
    [lexicalScoreNumber6_6 release];
    [lexicalScoreNumber7_1 release];
    [lexicalScoreNumber7_2 release];
    [lexicalScoreNumber7_3 release];
    [lexicalScoreNumber7_4 release];
    [lexicalScoreNumber7_5 release];
    [lexicalScoreNumber7_6 release];
    [lexicalScoreNumber8_1 release];
    [lexicalScoreNumber8_2 release];
    [lexicalScoreNumber8_3 release];
    [lexicalScoreNumber8_4 release];
    [lexicalScoreNumber8_5 release];
    [lexicalScoreNumber8_6 release];
    [lexicalScoreNumber9_1 release];
    [lexicalScoreNumber9_2 release];
    [lexicalScoreNumber9_3 release];
    [lexicalScoreNumber9_4 release];
    [lexicalScoreNumber9_5 release];
    [lexicalScoreNumber9_6 release];
    [lexicalScoreDigitOne release];
    [lexicalScoreDigitTwo release];
    [lexicalScoreDigitThree release];
    [lexicalTimeDigitOne release];
    [lexicalTimeDigitTwo release];
    [lexicalTimeDigitThree release];
    [lexicalScoreMenu release];
    [lexicalTimeMenu release];
    
    [lexicalWordAcronym release];
    [lexicalWordAcrylic release];
    [lexicalWordAnymore release];
    [lexicalWordAwesome release];
    [lexicalWordBathing release];
    [lexicalWordBazooka release];
    [lexicalWordBelched release];
    [lexicalWordBottoms release];
    [lexicalWordCalzone release];
    [lexicalWordCentrum release];
    [lexicalWordChortle release];
    [lexicalWordCompels release];
    [lexicalWordDetoxes release];
    [lexicalWordDollops release];
    [lexicalWordDuality release];
    [lexicalWordDugongs release];
    [lexicalWordEditors release];
    [lexicalWordEgghead release];
    [lexicalWordElastic release];
    [lexicalWordExcrete release];
    [lexicalWordFarting release];
    [lexicalWordFathoms release];
    [lexicalWordFiddler release];
    [lexicalWordFlaccid release];
    [lexicalWordGelatin release];
    [lexicalWordGluteus release];
    [lexicalWordGrasped release];
    [lexicalWordGuineas release];
    [lexicalWordHaddock release];
    [lexicalWordHijacks release];
    [lexicalWordHonkers release];
    [lexicalWordHydrant release];
    [lexicalWordImplode release];
    [lexicalWordIridium release];
    [lexicalWordIroning release];
    [lexicalWordIsotope release];
    [lexicalWordJanitor release];
    [lexicalWordJockeys release];
    [lexicalWordJudging release];
    [lexicalWordJuniper release];
    [lexicalWordKarting release];
    [lexicalWordKnocker release];
    [lexicalWordKobolds release];
    [lexicalWordKumquat release];
    [lexicalWordLasagne release];
    [lexicalWordLegible release];
    [lexicalWordLoathed release];
    [lexicalWordLychees release];
    [lexicalWordMahjong release];
    [lexicalWordManhole release];
    [lexicalWordMitosis release];
    [lexicalWordMuncher release];
    [lexicalWordNarcism release];
    [lexicalWordNewbies release];
    [lexicalWordNitwits release];
    [lexicalWordNoodles release];
    [lexicalWordOctopus release];
    [lexicalWordOnagers release];
    [lexicalWordOrganic release];
    [lexicalWordOxidant release];
    [lexicalWordPackage release];
    [lexicalWordParfait release];
    [lexicalWordPerplex release];
    [lexicalWordPincers release];
    [lexicalWordQuacked release];
    [lexicalWordQueried release];
    [lexicalWordQuintet release];
    [lexicalWordQuivers release];
    [lexicalWordRectory release];
    [lexicalWordRhubarb release];
    [lexicalWordRoulade release];
    [lexicalWordRustier release];
    [lexicalWordSandbox release];
    [lexicalWordSextets release];
    [lexicalWordShoguns release];
    [lexicalWordSpelunk release];
    [lexicalWordTableau release];
    [lexicalWordTimpani release];
    [lexicalWordTopless release];
    [lexicalWordTubists release];
    [lexicalWordUmpteen release];
    [lexicalWordUnboxed release];
    [lexicalWordUpkeeps release];
    [lexicalWordUrinals release];
    [lexicalWordVaguely release];
    [lexicalWordVintage release];
    [lexicalWordViscous release];
    [lexicalWordVomiter release];
    [lexicalWordWalnuts release];
    [lexicalWordWizards release];
    [lexicalWordWordage release];
    [lexicalWordWyverns release];
    [lexicalWordXanthic release];
    [lexicalWordXenopus release];
    [lexicalWordXerotic release];
    [lexicalWordXyloses release];
    [lexicalWordYcleped release];
    [lexicalWordYeshiva release];
    [lexicalWordYoghurt release];
    [lexicalWordYowlers release];
    [lexicalWordZealots release];
    [lexicalWordZelkova release];
    [lexicalWordZestily release];
    [lexicalWordZygotes release];
    [lexicalWordSprite release];
    [lexicalWordMenu release];
    [lexicalWordArray release];
    
    [lexicalGraphic1st release];
    [lexicalGraphic2nd release];
    [lexicalGraphic3rd release];
    [lexicalGraphic4th release];
    [lexicalGraphic5th release];
    [lexicalGraphic6th release];
    [lexicalGraphic7th release];
    [lexicalGraphic1stCopy release];
    [lexicalGraphic2ndCopy release];
    [lexicalGraphic3rdCopy release];
    [lexicalGraphic4thCopy release];
    [lexicalGraphic5thCopy release];
    [lexicalGraphic6thCopy release];
    [lexicalGraphic7thCopy release];
    [lexicalLetterInTheWord release];
    [lexicalLetterNumSprite release];
    
	[self unscheduleAllSelectors];
    [self removeAllChildrenWithCleanup:YES];
	[self release];
	[super dealloc];
}

@end
