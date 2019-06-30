//
//  ViewController.m
//  Protocol
//
//  Created by 谢鑫 on 2019/6/30.
//  Copyright © 2019 Shae. All rights reserved.
//

#import "ViewController.h"
#import "MYView.h"
@interface ViewController ()<MYViewProtoc>//    遵守协议
@property (nonatomic,strong)MYView *myView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self myView];//n懒加载要调用方法
    // Do any additional setup after loading the view, typically from a nib.
}
-(MYView *)myView{
    if(_myView==nil){
        _myView=[[MYView alloc]init];
        [_myView setFrame:CGRectMake(0, 100, 320, 50)];
        [self.view addSubview:_myView];
        _myView.protocol=self;//设置协议对象
    }
    return _myView;
}
//具体实现协议内容
- (void)myView:(MYView *)myView clickButton:(UIButton *)button{
    NSLog(@"%s",__func__);
    //NSLog(@"22222----%@-----%@",myView,button);
}
@end
