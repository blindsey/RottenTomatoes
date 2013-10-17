//
//  Movie.h
//  RottenTomatoes
//
//  Created by Ben Lindsey on 10/16/13.
//  Copyright (c) 2013 Ben Lindsey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Movie : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *starring;

+ (NSArray *)moviesWithJSON:(NSArray *)array;

@end
