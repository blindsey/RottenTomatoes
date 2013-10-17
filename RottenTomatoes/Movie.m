//
//  Movie.m
//  RottenTomatoes
//
//  Created by Ben Lindsey on 10/16/13.
//  Copyright (c) 2013 Ben Lindsey. All rights reserved.
//

#import "Movie.h"

@implementation Movie

+ (NSArray *)moviesWithJSON:(NSArray *)array
{
    NSMutableArray *movies = [[NSMutableArray alloc] init];
    for (NSDictionary *parameters in array) {
        Movie *movie = [[Movie alloc] init];
        movie.title = parameters[@"title"];
        movie.starring = parameters[@"abridged_cast"][0][@"name"];
        [movies addObject:movie];
    }
    return movies;
}

@end
