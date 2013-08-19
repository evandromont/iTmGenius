//
//  ViewController.h
//  iTmGenius
//
//  Created by Evandro Montenegro on 05/08/13.
//  Copyright (c) 2013 iTmSense. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController {
     AVAudioPlayer* audioPlayer;
    
    BOOL started;
    IBOutlet UIButton * btnCenter;
}

- (IBAction)start:(id)sender;
- (IBAction)play:(id)sender;






@end
