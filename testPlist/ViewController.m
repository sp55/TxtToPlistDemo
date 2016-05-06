//
//  ViewController.m
//  testPlist
//
//  Created by admin on 16/5/6.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "ViewController.h"
#import "EHAddressPickerView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    
//    NSError *error;
//    NSString *path = [NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"place" ofType:@"txt"] encoding:NSUTF8StringEncoding error:&error];
//    NSData *data=[path dataUsingEncoding:NSUTF8StringEncoding];
//    NSArray *testArr=[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
//    NSLog(@"==%@\n",testArr);
//    [testArr writeToFile:@"/Users/admin/Desktop/test.plist" atomically:YES];
    
    
    EHAddressPickerView *addressPickView = [EHAddressPickerView shareInstance];
    [self.view addSubview:addressPickView];
    addressPickView.block = ^(NSString *provinceString,NSString *cityString,NSString *townString){
        NSLog(@"===%@%@%@",provinceString,cityString,townString);
    };

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
