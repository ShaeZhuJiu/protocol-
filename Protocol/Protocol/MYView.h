//
//  MYView.h
//  Protocol
//
//  Created by 谢鑫 on 2019/6/30.
//  Copyright © 2019 Shae. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MYView;//前置声明该类
NS_ASSUME_NONNULL_BEGIN
@protocol MYViewProtoc <NSObject>//定义协议的格式

-(void)myView:(MYView *)myView clickButton:(UIButton*)button;

@end

@interface MYView : UIView
@property(nonatomic,weak) id<MYViewProtoc> protocol;//定义一个protocol的属性，一定要用weak，一定要用id类型，遵守协议，这个protocol将来就是遵守协议的类。
@end

NS_ASSUME_NONNULL_END
