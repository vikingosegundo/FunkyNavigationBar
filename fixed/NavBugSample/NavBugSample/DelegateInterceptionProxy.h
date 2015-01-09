//
//  DelegateInterceptionProxy.h
//  NavBugSample
//
//  Created by Manuel Meyer on 08.01.15.
//  Copyright (c) 2015 vs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DelegateInterceptionProxy : NSProxy
@property (readonly, weak, nonatomic) id originalDelegate;
@property (readonly, weak, nonatomic) id interceptionDelegate;
- (id)initWithOriginalDelegate:(id)delegate interceptionDelegate:(id)interceptionDelegate;
@end
