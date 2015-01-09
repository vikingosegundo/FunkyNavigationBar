//
//  NavigationViewController.m
//  NavBugSample
//
//  Created by Manuel Meyer on 08.01.15.
//  Copyright (c) 2015 vs. All rights reserved.
//

#import "NavigationViewController.h"


@interface NavigationViewController ()
@end

@implementation NavigationViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.interactivePopGestureRecognizer addObserver:self
                                           forKeyPath:@"state"
                                              options:(NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld)
                                              context:NULL];
}




- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context
{
    if ([keyPath isEqual:@"state"]) {
        [self recognizer:object
            changedState:[change[@"new"] integerValue]
                oldState:[change[@"new"] integerValue]];

    } else {
        [super observeValueForKeyPath:keyPath
                             ofObject:object
                               change:change
                              context:context];
    }
}

- (void)recognizer:(UIGestureRecognizer *)recognizer
      changedState:(UIGestureRecognizerState)newState
          oldState:(UIGestureRecognizerState)oldState
{
    switch (newState) {
        case UIGestureRecognizerStateEnded:
        case UIGestureRecognizerStateCancelled:
        case UIGestureRecognizerStateFailed:
            [self.navigationBar setUserInteractionEnabled:YES]; break;
            
        case UIGestureRecognizerStateBegan:
            [self.navigationBar setUserInteractionEnabled:NO]; break;
            
        default:
            break;
    }
}


@end
