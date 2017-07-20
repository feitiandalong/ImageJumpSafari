//
//  UIImageView+JumpLookImage.m
//  SafetyWarning
//
//  Created by 程龙 on 17/7/14.
//  Copyright © 2017年 程龙. All rights reserved.
//

#import "UIImageView+JumpLookImage.h"
#import <objc/runtime.h>

@implementation UIImageView (JumpLookImage)


- (void)addCanJumpActionPath:(NSURL *)url{
    
#ifdef DEBUG
    self.userInteractionEnabled = YES;
    UITapGestureRecognizer *Decales = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(personSet:)];
    [self addGestureRecognizer:Decales];
    Decales.numberOfTapsRequired = 1;
    self.downUrl = url;
#endif

    
//[self removeGestureRecognizer:Decales];

}

- (void)personSet:(UITapGestureRecognizer *)sender{
    
   [[UIApplication sharedApplication] openURL:self.downUrl];
}

#ifdef DEBUG
@dynamic downUrl;

static char downUrlKey;

- (NSURL *)downUrl{
    
    return objc_getAssociatedObject(self, &downUrlKey);
}

- (void)setDownUrl:(NSURL *)downUrl{
    objc_setAssociatedObject(self, &downUrlKey, downUrl, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#endif

@end
