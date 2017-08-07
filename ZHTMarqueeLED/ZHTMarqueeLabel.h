//
//  ZHTMarqueeLabel.h
//  ZHTMarqueeLED
//
//  Created by lizhanpeng on 2017/7/28.
//  Copyright © 2017年 hebccc. All rights reserved.
//

#import <UIKit/UIKit.h>
/** 滚动方向*/
typedef NS_ENUM(NSInteger,ZHTLableDirection){
//    ZHTLableDirectionToUp,//向上
//    ZHTLableDirectionToDown,//向下
    ZHTLableDirectionToLeft,//向左
    ZHTLableDirectionToRight//向右
};

@interface ZHTMarqueeLabel : UIView{
    int i;
}
/** 喇叭图片*/
@property(nonatomic,strong)UIImageView *imgVLB;
/** 显示的label*/
@property(nonatomic,strong)UILabel *labtext1;
@property(nonatomic,strong)UILabel *labtext2;
/** 当前 第一个位置*/
@property(nonatomic,assign)CGRect currentFrame;
/** 当前 第二个位置*/
@property(nonatomic,assign)CGRect behindFrame;
/** 标题数组*/
@property(nonatomic,strong)NSArray *arytitle;
/** 字体*/
@property(nonatomic,strong)UIFont *textfont;
/** 动画播放方向*/
@property(nonatomic,assign)ZHTLableDirection Direction;

//初始化方法
-(instancetype)initWithFrame:(CGRect)frame WithTitle:(NSString *)title andTextfont:(UIFont *)font andTextColor:(UIColor *)color Direction:(ZHTLableDirection)direction;
//开始动画
- (void)StarAnimation;
//停止动画
-(void)StopAnimation;
@end
