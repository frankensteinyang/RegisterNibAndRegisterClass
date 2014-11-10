//
//  ViewController.m
//  RegisterNibAndRegisterClass
//
//  Created by Hannibal Yang on 11/10/14.
//  Copyright (c) 2014 Hannibal Yang. All rights reserved.
//

#import "ViewController.h"
#import "CodedCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.rowHeight = 80;
    
    // 注册一个xib文件
    // 如果tableView通过@"RegisterCell"这个标识去缓存池中没有取到可循环利用的Cell, 就会加载RegisterCell.xib文件来创建Cell
    [self.tableView registerNib:[UINib nibWithNibName:@"RegisterCell" bundle:nil] forCellReuseIdentifier:@"XibCell"];
    
    
//    [self.tableView registerClass:[CodedCell class] forCellReuseIdentifier:@"CodedCell"];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

//    ****************************************************************************
//    Using RegisterCell.xib
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"XibCell"];
//    if (cell == nil) {
//        cell = [[NSBundle mainBundle] loadNibNamed:@"RegisterCell" owner:nil options:nil][0];
//    }
//    ****************************************************************************
    
//    ****************************************************************************
//    Using code
//    CodedCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CodedCell"];
//    if (cell == nil) {
//        cell = [[CodedCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CodedCell"];
//    }
//    ****************************************************************************
    
    // 验证cell中是否只有一个contentView 并验证contentView中有没有Label和Button
    NSLog(@"%@", cell.subviews);
    NSLog(@"%@", cell.contentView.subviews);
    
    // 验证循环利用
    NSLog(@"%p *** %d", cell, indexPath.row);
    return cell;
}

@end
