//
//  NSObject+ReederExtension.m
//  ReederExtension
//
//  Created by Kazuya Takeshima on 11/01/17.
//  Copyright 2011 Kazuya Takeshima. All rights reserved.
//

#import "NSObject+ReederExtension.h"

@implementation NSObject(ReederExtension)

- (void)willPresentPostFormExtention
{
  [self willPresentPostFormExtention];

  [self performSelector:@selector(pasteTitle:) withObject:nil];
  [self performSelector:@selector(pasteLink:) withObject:nil];

  for (id cell in [self performSelector:@selector(postCells)]) {
    if ([[cell class] isEqual:objc_getClass("ShareFormButton")]) {
      NSButton* button = [cell performSelector:@selector(button)];
      if (button != nil) {
        [button setKeyEquivalent:@"m"];
        [button setKeyEquivalentModifierMask:NSCommandKeyMask];
      }
    }
  }
}

- (void)shareObjectDidShortenUrlExtention:(id)sender
{
  [self shareObjectDidShortenUrlExtention:sender];

  [self performSelector:@selector(addText:) withObject:@""];
}

@end
