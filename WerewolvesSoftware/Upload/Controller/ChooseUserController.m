//
//  ChooseUserController.m
//  WerewolvesSoftware
//
//  Created by sky on 2017/2/28.
//  Copyright © 2017年 Werewolves. All rights reserved.
//

#import "ChooseUserController.h"


#import "ChooseUserCell.h"


@interface ChooseUserController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray        *dataArray;         //数据源
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *spaceConsten;

- (IBAction)btnClick;
@end

@implementation ChooseUserController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (self.isMultipleChoice) {
        self.spaceConsten.constant = 50;
    }else{
        self.spaceConsten.constant = 0;
    }
    [self setRefreshTableView];
}
-(void)loadData{
    [XSFNetworkTools networkUploadGetUserListWithParam:nil success:^(id object) {
        self.dataArray = object[INTERFACE_DATA];
        [self.refreshTableView reloadData];
    }];
}
-(void)setRefreshTableView{
    self.refreshTableView.estimatedRowHeight = 60.0f;
    self.refreshTableView.sectionHeaderHeight = 0.1f;
    self.refreshTableView.sectionFooterHeight = 0.5f;
    self.refreshTableView.rowHeight = UITableViewAutomaticDimension;
    [self registerNibWithName:@"ChooseUserCell"];
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UserModel *model = self.dataArray[indexPath.row];
    ChooseUserCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ChooseUserCell"];
    cell.user = model;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
//UITableViewDelegate
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UserModel *model = self.dataArray[indexPath.row];
    if (self.isMultipleChoice) {
        model.isSelcet = !model.isSelcet;
        [self.refreshTableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
    }else{
        self.block([@[model] mutableCopy]);
    }
}
- (IBAction)btnClick {
    NSMutableArray *mutArray = [NSMutableArray new];
    for (UserModel *model in self.dataArray) {
        if (model.isSelcet) {
            [mutArray addObject:model];
        }
    }
    self.block(mutArray);
    [self.navigationController popViewControllerAnimated:YES];
}
@end
