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

     NSLog(@"START");

     myButton * btn = (myButton*)sender;
     isStarted = true;

     [btn setUserInteractionEnabled:FALSE];


    if (listComputer == NULL) {
        listComputer = [[NSMutableArray alloc] init];
    }
    else {
        [listComputer removeAllObjects];
    }

    if (listPlayer == NULL) {
        listPlayer = [[NSMutableArray alloc]init];
    }
    else {
        [listPlayer removeAllObjects];
    }


    [self computerTurn];

    [self playListComputer];


}

- (IBAction)play:(id)sender
 {


     myButton * btn = (myButton*)sender;
     NSString* path;

     NSLog(@"PLAY %d", btn.tag);

     //if not started exit function
     if (!isStarted)
     {
         return;
     }
         
         
     if (btn.tag == kplayer1) {
         path = [[NSBundle mainBundle] pathForResource:@"buttonBlue" ofType:@"mp3"];
         UIImage * uimage = [UIImage imageNamed:@"CharacterBlue.png"];
         [btnCenter setImage:uimage forState:UIControlStateNormal];
         
         
     }
     else if (btn.tag == kplayer2) {
         path = [[NSBundle mainBundle] pathForResource:@"buttonRed" ofType:@"mp3"];
         UIImage * uimage = [UIImage imageNamed:@"CharacterRed.png"];
         [btnCenter setImage:uimage forState:UIControlStateNormal];

     }
     else if (btn.tag == kplayer3) {
         path = [[NSBundle mainBundle] pathForResource:@"buttonGreen" ofType:@"mp3"];
         UIImage * uimage = [UIImage imageNamed:@"CharacterGreen.png"];
         [btnCenter setImage:uimage forState:UIControlStateNormal];

     }
     else if (btn.tag == kplayer4) {
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



     [listPlayer addObject:[NSNumber numberWithInteger:btn.tag]];


     //RIGHT
     if ([self isListsEquals]){
         NSLog(@"RIGHT");


         [self computerTurn];
         [self playListComputer];



     }
     //WRONG
     else {
         NSLog(@"WRONG");
     }

 }

- (void)computerTurn {
    //computer random movement
    NSInteger myInteger = [self randomValueBetween:1 and:4];
    [listComputer addObject:[NSNumber numberWithInteger:myInteger]];
    NSLog(@"computer turn %d", myInteger);
}

- (void)playListComputer {

    int count = 1;

    for (NSNumber * myIndex in listComputer){
        [self blinkButtonAtIndex:myIndex];
        [self performSelector:@selector(blinkButtonAtIndex:) withObject:myIndex afterDelay:0.5 * count]; //blink
        //[self performSelector:@selector(blinkButtonAtIndex:) withObject:myIndex afterDelay:0.8 * count]; //unblink
        NSLog(@"playListComputer %d", myIndex.intValue);
        count = count + 1;
    }

}

- (void)blinkButtonAtIndex:(NSNumber *) myIndex {

    if ([self.view.subviews count] > 0){
        myButton *myBtn = (myButton*) [self.view viewWithTag:myIndex.intValue];
        [myBtn blinkButton];
    }

}


- (BOOL)isListsEquals {

    if ([listComputer isEqual:listPlayer]) {
        return YES;
    }
    else {return NO;}


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

- (NSInteger)randomValueBetween:(NSInteger)min and:(NSInteger)max {
    return (NSInteger)(min + arc4random_uniform(max - min + 1));
}

@end