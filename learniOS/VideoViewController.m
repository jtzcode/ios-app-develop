//
//  VideoViewController.m
//  learniOS
//
//  Created by citrix on 6/10/21.
//

#import "VideoViewController.h"

@interface VideoViewController () <UICollectionViewDelegate, UICollectionViewDataSource>

@end

@implementation VideoViewController

- (instancetype)init {
    self = [super init];
    if (self) {
        self.tabBarItem.title = @"Videos";
        self.tabBarItem.image = [UIImage imageNamed:@"icons/video@2x.png"];
        self.tabBarItem.selectedImage = [UIImage imageNamed:@"icons/video_selected@2x.png"];
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    flowLayout.minimumLineSpacing = 10;
    flowLayout.minimumInteritemSpacing = 10;
    //flowLayout.itemSize = CGSizeMake((self.view.frame.size.width - 10) / 2, 300);
    
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:flowLayout];
    collectionView.delegate = self;
    collectionView.dataSource = self;
    
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cellId"];
    
    [self.view addSubview:collectionView];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 20;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellId" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor grayColor];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.item % 3 == 0) {
        return CGSizeMake(self.view.frame.size.width, 300);
    } else {
        return CGSizeMake((self.view.frame.size.width - 10) / 2, 300);
    }
}

@end
