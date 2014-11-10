//
//  ViewController.m
//  RegisterNibAndRegisterClass
//
//  Created by Hannibal Yang on 11/10/14.
//  Copyright (c) 2014 Hannibal Yang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.rowHeight = 80;
    
    // 注册一个xib文件
    // 如果tableView通过@"RegisterCell"这个标识去缓存池中没有取到可循环利用的Cell, 就会加载RegisterCell.xib文件来创建Cell
    [self.tableView registerNib:[UINib nibWithNibName:@"RegisterCell" bundle:nil] forCellReuseIdentifier:@"RegisterCell"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *ID = @"RegisterCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
//    if (cell == nil) {
//        cell = [[NSBundle mainBundle] loadNibNamed:@"RegisterCell" owner:nil options:nil][0];
//    }
    
    NSLog(@"%p *** %d", cell, indexPath.row);
    return cell;
}

@end
