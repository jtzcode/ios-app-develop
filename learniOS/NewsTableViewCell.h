//
//  NewsTableViewCell.h
//  learniOS
//
//  Created by citrix on 6/18/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NewsTableViewCell : UITableViewCell

@property(nonatomic, strong, readwrite) UILabel *titleLabel;
@property(nonatomic, strong, readwrite) UILabel *sourceLabel;
@property(nonatomic, strong, readwrite) UILabel *commentLabel;
@property(nonatomic, strong, readwrite) UILabel *timeLabel;

- (void) layoutTableView;
@end

NS_ASSUME_NONNULL_END
