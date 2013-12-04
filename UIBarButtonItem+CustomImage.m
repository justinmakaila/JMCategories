//
//  UIBarButtonItem+CustomImage.m
//
//  Created by Justin Makaila on 10/2/13.
//  Copyright (c) 2013 Justin Makaila All rights reserved.
//

#import "UIBarButtonItem+CustomImage.h"

@implementation UIBarButtonItem (CustomImage)

+ (id)initWithImage:(UIImage*)image withFrame:(CGRect)rect target:(id)target action:(SEL)selector {
    UIButton *button = [[UIButton alloc] initWithFrame:rect];
    [button setAdjustsImageWhenHighlighted:NO];
    [button addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    [button setImage:image forState:UIControlStateNormal];

    return [[UIBarButtonItem alloc] initWithCustomView:button];
}

@end
