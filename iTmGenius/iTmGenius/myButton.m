//
// Created by Panda on 22/08/13.
// Copyright (c) 2013 iTmSense. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "myButton.h"


@implementation myButton {

}
- (void)unblink {
    NSString * selected;
    NSString * notselected;

    if (self.tag == kplayer1) {
        selected = [NSString stringWithString:@"ButtonBlueOn.png"];
        notselected = [NSString stringWithString:@"ButtonBlueOff.png"];

    }
    else if (self.tag == kplayer2) {
        selected = [NSString stringWithString:@"ButtonRedOn.png"];
        notselected = [NSString stringWithString:@"ButtonRedOff.png"];
    }
    else if (self.tag == kplayer3) {
        selected = [NSString stringWithString:@"ButtonGreenOn.png"];
        notselected = [NSString stringWithString:@"ButtonGreenOff.png"];
    }
    else if (self.tag == kplayer4) {
        selected = [NSString stringWithString:@"ButtonYellowOn.png"];
        notselected = [NSString stringWithString:@"ButtonYellowOff.png"];
    }


    buttonCurrentStatus = NO;
    //[self setSelected:NO];
    [self setImage:[UIImage imageNamed:notselected] forState:UIControlStateNormal];

}

- (void)blinkButton {

    NSString * selected;
    NSString * notselected;

    if (self.tag == kplayer1) {
        selected = [NSString stringWithString:@"ButtonBlueOn.png"];
        notselected = [NSString stringWithString:@"ButtonBlueOff.png"];

    }
    else if (self.tag == kplayer2) {
        selected = [NSString stringWithString:@"ButtonRedOn.png"];
        notselected = [NSString stringWithString:@"ButtonRedOff.png"];
    }
    else if (self.tag == kplayer3) {
        selected = [NSString stringWithString:@"ButtonGreenOn.png"];
        notselected = [NSString stringWithString:@"ButtonGreenOff.png"];
    }
    else if (self.tag == kplayer4) {
        selected = [NSString stringWithString:@"ButtonYellowOn.png"];
        notselected = [NSString stringWithString:@"ButtonYellowOff.png"];
    }


            buttonCurrentStatus = YES;
           // [self setSelected:YES];
            [self setImage: [UIImage imageNamed:selected] forState:UIControlStateNormal];
            [self performSelector:@selector(unblink) withObject:NULL afterDelay:0.3];



}


- (void)buttonClicked{

    NSLog(@"buttonClicked %d", self.tag);

    //[self setSelected:YES];

    //again for unblink
    [self blinkButton];
}


@end