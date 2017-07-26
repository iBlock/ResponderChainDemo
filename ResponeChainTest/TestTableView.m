//
//  TestTableView.m
//  ResponeChainTest
//
//  Created by iBlock on 2017/7/26.
//  Copyright © 2017年 iBlock. All rights reserved.
//

#import "TestTableView.h"
#import "TableViewCell.h"
#import "UIResponder+DJEventRouter.h"

@interface TestTableView()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation TestTableView

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame style:UITableViewStylePlain]) {
        [self prepareUI];
    }
    return self;
}

- (void)prepareUI {
    [self registerClass:[TableViewCell class] forCellReuseIdentifier:@"TEST"];
    self.delegate = self;
    self.dataSource = self;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 45;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TEST"];
    [cell configCell:@"kwkwkwkw"];
    return cell;
}

- (void)routerEventWithName:(NSString *)eventName userInfo:(NSDictionary *)userInfo
{
    NSLog(@"TableViewView");
    [super routerEventWithName:eventName userInfo:userInfo];
}

@end
