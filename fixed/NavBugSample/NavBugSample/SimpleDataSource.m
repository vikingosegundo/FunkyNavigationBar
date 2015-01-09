//
//  SimpleDataSource.m
//  NavBugSample
//
//  Created by Manuel Meyer on 08.01.15.
//  Copyright (c) 2015 vs. All rights reserved.
//

#import "SimpleDataSource.h"

@implementation SimpleDataSource 

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.numberOfRows integerValue];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.textLabel.text = [@(indexPath.row) stringValue];
    return cell;
}

@end
