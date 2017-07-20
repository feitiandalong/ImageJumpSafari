//
//  UIImageView+JumpLookImage.h
//  SafetyWarning
//
//  Created by 程龙 on 17/7/14.
//  Copyright © 2017年 程龙. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (JumpLookImage)

- (void)addCanJumpActionPath:(NSURL *)url;

#ifdef DEBUG
@property (nonatomic, strong) NSURL *downUrl;
#endif


@end
