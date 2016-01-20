//
//  TestModel2.h
//  ZCBaseModelProject
//
//  Created by 唐周成 on 16/1/19.
//  Copyright © 2016年 zc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZCBaseModel.h"

@interface TestModel2 : ZCBaseModel

@property(nonatomic, strong)NSString * username;
@property(nonatomic, strong)NSString * password;
@property(nonatomic, assign)BOOL isBool;
@property(nonatomic, assign)NSInteger test_id;

@end
