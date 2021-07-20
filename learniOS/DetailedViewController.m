//
//  DetailedViewController.m
//  learniOS
//
//  Created by citrix on 7/20/21.
//

#import "DetailedViewController.h"
#import <WebKit/WebKit.h>

@interface DetailedViewController () <WKNavigationDelegate>
@property (nonatomic, strong, readwrite) WKWebView *webView;
@end

@implementation DetailedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view addSubview:({
        self.webView = [[WKWebView alloc] initWithFrame: CGRectMake(0, 88, self.view.frame.size.width, self.view.frame.size.height - 88)];
        self.webView.navigationDelegate = self;
        self.webView;
    })];
    
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.citrix.com"]]];
}

- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler {
    NSLog(@"Prepare to load URL: %@", navigationAction.request.URL.absoluteString);
    decisionHandler(WKNavigationActionPolicyAllow);
}

@end
