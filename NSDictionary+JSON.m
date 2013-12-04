//
//  NSDictionary+JSON.m
//
//  Created by Justin Makaila on 6/25/13.
//  Copyright (c) 2013 Justin Makaila. All rights reserved.
//

#import "NSDictionary+JSON.h"

@implementation NSDictionary (JSON)

+ (NSDictionary*)dictionaryWithContentsOfJSONURLString:(NSString*)urlAddress {
    NSData* data = [NSData dataWithContentsOfURL:[NSURL URLWithString: urlAddress]];
    
    __autoreleasing NSError* error = nil;
    id result = [NSJSONSerialization JSONObjectWithData:data
                                                options:kNilOptions
                                                  error:&error];
    if (error != nil) return nil;
    return result;
}

+ (NSDictionary*)dictionaryWithJSONData:(NSData *)data {
    NSError *error;
    NSDictionary *result = [NSJSONSerialization JSONObjectWithData:data
                                                           options:kNilOptions
                                                             error:&error];
    
    if (error != nil) return nil;
    return result;
}

- (NSData*)toJSON {
    NSError* error = nil;
    id result = [NSJSONSerialization dataWithJSONObject:self
                                                options:kNilOptions
                                                  error:&error];
    if (error != nil) return nil;
    return result;
}

/**
 *  Serializes a JSON string to be sent over the network
 *
 *  @return The serialized playlist session JSON string
 */
- (NSString*)JSONString {
    NSError *error;
    NSData *serializedData = [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:&error];
    
    NSString *JSONString = [[NSString alloc] initWithData:serializedData encoding:NSUTF8StringEncoding];
    
    return JSONString;
}

@end
