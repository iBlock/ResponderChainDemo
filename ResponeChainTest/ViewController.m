//
//  ViewController.m
//  ResponeChainTest
//
//  Created by iBlock on 2017/7/26.
//  Copyright © 2017年 iBlock. All rights reserved.
//

#import "ViewController.h"
#import "TestTableView.h"

@interface ViewController ()

@property (nonatomic, strong) TestTableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self prepareUI];
}

- (void)prepareUI {
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.tableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (TestTableView *)tableView {
    if (!_tableView) {
        _tableView = [[TestTableView alloc] initWithFrame:self.view.bounds];
    }
    return _tableView;
}

- (void)routerEventWithName:(NSString *)eventName userInfo:(NSDictionary *)userInfo
{
    NSLog(@"ViewController");
}

@end
