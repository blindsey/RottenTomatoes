//
//  RottenTomatoesClient.h
//  RottenTomatoes
//
//  Created by Ben Lindsey on 10/16/13.
//  Copyright (c) 2013 Ben Lindsey. All rights reserved.
//

#import "AFHTTPClient.h"

@interface RottenTomatoesClient : AFHTTPClient

- (void)boxOfficeWithSuccess:(void (^)(AFHTTPRequestOperation *operation, NSArray *movies))success failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

@end
