//
//  UIView+Category.h
//  BaseProject
//
//  Created by my on 16/3/24.
//  Copyright © 2016年 base. All rights reserved.
//

/*
 * 使用声明
 */
//listArray = [NSMutableArray array];
//for (NSInteger i = 0; i < 7; i++) {
//    [listArray addObject:[NSString stringWithFormat:@"%@",@(i)]];
//}
//_cellView = [[MLMOptionSelectView alloc] initOptionView];
//[self.leftRightView tapHandle:^{
//    CGRect label3Rect = [MLMOptionSelectView targetView:self.leftRightView];
//    [self customCell];
//    _cellView.arrow_offset = 0.1;
//    _cellView.vhShow = NO;
//    _cellView.optionType = MLMOptionSelectViewTypeArrow;
//    _cellView.selectedOption = ^(NSIndexPath *indexPath){
//        NSLog(@"click row = %ld",(long)indexPath.row);
//    };
//    [_cellView showViewFromPoint:CGPointMake(label3Rect.origin.x+40, label3Rect.origin.y) viewWidth:200 targetView:self.leftRightView direction:MLMOptionSelectViewRight];
//}];

/*
 * Cell自定义设置
 */
//#pragma mark - 设置——cell
//- (void)customCell {
//    WEAK(weaklistArray, listArray);
//    WEAK(weakSelf, self);
//    _cellView.canEdit = YES;
//    [_cellView registerNib:[UINib nibWithNibName:@"CustomCell" bundle:nil] forCellReuseIdentifier:@"CustomCell"];
//    _cellView.cell = ^(NSIndexPath *indexPath){
//        CustomCell *cell = [weakSelf.cellView dequeueReusableCellWithIdentifier:@"CustomCell"];
//        return cell;
//    };
//    _cellView.optionCellHeight = ^{
//        return 60.f;
//    };
//    _cellView.rowNumber = ^(){
//        return (NSInteger)weaklistArray.count;
//    };
//    _cellView.removeOption = ^(NSIndexPath *indexPath){
//        [weaklistArray removeObjectAtIndex:indexPath.row];
//        if (weaklistArray.count == 0) {
//            [weakSelf.cellView dismiss];
//        }
//    };
//}

/*
 *  navigation bar下拉列表
 */
//self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"展开" style:UIBarButtonItemStylePlain target:self action:@selector(showView)];
//- (void)showView {
//    [self defaultCell];
//    _cellView.arrow_offset = 0.9;
//    _cellView.vhShow = NO;
//    _cellView.optionType = MLMOptionSelectViewTypeArrow;
//    [_cellView showViewFromPoint:CGPointMake(SCREEN_WIDTH - 200 -10, 64 + 1) viewWidth:200 targetView:leftRightView direction:MLMOptionSelectViewBottom];
//}
#import <UIKit/UIKit.h>

typedef void (^TapAction)();

@interface UIView (Category)

- (void)tapHandle:(TapAction)block;
- (void)shakeView;
- (void)shakeRotation:(CGFloat)rotation;

@end
