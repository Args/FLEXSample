//
//  ObjcWebViewController.m
//  FLEXSample
//
//  Created by LDJ on 2019/8/13.
//  Copyright © 2019 WanTu. All rights reserved.
//

#import "ObjcWebViewController.h"
#import <WebKit/WebKit.h>
#import <FLEX/FLEX.h>

@interface ObjcWebViewController ()
@property (nonatomic,strong)WKWebView *wkWebView;

@end

@implementation ObjcWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    WKWebViewConfiguration *configuration = [[WKWebViewConfiguration alloc] init];
    WKUserContentController *userContentController = [[WKUserContentController alloc] init];
    configuration.userContentController = userContentController;

    self.wkWebView = [[WKWebView alloc] initWithFrame:self.view.bounds];

    __weak typeof(self) weakSelf = self;
    self.wkWebView.allowsBackForwardNavigationGestures = YES;
    
    [self.view addSubview:self.wkWebView];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:@"https://www.github.com"]];
    [self.wkWebView loadRequest:request];
    
    UIBarButtonItem *barbutton = [[UIBarButtonItem alloc]initWithTitle:@"close" style:UIBarButtonItemStylePlain target:self action:@selector(closeOnClick)];
    self.navigationItem.rightBarButtonItem = barbutton;
}
-(void)closeOnClick{
    [self.navigationController dismissViewControllerAnimated:YES completion:^{
        
    }];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
