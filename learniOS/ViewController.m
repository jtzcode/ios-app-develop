//
//  ViewController.m
//  learniOS
//
//  Created by citrix on 5/28/21.
//

#import "ViewController.h"
#import "NewsTableViewCell.h"

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
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    tableView.dataSource = self;
    tableView.delegate = self;
    [self.view addSubview:tableView];
    
//    TestView* view = [[TestView alloc] init];
//    view.backgroundColor = [UIColor greenColor];
//    view.frame = CGRectMake(150, 150, 100, 100);
//    [self.view addSubview: view];
//
//    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pushController)];
//    [view addGestureRecognizer:tapGesture];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIViewController *selectedView = [[UIViewController alloc] init];
    selectedView.title = [NSString stringWithFormat:@"Eggy %@", @(indexPath.row)];
    [self.navigationController pushViewController:selectedView animated:YES];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NewsTableViewCell *tableCell = [tableView dequeueReusableCellWithIdentifier:@"id_1"];
    if (!tableCell) {
        tableCell = [[NewsTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"id_1"];
    }
    
    [tableCell layoutTableView];

//    tableCell.textLabel.text = @"Eggy's home!";
//    tableCell.detailTextLabel.text = @"Lalalalululu";
//    tableCell.imageView.image = [UIImage imageNamed:@"icons/like@2x.png"];
    return tableCell;
}

//- (void) pushController {
//    UIViewController *newView = [[UIViewController alloc] init];
//    newView.view.backgroundColor = [UIColor whiteColor];
//    newView.navigationItem.title = @"Details";
//    newView.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Share" style:UIBarButtonItemStylePlain target:self action:nil];
//
//    [self.navigationController pushViewController:newView animated:YES];
//}


@end
