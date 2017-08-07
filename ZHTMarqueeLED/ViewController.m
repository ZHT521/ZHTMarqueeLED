//
//  ViewController.m
//  ZHTMarqueeLED
//
//  Created by lizhanpeng on 2017/7/28.
//  Copyright © 2017年 hebccc. All rights reserved.
//

#import "ViewController.h"
#import "ZHTMarqueeLabel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    ZHTMarqueeLabel *Marquee = [[ZHTMarqueeLabel alloc]initWithFrame:CGRectMake(0, 100,self.view.frame.size.width,40) WithTitle:@"111111时代峰峻噢无法你几班的vkjbeiorg 22222222prpewpwepgfdfQQQ" andTextfont:[UIFont systemFontOfSize:16] andTextColor:[UIColor blackColor] Direction:ZHTLableDirectionToLeft];
    Marquee.backgroundColor = [UIColor redColor];
    [self.view addSubview:Marquee];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
