//
//  ViewController.m
//  iTmGenius
//
//  Created by Evandro Montenegro on 05/08/13.
//  Copyright (c) 2013 iTmSense. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
    
@end


@implementation ViewController



- (IBAction)start:(id)sender
{
    
     UIButton * btn = (UIButton*)sender;
    
    started = true;
    
    
    [btn setUserInteractionEnabled:FALSE];
    
    

    
}

- (IBAction)play:(id)sender
 {
     UIButton * btn = (UIButton*)sender;
     NSString* path;
     
     if (!started)
     {
         return;
     }
         
         
     if (btn.tag == 0) {
         path = [[NSBundle mainBundle] pathForResource:@"buttonBlue" ofType:@"mp3"];
         UIImage * uimage = [UIImage imageNamed:@"CharacterBlue.png"];
         [btnCenter setImage:uimage forState:UIControlStateNormal];
         
         
     }
     else if (btn.tag == 1) {
         path = [[NSBundle mainBundle] pathForResource:@"buttonRed" ofType:@"mp3"];
         UIImage * uimage = [UIImage imageNamed:@"CharacterRed.png"];
         [btnCenter setImage:uimage forState:UIControlStateNormal];

     }
     else if (btn.tag == 2) {
         path = [[NSBundle mainBundle] pathForResource:@"buttonGreen" ofType:@"mp3"];
         UIImage * uimage = [UIImage imageNamed:@"CharacterGreen.png"];
         [btnCenter setImage:uimage forState:UIControlStateNormal];

     }
     else if (btn.tag == 3) {
         path = [[NSBundle mainBundle] pathForResource:@"buttonYellow" ofType:@"mp3"];
         UIImage * uimage = [UIImage imageNamed:@"CharacterYellow.png"];
         [btnCenter setImage:uimage forState:UIControlStateNormal];

     }
     
     NSURL* file = [NSURL fileURLWithPath:path];
     

     audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:file error:nil];
     [audioPlayer prepareToPlay];
     
     if ([audioPlayer isPlaying]) {
         [audioPlayer pause];
     } else {
         [audioPlayer play];
     }
     
 }
 
 
 - (void)viewDidLoad
 {
 [super viewDidLoad];
 // Do any additional setup after loading the view, typically from a nib.
 }
 
 - (void)didReceiveMemoryWarning
 {
 [super didReceiveMemoryWarning];
 // Dispose of any resources that can be recreated.
 }



@end