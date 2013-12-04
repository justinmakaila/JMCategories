//
//  UIBarButtonItem+CustomImage.h
//
//  Created by Justin Makaila on 10/2/13.
//  Copyright (c) 2013 Justin Makaila All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (CustomImage)

+ (id)initWithImage:(UIImage*)image withFrame:(CGRect)rect target:(id)target action:(SEL)selector;

@end
