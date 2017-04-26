//
//  UploadController.m
//  WerewolvesSoftware
//
//  Created by sky on 2017/2/27.
//  Copyright © 2017年 Werewolves. All rights reserved.
//

#import "UploadController.h"
#import "ChooseUserController.h"

#import "UploadModule.h"
#import "UserModel.h"

#import "OneUploadCell.h"
#import "ManyUploadCell.h"
#import "ResultCell.h"
#import "UploadCell.h"

@interface UploadController ()<UITableViewDelegate,UITableViewDataSource>
{
    UserModel *_prophetModel;//预言家
}
@property (nonatomic, strong) NSMutableArray        *dataArray;         //数据源
@property (nonatomic, strong) NSMutableArray        *civilianArray;     //平民数组
@property (nonatomic, strong) NSMutableArray        *wolfArray;         //狼数组

@end

@implementation UploadController
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.translucent = NO;
    //    [self.tabBarController setHidesBottomBarWhenPushed:NO];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadData];
    [self setRefreshTableView];
}
-(void)loadData{
    self.civilianArray = [NSMutableArray array];
    self.wolfArray = [NSMutableArray array];
    //预言家
    UploadModule *prophet = [[UploadModule alloc] initWithType:UploadModuleGodType];
    prophet.godType = ProphetType;
    //女巫
    UploadModule *witch = [[UploadModule alloc] initWithType:UploadModuleGodType];
    witch.godType = WitchType;
    //猎人
    UploadModule *huntsman = [[UploadModule alloc] initWithType:UploadModuleGodType];
    huntsman.godType = HuntsmanType;
    //白痴
    UploadModule *idiot = [[UploadModule alloc] initWithType:UploadModuleGodType];
    idiot.godType = IdiotType;
    //狼人
    UploadModule *wolf = [[UploadModule alloc] initWithType:UploadModuleWolfType];
    //平民
    UploadModule *civilian = [[UploadModule alloc] initWithType:UploadModuleCivilianType];
    //上帝
    UploadModule *judgment = [[UploadModule alloc] initWithType:UploadModuleJudgmentType];
    //胜负
    UploadModule *result = [[UploadModule alloc] initWithType:UploadModuleResultType];
    //上传
    UploadModule *upload = [[UploadModule alloc] initWithType:UploadModuleUploadType];
    
    self.dataArray = [@[prophet,witch,huntsman,idiot,wolf,civilian,judgment,result,upload] mutableCopy];
    
    [self.refreshTableView reloadData];
}
-(void)setRefreshTableView{
    self.refreshTableView.estimatedRowHeight = 60.0f;
    self.refreshTableView.sectionHeaderHeight = 0.1f;
    self.refreshTableView.sectionFooterHeight = 0.5f;
    self.refreshTableView.rowHeight = UITableViewAutomaticDimension;
    [self registerNibWithName:@"OneUploadCell"];
    [self registerNibWithName:@"ManyUploadCell"];
    [self registerNibWithName:@"ResultCell"];
    [self registerNibWithName:@"UploadCell"];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell;
    UploadModule *module = self.dataArray[indexPath.row];
    switch (module.type) {
        case UploadModuleGodType:
        {
            OneUploadCell *godCell = [tableView dequeueReusableCellWithIdentifier:@"OneUploadCell"];
            switch (module.godType) {
                case ProphetType:
                {
                    godCell.nameLabel.text = @"预言家";
                }
                    break;
                case WitchType:
                {
                    godCell.nameLabel.text = @"女巫";
                }
                    break;
                case HuntsmanType:
                {
                    godCell.nameLabel.text = @"猎人";
                }
                    break;
                case IdiotType:
                {
                    godCell.nameLabel.text = @"白痴";
                }
                    break;
                case GuardType:
                {
                    godCell.nameLabel.text = @"守卫";
                }
                    break;
            }
            cell = godCell;
        }
            break;
        case UploadModuleWolfType:
        {
            ManyUploadCell *wolfCell = [tableView dequeueReusableCellWithIdentifier:@"ManyUploadCell"];
            wolfCell.userArray = self.wolfArray;
            wolfCell.nameLabel.text = @"狼人";
            cell = wolfCell;
        }
            break;
        case UploadModuleCivilianType:
        {
            ManyUploadCell *civilian = [tableView dequeueReusableCellWithIdentifier:@"ManyUploadCell"];
            civilian.userArray = self.civilianArray;
            civilian.nameLabel.text = @"平民";
            cell = civilian;
        }
            break;
        case UploadModuleJudgmentType:
        {
            OneUploadCell *judgmentCell = [tableView dequeueReusableCellWithIdentifier:@"OneUploadCell"];
            judgmentCell.nameLabel.text = @"上帝";
            cell = judgmentCell;
        }
            break;
        case UploadModuleResultType:
        {
            ResultCell *resultCell = [tableView dequeueReusableCellWithIdentifier:@"ResultCell"];
            cell = resultCell;
        }
            break;
        case UploadModuleUploadType:
        {
            UploadCell *uploadCell = [tableView dequeueReusableCellWithIdentifier:@"UploadCell"];
            cell = uploadCell;
        }
            break;
            
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
//UITableViewDelegate
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UploadModule *module = self.dataArray[indexPath.row];
    ChooseUserController *lController = [[ChooseUserController alloc] initWithNibName:@"ChooseUserController" bundle:nil];
    if (module.type == UploadModuleWolfType) {
//        UserModel *model = [[UserModel alloc] init];
//        model.userName = @"周子涵";
//        [self.wolfArray addObject:model];
//        [self.refreshTableView reloadData];
        lController.isMultipleChoice = YES;
        lController.block = ^(NSMutableArray *array){
            [self.wolfArray removeAllObjects];
            [self.wolfArray addObjectsFromArray:array];
            [self.refreshTableView reloadData];
        };
    }else if (module.type == UploadModuleCivilianType){
        UserModel *model = [[UserModel alloc] init];
        model.userName = @"周子涵";
        [self.civilianArray addObject:model];
        [self.refreshTableView reloadData];
        lController.isMultipleChoice = YES;
        lController.block = ^(NSMutableArray *array){
            [self.wolfArray removeAllObjects];
            [self.wolfArray addObjectsFromArray:array];
            [self.refreshTableView reloadData];
        };
    }
    [self.navigationController pushViewController:lController animated:YES];
}
@end
