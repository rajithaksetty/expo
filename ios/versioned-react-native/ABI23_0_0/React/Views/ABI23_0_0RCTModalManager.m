/**
 * Copyright (c) 2015-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

#import "ABI23_0_0RCTModalManager.h"

@interface ABI23_0_0RCTModalManager ()

@property BOOL shouldEmit;

@end

@implementation ABI23_0_0RCTModalManager

ABI23_0_0RCT_EXPORT_MODULE();

- (NSArray<NSString *> *)supportedEvents
{
  return @[ @"modalDismissed" ];
}

- (void)startObserving
{
  _shouldEmit = YES;
}

- (void)stopObserving
{
  _shouldEmit = NO;
}

- (void)modalDismissed:(NSNumber *)modalID
{
  if (_shouldEmit) {
    [self sendEventWithName:@"modalDismissed" body:@{ @"modalID": modalID }];
  }
}

@end
