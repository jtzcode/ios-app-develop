//
//  RecommendViewController.m
//  learniOS
//
//  Created by citrix on 6/15/21.
//

#import "RecommendViewController.h"

@interface RecommendViewController () <UIScrollViewDelegate>

@end

@implementation RecommendViewController

- (instancetype) init {
    self = [super init];
    if(self) {
        self.tabBarItem.title = @"Favorites";
        self.tabBarItem.image = [UIImage imageNamed:@"icons/like@2x.png"];
        self.tabBarItem.selectedImage = [UIImage imageNamed:@"icons/like_selected@2x.png"];
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    scrollView.backgroundColor = [UIColor lightGrayColor];
    scrollView.contentSize = CGSizeMake(self.view.bounds.size.width * 5, self.view.bounds.size.height);
    scrollView.delegate = self;
    
    NSArray *colors = @[[UIColor redColor], [UIColor greenColor], [UIColor blueColor], [UIColor purpleColor], [UIColor blackColor]];
    
    for (int i = 0; i < 5; i++) {
        [scrollView addSubview:({
            UIView *view = [[UIView alloc] initWithFrame:CGRectMake(scrollView.bounds.size.width * i, 0, scrollView.bounds.size.width, scrollView.bounds.size.height)];
            view.backgroundColor = [colors objectAtIndex: i];
            view;
        })];
    }
    scrollView.pagingEnabled = YES;
    [self.view addSubview:scrollView];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    NSLog(@"Scroll to: %@", @(scrollView.contentOffset.x));
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    NSLog(@"Begin dragging..");
}

@end
