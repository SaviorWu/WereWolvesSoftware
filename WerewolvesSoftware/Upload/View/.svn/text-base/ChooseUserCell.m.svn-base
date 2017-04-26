//
//  ChooseUserCell.m
//  WerewolvesSoftware
//
//  Created by sky on 2017/2/28.
//  Copyright © 2017年 Werewolves. All rights reserved.
//

#import "ChooseUserCell.h"

@interface ChooseUserCell ()

@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UIView *selectedView;

@end

@implementation ChooseUserCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
}

-(void)setUser:(UserModel *)user{
    self.selectedView.hidden = !user.isSelcet;
    self.nameLabel.text = [NSString stringWithFormat:@"%@-%@",user.nickName,user.userName];
}

@end
