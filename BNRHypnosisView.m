//
//  BNRHypnosysView.m
//  Hypnosister
//
//  Created by Emilio Sellitto on 16/06/14.
//  Copyright (c) 2014 Emilio Sellitto. All rights reserved.
//

#import "BNRHypnosisView.h"

@interface BNRHypnosisView ()
@property (strong, nonatomic) UIColor *circleColor;
@end

@implementation BNRHypnosisView
- (void) setCircleColor:(UIColor *)circleColor;
{
    _circleColor = circleColor;
    [self setNeedsDisplay];
}
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.circleColor = [UIColor lightGrayColor];        
    }
    return self;
}
-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;
{
    NSLog(@"Touched %@", self);
    float redColor = (arc4random() % 100) / 100.0;
    float greenColor = (arc4random() % 100) / 100.0;
    float bluColor = (arc4random() % 100) / 100.0;
    UIColor *randomColor = [UIColor colorWithRed:redColor green:greenColor blue:bluColor alpha:1.0];
    self.circleColor = randomColor;
  }


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    CGContextRef currentContext = UIGraphicsGetCurrentContext();
    CGRect screen = [[UIScreen mainScreen] bounds];
    CGRect bigScreen = screen;
    bigScreen.size.height *= 2;
    bigScreen.size.width *= 2;
    CGPoint center;
    center.x = screen.origin.x + screen.size.width / 2;
    center.y = screen.origin.y + screen.size.height /2;
    CGFloat maxRadius = hypotf(screen.size.height, screen.size.width) / 2;
    UIBezierPath *circle = [[UIBezierPath alloc] init];
    circle.lineWidth = 10;
    [self.circleColor setStroke];
    for (float radius = maxRadius; radius > 0; radius -= 20) {        
        [circle moveToPoint:CGPointMake(center.x + radius, center.y)];
        [circle addArcWithCenter:center radius:radius startAngle:0 endAngle:M_PI * 2 clockwise:true];
        [circle stroke];
    }
    /*
    //disegna immagine
    CGContextSetShadow(currentContext, CGSizeMake(30, 40), 4);
    UIImage *treeImage = [UIImage imageNamed:@"Mario.png"];
    [treeImage drawInRect:screen];
    
    //disegna gradiente triangolare
    CGFloat locations[2] = {0.0, 1.0};
    CGFloat colors[8] = {1.0, 1.0, 0.0, 1.0, 0.0, 1.0, 0.0, 1.0};
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGGradientRef gradient = CGGradientCreateWithColorComponents(colorSpace, colors, locations, 2);
    CGPoint startPoint = CGPointMake(175, 300);
    CGPoint endPoint = CGPointMake(175, 50);
    CGPoint points[3]  = {CGPointMake(50, 300), CGPointMake(300, 300), CGPointMake(175, 50)};
    CGContextBeginPath(currentContext);
    CGContextAddLines(currentContext, points, 3);
    CGContextClosePath(currentContext);
    CGContextClip(currentContext);
    CGContextDrawLinearGradient(currentContext, gradient, startPoint, endPoint, 0);
    CGGradientRelease(gradient);
    CGColorSpaceRelease(colorSpace);*/
}


@end
