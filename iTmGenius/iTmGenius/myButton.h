//
// Created by Panda on 22/08/13.
// Copyright (c) 2013 iTmSense. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>


@interface myButton : UIButton  {
     NSString * songPath;
     BOOL buttonCurrentStatus;
}

extern int const kplayer1 = 1;
extern int const kplayer2 = 2;
extern int const kplayer3 = 3;
extern int const kplayer4 = 4;


- (void) unblink;
- (void) blinkButton;
- (void) buttonClicked;

@end