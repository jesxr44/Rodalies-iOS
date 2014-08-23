//
//  LineaTableViewCell.m
//  Rodalies
//
//  Created by Jesús Escribano on 24/08/14.
//  Copyright (c) 2014 Running Dogs Studio. All rights reserved.
//

#import "LineaTableViewCell.h"

@interface LineaTableViewCell ()

@end

@implementation LineaTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
