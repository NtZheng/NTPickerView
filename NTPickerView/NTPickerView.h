//
//  NTPickerView.h
//  NTPickerView
//
//  Created by Nineteen on 3/18/17.
//  Copyright © 2017 Nineteen. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^confirmButtonAction)(NSString *string);
typedef void(^cancelButtonAction)(void);
typedef void(^maskClickAction)(void);

@interface NTPickerView : UIView

+ (void)showPickerViewAddedTo :(UIView *)view dataArray: (NSArray *)array
                confirmAction :(confirmButtonAction)confrimButtonAction
                 cancelAction :(cancelButtonAction)cancelButtonAction
                    maskClick :(maskClickAction)maskClickAction;

@end
