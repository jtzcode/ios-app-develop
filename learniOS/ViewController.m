//
//  ViewController.m
//  learniOS
//
//  Created by citrix on 5/28/21.
//

#import "ViewController.h"

@interface TestView : UIView
@end

@implementation TestView

- (instancetype)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}
@end

@interface ViewController ()
@end

@implementation ViewController

- (instancetype)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    TestView* view = [[TestView alloc] init];
    view.backgroundColor = [UIColor greenColor];
    view.frame = CGRectMake(150, 150, 100, 100);
    [self.view addSubview: view];
    
}


@end
