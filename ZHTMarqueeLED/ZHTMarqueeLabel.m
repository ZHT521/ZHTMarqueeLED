//
//  ZHTMarqueeLabel.m
//  ZHTMarqueeLED
//
//  Created by lizhanpeng on 2017/7/28.
//  Copyright © 2017年 hebccc. All rights reserved.
//

#import "ZHTMarqueeLabel.h"

@implementation ZHTMarqueeLabel

-(instancetype)initWithFrame:(CGRect)frame WithTitle:(NSString *)title andTextfont:(UIFont *)font andTextColor:(UIColor *)color Direction:(ZHTLableDirection)direction{
    self = [super initWithFrame:frame];
    if (self) {
//        self.imgVLB = [[UIImageView alloc]initWithFrame:CGRectMake(0, 5, (frame.size.height-10),(frame.size.height-10))];
//        self.imgVLB.image = [UIImage imageNamed:@"i-lb"];
//        [self addSubview:self.imgVLB];
        
        _labtext1 = [[UILabel alloc]initWithFrame:CGRectMake(0,0, frame.size.width, frame.size.height)];
        _labtext1.font = font;
        _labtext1.textColor = color;
        [self addSubview:_labtext1];
        _labtext1.text = title;
        //计算文本的宽度
        CGSize currentSize = [title boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, frame.size.height) options:NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil].size;
 
        _labtext1.frame = CGRectMake(self.imgVLB.frame.origin.x+(frame.size.height-10), 0, currentSize.width, frame.size.height);
        
        _Direction = direction;
        [self StarAnimation];

    }
    
    return self;
}
- (void)StarAnimation{
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    if (_Direction == ZHTLableDirectionToLeft) {
        CGPoint starPoint = CGPointMake(_labtext1.frame.size.width+_labtext1.frame.size.width/2,_labtext1.frame.size.height/2);
        CGPoint endPoint = CGPointMake(-_labtext1.frame.size.width/2,_labtext1.frame.size.height/2);
        NSValue *value1 = [NSValue valueWithCGPoint:starPoint];
        NSValue *value2 = [NSValue valueWithCGPoint:endPoint];
        animation.values = @[value1,value2];
    }else if(_Direction == ZHTLableDirectionToRight){
        CGPoint starPoint = CGPointMake(-_labtext1.frame.size.width/2,_labtext1.frame.size.height/2);
        CGPoint endPoint = CGPointMake(_labtext1.frame.size.width+_labtext1.frame.size.width/2,_labtext1.frame.size.height/2);
        NSValue *value1 = [NSValue valueWithCGPoint:starPoint];
        NSValue *value2 = [NSValue valueWithCGPoint:endPoint];
        animation.values = @[value1,value2];
    }
//    else if (_Direction == ZHTLableDirectionToUp){
//        
//    }else if (_Direction == ZHTLableDirectionToDown){
//        
//    }
    animation.repeatCount = MAXFLOAT;
    animation.duration = 10;
    animation.removedOnCompletion = NO;
    animation.fillMode = kCAFillModeForwards;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    [_labtext1.layer addAnimation:animation forKey:nil];
}
-(void)StopAnimation{
    
    [_labtext1.layer removeAnimationForKey:@"position"];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
