//
//  ViewController.h
//  iTmGenius
//
//  Created by Evandro Montenegro on 05/08/13.
//  Copyright (c) 2013 iTmSense. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "myButton.h"
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController : UIViewController {
    AVAudioPlayer* audioPlayer;


    BOOL isStarted; //when the game is started
    BOOL isPlayerTurn; //when the player need to play

    IBOutlet myButton * btnCenter;


    NSMutableArray * listComputer;
    NSMutableArray * listPlayer;

}

  extern float const blinkButtonTime = 0.3f;

- (IBAction)start:(id)sender;
- (IBAction)play:(id)sender;
- (IBAction)playVideo;

- (void) computerTurn;
- (void) playListComputer;
- (void) blinkButtonAtIndex:(NSNumber *) myIndex;

- (BOOL) isListsEquals;




@end
