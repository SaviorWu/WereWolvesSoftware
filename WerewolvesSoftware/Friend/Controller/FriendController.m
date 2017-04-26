//
//  FriendController.m
//  WerewolvesSoftware
//
//  Created by sky on 2017/2/27.
//  Copyright © 2017年 Werewolves. All rights reserved.
//

#import "FriendController.h"

@interface FriendController ()
@property (weak, nonatomic) IBOutlet UITableView *friendsTableView;
@property (nonatomic ,strong) NSMutableArray *friendsArray;

@end

@implementation FriendController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self hiddenBackButton];
    UIView *footerView= [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 1)];
    [self.friendsTableView setTableFooterView:footerView];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark  表格代理

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.friendsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    [cell.textLabel setText:[self.friendsArray objectAtIndex:indexPath.row]];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}

-(NSMutableArray *)friendsArray{

    if (!_friendsArray) {
        _friendsArray = [@[@"吴有鹏",@"周子涵",@"尹新林",@"向沁",@"易凡程",@"万龙",@"杨东鑫",@"裴胜",@"李建",@"陈驰",@"刘卫民",@"喻誉",@"沈阳",@"张果",@"聂立松",@"任艳",@"粟晶"] mutableCopy];
    }
    return _friendsArray;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
