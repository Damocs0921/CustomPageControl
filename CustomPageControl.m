//
//  CustomPageControl.m
//  JJJR
//
//  Created by DamocsYang on 6/19/15.
//  Copyright (c) 2015 fengzeyan. All rights reserved.
//

#import "CustomPageControl.h"

#define DOT_FULL [UIImage imageNamed:@"dot_full.png"]
#define DOT_EMPTY [UIImage imageNamed:@"dot_empty.png"]

@implementation CustomPageControl

-(void) updateDots
{
    for (int i = 0; i < [self.subviews count]; i++)
    {
       UIView* dot = [self.subviews objectAtIndex:i];
       if (i == self.currentPage)
           [dot.layer setContents:(id)DOT_FULL.CGImage];
       else
           [dot.layer setContents:(id)DOT_EMPTY.CGImage];
    }
}

-(void) setCurrentPage:(NSInteger)page
{
    [super setCurrentPage:page];
    [self updateDots];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
