//
//  ImageView+Loading.m
//  XSF
//
//  Created by duck on 16/10/28.
//  Copyright © 2016年 Xsf Technology Co.,Ltd. All rights reserved.
//

#import "ImageView+Loading.h"

@implementation UIImageView(Loading)
- (void)LoadImage:(NSString*)url
{
//    UIImage *placeholderImage = [UIImage imageNamed:HOLDER_IMAGE];
//    NSURL *picUrl = [NSURL URLWithString:[Tools jointUrlPathWithUrlPath:url]];
//    self.backgroundColor    = kXSF_COLOR_240;
//    [self sd_setImageWithURL:picUrl
//            placeholderImage:placeholderImage
//                   completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL)
//     {
////         if(image != nil && ![image isKindOfClass:[NSNull class]])
////         {
////             if (successblock) {
////                 successblock(image);
////             }
////         }
//     }];
}
- (void)LoadImage:(NSString*)url PlaceholderImageName:(NSString*)placeholderImageName{
//    UIImage *placeholderImage = [UIImage imageNamed:placeholderImageName];
//    NSURL *picUrl = [NSURL URLWithString:[Tools jointUrlPathWithUrlPath:url]];
//    self.backgroundColor    = kXSF_COLOR_240;
//    [self sd_setImageWithURL:picUrl
//            placeholderImage:placeholderImage
//                   completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL)
//     {
//         
//     }];
}
- (void)LoadImage:(NSString*)url successBlock:(void(^)(UIImage* retImage))successblock
{
//    UIImage *placeholderImage = [UIImage imageNamed:HOLDER_IMAGE];
//    NSURL *picUrl = [NSURL URLWithString:[Tools jointUrlPathWithUrlPath:url]];
//    self.backgroundColor    = kXSF_COLOR_240;
//    [self sd_setImageWithURL:picUrl
//            placeholderImage:placeholderImage
//                   completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL)
//     {
//         if(image != nil && ![image isKindOfClass:[NSNull class]])
//         {
//             if (successblock) {
//                 successblock(image);
//             }
//         }
//         else
//         {
//             if (successblock) {
//                 UIImage* logoImage = [UIImage imageNamed:@"logo"];
//                 successblock(logoImage);
//             }
//         }
//     }];
}
- (void)LoadImage:(NSString*)url withHoderImage:(UIImage*)hoderImage successBlock:(void(^)(UIImage* retImage))successblock
{
//    if (!hoderImage)
//        hoderImage  = [UIImage imageNamed:HOLDER_IMAGE];
//    
//    UIImage *placeholderImage = hoderImage;
//    NSURL *picUrl = [NSURL URLWithString:[Tools jointUrlPathWithUrlPath:url]];
//    self.backgroundColor    = kXSF_COLOR_240;
//    [self sd_setImageWithURL:picUrl
//            placeholderImage:placeholderImage
//                   completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL)
//     {
//         if(image != nil && ![image isKindOfClass:[NSNull class]])
//         {
//             if (successblock) {
//                 successblock(image);
//             }
//         }
//     }];
}
- (void)LoadImage:(NSString*)url withWidth:(int)width withHeight:(int)height successBlock:(void(^)(UIImage* retImage))successblock
{
//    NSString *str_cut_type = @"_1c_";
//    NSString *cut_params = @"";
//    cut_params = [NSString stringWithFormat:@"%dw_%dh%@", width, height, str_cut_type];
//    if(url && ![url isEqualToString:@""])
//    {
//        NSRange range = [url rangeOfString:@"?"];//判断字符串是否包含
//        
//        if (range.length >0)//包含
//        {
//            NSString *pre = [url substringToIndex:range.location];
//            
//            NSString *last = [url substringFromIndex:range.location];
//            
//            
//            url = [NSString stringWithFormat:@"%@%@%@", pre, [NSString stringWithFormat:@"@%@.webp", cut_params], last];
//        }
//        else//不包含
//        {
//            url = [NSString stringWithFormat:@"%@%@", url, [NSString stringWithFormat:@"@%@.webp", cut_params]];
//        }
//    }
//    
//    UIImage *placeholderImage = [UIImage imageNamed:HOLDER_IMAGE];
//    NSURL *picUrl = [NSURL URLWithString:url];
//    [self sd_setImageWithURL:picUrl
//            placeholderImage:placeholderImage
//                   completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL)
//     {
//         if(image != nil && ![image isKindOfClass:[NSNull class]])
//         {
//             if (successblock) {
//                 successblock(image);
//             }
//         }
//         else
//         {
//             if (successblock) {
//                 successblock([UIImage imageNamed:HOLDER_IMAGE]);
//             }
//         }
//     }];
}
@end
