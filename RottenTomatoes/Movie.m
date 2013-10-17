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
        movie.title = [parameters objectForKey:@"title"];

        NSMutableArray *stars = [[NSMutableArray alloc] init];
        for (NSDictionary *member in [parameters objectForKey:@"abridged_cast"]) {
            [stars addObject:[member objectForKey:@"name"]];
        }
        movie.starring = [stars componentsJoinedByString:@", "];

        [movies addObject:movie];
    }
    return movies;
}

@end
