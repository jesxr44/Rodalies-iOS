//
//  LineaTableViewCell.h
//  Rodalies
//
//  Created by Jesús Escribano on 24/08/14.
//  Copyright (c) 2014 Running Dogs Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LineaTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UIImageView *imagen;
@property (strong, nonatomic) IBOutlet UILabel *nombre;
@property (strong, nonatomic) IBOutlet UILabel *itinerario;

@end
