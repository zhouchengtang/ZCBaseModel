//
//  TestModel1.h
//  ZCBaseModelProject
//
//  Created by 唐周成 on 16/1/19.
//  Copyright © 2016年 zc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "TestModel2.h"
#import "ZCBaseModel.h"

@protocol TestModel2 <NSObject>

@end

@interface TestModel1 : ZCBaseModel

@property(nonatomic, assign)BOOL testBool;
@property(nonatomic, assign)NSInteger testInteger;
@property(nonatomic, assign)CGFloat testFloat;
@property(nonatomic, assign)double testDouble;
@property(nonatomic, strong)NSString * testString;
@property(nonatomic, strong)TestModel2 * testModel;
@property(nonatomic, strong)NSArray <TestModel2> * testArray;

@end
