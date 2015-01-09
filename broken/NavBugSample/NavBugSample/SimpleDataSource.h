//
//  SimpleDataSource.h
//  NavBugSample
//
//  Created by Manuel Meyer on 08.01.15.
//  Copyright (c) 2015 vs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleDataSource : NSObject <UITableViewDataSource>
@property (nonatomic, strong) NSNumber *numberOfRows;
@end
