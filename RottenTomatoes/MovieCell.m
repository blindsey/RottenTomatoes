//
//  MovieCell.m
//  RottenTomatoes
//
//  Created by Ben Lindsey on 10/16/13.
//  Copyright (c) 2013 Ben Lindsey. All rights reserved.
//

#import "MovieCell.h"

@interface MovieCell ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *starringLabel;

@end

@implementation MovieCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setMovie:(Movie *)movie
{
    self.titleLabel.text = movie.title;
    self.starringLabel.text = movie.starring;
}

@end
