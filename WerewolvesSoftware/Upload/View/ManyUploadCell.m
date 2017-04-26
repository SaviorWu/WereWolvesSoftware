//
//  ManyUploadCell.m
//  WerewolvesSoftware
//
//  Created by sky on 2017/2/27.
//  Copyright © 2017年 Werewolves. All rights reserved.
//

#import "ManyUploadCell.h"
#import "UserModel.h"

@interface ManyUploadCell ()

@property (nonatomic, strong) NSString *nameString;
@property (strong, nonatomic) IBOutlet UILabel      *userLabel;


@end

@implementation ManyUploadCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(void)setUserArray:(NSMutableArray *)userArray{
    if (userArray.count) {
        for (int i = 0; i < userArray.count; i++) {
            UserModel *model = userArray[i];
            if (i == 0) {
                self.nameString = model.userName;
            }else{
                self.nameString = [NSString stringWithFormat:@"%@\n%@",self.nameString,model.userName];
            }
        }
        self.userLabel.text = self.nameString;
    }else{
        self.userLabel.text = @"  ";
    }
    
}

@end
