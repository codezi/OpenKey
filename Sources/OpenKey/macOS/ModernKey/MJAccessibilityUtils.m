//
//  MJAccessibilityUtils.m
//  OpenKey
//
//  Created by Nguyen Tan Thong on 18/9/19.
//  Copyright © 2019 Tuyen Mai. All rights reserved.
//
//  Source: https://github.com/Hammerspoon/hammerspoon/blob/master/Hammerspoon/MJAccessibilityUtils.m
//  License: MIT


#import "MJAccessibilityUtils.h"
#import <ApplicationServices/ApplicationServices.h>


BOOL MJAccessibilityIsEnabled(void) {
    return AXIsProcessTrustedWithOptions(NULL);
}

void MJAccessibilityOpenPanel(void) {
    AXIsProcessTrustedWithOptions((__bridge CFDictionaryRef)@{(__bridge id)kAXTrustedCheckOptionPrompt: @YES});
}
