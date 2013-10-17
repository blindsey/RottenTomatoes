//
//  RottenTomatoesClient.m
//  RottenTomatoes
//
//  Created by Ben Lindsey on 10/16/13.
//  Copyright (c) 2013 Ben Lindsey. All rights reserved.
//

#import "RottenTomatoesClient.h"
#import "AFNetworking.h"
#import "Movie.h"

@implementation RottenTomatoesClient

- (id)init
{
    self = [super initWithBaseURL:[NSURL URLWithString:@"http://api.rottentomatoes.com/api/public/v1.0/"]];
    if (self) {
        [self registerHTTPOperationClass:[AFJSONRequestOperation class]];
    }
    return self;
}

- (void)boxOfficeWithSuccess:(void (^)(AFHTTPRequestOperation *, NSArray *))success failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    [self getPath:@"lists/movies/box_office.json" parameters:@{@"apikey" : @"g9au4hv6khv6wzvzgt55gpqs" } success:^(AFHTTPRequestOperation *operation, id responseObject) {
        //NSLog(@"%@", responseObject);
        if ([responseObject isKindOfClass:[NSDictionary class]]) {
            NSDictionary *data = (NSDictionary *)responseObject;
            NSArray *movies = [Movie moviesWithJSON:data[@"movies"]];
            success(operation, movies);
        }
    } failure:failure];
}

@end
