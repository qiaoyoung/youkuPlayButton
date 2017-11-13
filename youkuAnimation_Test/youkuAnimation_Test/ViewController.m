//
//  ViewController.m
//  youkuAnimation_Test
//
//  Created by 乔杨 on 2017/11/13.
//  Copyright © 2017年 Joeyoung. All rights reserved.
//

#import "ViewController.h"

#import "YouKuPlayButton.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    YouKuPlayButton *youkuBtn = [[YouKuPlayButton alloc] initWithFrame:CGRectMake(150,200, 50, 50) state:YouKuPlayButtonStatePlay];
    [youkuBtn addTarget:self
                 action:@selector(btnClick:)
       forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:youkuBtn];
    
}
- (void)btnClick:(YouKuPlayButton *)btn {
    static NSInteger a = 0;
    if (a%2 == 0) {
        btn.buttonState = YouKuPlayButtonStatePause;
    } else {
        btn.buttonState = YouKuPlayButtonStatePlay;
    }
    a ++;

}
@end
