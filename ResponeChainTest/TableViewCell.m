//
//  TableViewCell.m
//  ResponeChainTest
//
//  Created by iBlock on 2017/7/26.
//  Copyright © 2017年 iBlock. All rights reserved.
//

#import "TableViewCell.h"
#import "UIResponder+DJEventRouter.h"

@interface TableViewCell()

@property (nonatomic, strong) UILabel *customLabel;
@property (nonatomic, strong) UIButton *button;

@end

@implementation TableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self prepaerUI];
    }
    return self;
}

- (void)prepaerUI {
    [self.contentView addSubview:self.customLabel];
    [self.contentView addSubview:self.button];
}

- (void)configCell:(NSString *)text {
    self.customLabel.text = text;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)buttonEvent:(UIButton *)sender {
    [self routerEventWithName:@"TestCellButtonEvt" userInfo:@{}];
}

- (void)routerEventWithName:(NSString *)eventName userInfo:(NSDictionary *)userInfo
{
    NSLog(@"TableViewCell");
    [super routerEventWithName:eventName userInfo:userInfo];
}

- (UILabel *)customLabel {
    if (!_customLabel) {
        _customLabel = [[UILabel alloc] init];
        _customLabel.frame = CGRectMake(0, 0, 100, 20);
    }
    return _customLabel;
}

- (UIButton *)button {
    if (!_button) {
        _button = [UIButton buttonWithType:UIButtonTypeCustom];
        [_button setTitle:@"确认" forState:UIControlStateNormal];
        [_button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        _button.frame = CGRectMake(200, 10, 100, 40);
        [_button addTarget:self action:@selector(buttonEvent:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _button;
}

@end
