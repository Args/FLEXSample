//
//  ViewController.m
//  FLEXSample
//
//  Created by LDJ on 2019/8/13.
//  Copyright © 2019 WanTu. All rights reserved.
//

#import "ViewController.h"
#import "FlEXSample-Swift.h"
#import "ObjcWebViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)objcTurn:(id)sender {
    ObjcWebViewController *webVC = [[ObjcWebViewController alloc]init];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:webVC];
    [self presentViewController:nav animated:YES completion:^{
        
    }];
}

- (IBAction)swiftTurn:(id)sender {
    WebViewController *webVC = [[WebViewController alloc]init];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:webVC];
    [self presentViewController:nav animated:YES completion:^{
        
    }];
}

@end
