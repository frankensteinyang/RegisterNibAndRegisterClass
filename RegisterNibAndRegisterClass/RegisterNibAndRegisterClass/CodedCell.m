//
//  CodedCell.m
//  RegisterNibAndRegisterClass
//
//  Created by Hannibal Yang on 11/10/14.
//  Copyright (c) 2014 Hannibal Yang. All rights reserved.
//

#import "CodedCell.h"

@implementation CodedCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        UILabel *label = [[UILabel alloc] init];
        label.frame = CGRectMake(0, 0, 100, 30);
        label.text = @"妖怪，哪里逃？";
        label.numberOfLines = 0;
        [self.contentView addSubview:label];
        
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
        btn.center = CGPointMake(160, 20);
        [self.contentView addSubview:btn];
        
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
