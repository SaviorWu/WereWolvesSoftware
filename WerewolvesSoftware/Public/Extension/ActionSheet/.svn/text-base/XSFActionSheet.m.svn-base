//
//  XSFActionSheet.m
//  XSF
//
//  Created by sky on 2016/12/27.
//  Copyright © 2016年 Xsf Technology Co.,Ltd. All rights reserved.
//

#import "XSFActionSheet.h"

@interface XSFActionSheet ()<UITableViewDelegate,UITableViewDataSource>
{
    NSArray *_dataArray;
}
@property (nonatomic, assign) UITableView   *tableView;
@end

@implementation XSFActionSheet

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(void)setDataArray:(NSArray *)dataArray{
    _dataArray = dataArray;
}
-(void)setTableView{
    
}
#pragma mark - UITableViewDataSource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _dataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
@end
