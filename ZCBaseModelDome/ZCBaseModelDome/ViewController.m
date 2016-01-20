//
//  ViewController.m
//  ZCBaseModelProject
//
//  Created by 唐周成 on 16/1/19.
//  Copyright © 2016年 zc. All rights reserved.
//

#import "ViewController.h"
#import "TestModel2.h"
#import "TestModel1.h"

@interface ViewController ()

@end

@implementation ViewController

- (NSDictionary *)testModelDict2
{
    return @{@"username":@"tangzhoucheng",
             @"password":@"123456789abc",
             @"isBool":@"0",
             @"id":@"123456"};
}

- (NSDictionary *)testModelDict1
{
    return @{@"testBool":@"1",
             @"testInteger":@"123321",
             @"testFloat":@"456.456",
             @"testDouble":@"789.987654321",
             @"testString":@"hello world",
             @"testModel":[self testModelDict2],
             @"testArray": @[[self testModelDict2], [self testModelDict2], [self testModelDict2], [self testModelDict2]]};
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableDictionary * dict1 = [[NSMutableDictionary alloc] initWithDictionary:[self testModelDict1]];
    TestModel1 * test1 = [[TestModel1 alloc] initWithDictionary:dict1];
    NSLog(@"test1_dictionaryWithModel=%@", [test1 dictionaryWithModel]);
    NSLog(@"testInteger=%ld", (long)test1.testInteger);
    NSLog(@"testBool=%d", test1.testBool);
    NSLog(@"testFloat=%f", test1.testFloat);
    NSLog(@"testDouble=%lf", test1.testDouble);
    NSLog(@"testString=%@", test1.testString);
    
    TestModel2 * test2 = test1.testModel;
    NSLog(@"test2_dictionaryWithModel=%@", [test2 dictionaryWithModel]);
    NSLog(@"username=%@", test2.username);
    NSLog(@"password=%@", test2.password);
    NSLog(@"isBool=%d", test2.isBool);
    NSLog(@"test_id=%ld", (long)test2.test_id);
    
    for (TestModel2 * model2 in test1.testArray) {
        NSLog(@"model2=%@", model2);
        NSLog(@"for_model2_dictionaryWithModel=%@", [model2 dictionaryWithModel]);
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
