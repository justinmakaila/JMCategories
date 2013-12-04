//
//  NSDictionary+JSON.h
//
//  Created by Justin Makaila on 6/25/13.
//  Copyright (c) 2013 Justin Makaila. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (JSON)
+ (NSDictionary*)dictionaryWithContentsOfJSONURLString:(NSString*)urlAddress;
+ (NSDictionary*)dictionaryWithJSONData:(NSData*)data;
- (NSData*)toJSON;
- (NSString*)JSONString;
@end
