//
//  MYView.m
//  Protocol
//
//  Created by 谢鑫 on 2019/6/30.
//  Copyright © 2019 Shae. All rights reserved.
//

#import "MYView.h"

@interface MYView ()
@property (nonatomic,strong)UIButton *button;
@end

@implementation MYView


-(UIButton*)button{
    if (_button==nil) {
        _button=[UIButton buttonWithType:UIButtonTypeCustom];
        _button.frame=CGRectMake(0, 0, 320, 40);
        [_button setBackgroundColor:[UIColor redColor]];
        [_button setTitle:@"点击了" forState:normal];
        [_button addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_button];
    }
    return _button;
}
-(instancetype)init{
    self=[super init];
    if(self){
        [self button];
    }
    return self;
}
-(void)clickBtn:(UIButton *)button{
    //通知我们的protocol对象（可能是控制器）工作
    //固定写法，判断protocol对象是否实现了d这个协议方法
    if([self.protocol respondsToSelector:@selector(myView:clickButton:)]){
        //如果实现了就通知protocol类去执行这个方法
        [self.protocol myView:self clickButton:button];
        
        //NSLog(@"11111---%@-----%@",self,self.button);
    }
}
@end
