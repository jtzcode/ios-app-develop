//
//  NewsTableViewCell.m
//  learniOS
//
//  Created by citrix on 6/18/21.
//

#import "NewsTableViewCell.h"


@implementation NewsTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(nullable NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self){
        [self.contentView addSubview:({
            self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 15, 300, 50)];
            //self.titleLabel.backgroundColor = [UIColor redColor];
            self.titleLabel.font = [UIFont systemFontOfSize:16];
            self.titleLabel.textColor = [UIColor blackColor];
            self.titleLabel;
        })];
        
        [self.contentView addSubview:({
            self.sourceLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 80, 50, 20)];
            //self.sourceLabel.backgroundColor = [UIColor redColor];
            self.sourceLabel.font = [UIFont systemFontOfSize:12];
            self.sourceLabel.textColor = [UIColor lightGrayColor];
            self.sourceLabel;
        })];
        
        [self.contentView addSubview:({
            self.commentLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 80, 50, 20)];
            //self.commentLabel.backgroundColor = [UIColor redColor];
            self.commentLabel.font = [UIFont systemFontOfSize:12];
            self.commentLabel.textColor = [UIColor lightGrayColor];
            self.commentLabel;
        })];
        
        [self.contentView addSubview:({
            self.timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(150, 80, 50, 20)];
            //self.timeLabel.backgroundColor = [UIColor redColor];
            self.timeLabel.font = [UIFont systemFontOfSize:12];
            self.timeLabel.textColor = [UIColor lightGrayColor];
            self.timeLabel;
        })];
    }
    return self;
}

- (void) layoutTableView {
    self.titleLabel.text = @"Eggy 博客";
    
    self.sourceLabel.text = @"Eggy";
    [self.sourceLabel sizeToFit];
    
    self.commentLabel.text = @"10w+";
    [self.commentLabel sizeToFit];
    self.commentLabel.frame = CGRectMake(self.sourceLabel.frame.origin.x + self.sourceLabel.frame.size.width + 15, self.commentLabel.frame.origin.y, self.commentLabel.frame.size.width, self.commentLabel.frame.size.height);
    
    self.timeLabel.text = @"1 min ago";
    [self.timeLabel sizeToFit];
    self.timeLabel.frame = CGRectMake(self.commentLabel.frame.origin.x + self.commentLabel.frame.size.width + 15, self.timeLabel.frame.origin.y, self.timeLabel.frame.size.width, self.timeLabel.frame.size.height);
}

@end
