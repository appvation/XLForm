//
//  XLFormRightDetailCell.m
//  XLForm ( https://github.com/xmartlabs/XLForm )
//
//  Copyright (c) 2015 Xmartlabs ( http://xmartlabs.com )
//
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "XLFormRightDetailCell.h"
#import "XLFormRowDescriptor.h"

@implementation XLFormRightDetailCell

- (void)configure
{
    [super configure];
    self.textLabel.numberOfLines = 0;
    self.textLabel.lineBreakMode = NSLineBreakByWordWrapping;
}

- (void)update
{
    [super update];
    self.textLabel.text = self.rowDescriptor.title;
    self.textLabel.font = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    self.textLabel.textColor  = self.rowDescriptor.disabled ? [UIColor grayColor] : [UIColor blackColor];
    
}

+(CGFloat)formDescriptorCellHeightForRowDescriptor:(XLFormRowDescriptor *)rowDescriptor
{
    UILabel *gettingSizeLabel = [[UILabel alloc] init];
    gettingSizeLabel.font = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    gettingSizeLabel.text = rowDescriptor.title;
    gettingSizeLabel.lineBreakMode = NSLineBreakByWordWrapping;
    gettingSizeLabel.numberOfLines = 0;
    CGSize constraintSize = CGSizeMake(252.0f, MAXFLOAT);
    CGSize labelSize = [gettingSizeLabel sizeThatFits:constraintSize];
    
    return labelSize.height + 30.0f;
}


@end
