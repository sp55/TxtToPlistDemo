//
//  EHAddressPickerView.h
//  testPlist
//
//  Created by admin on 16/5/6.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YYCategories.H"

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height

//,province,city,town]
typedef void(^EHAddressPickerBlock)(NSString *provinceString,NSString *cityString,NSString *townString);

@interface EHAddressPickerView : UIView

@property(nonatomic,copy)EHAddressPickerBlock block;

+ (instancetype)shareInstance;
@end
