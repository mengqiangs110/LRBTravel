//
//  LRBLoginViewController.m
//  LRBTravel
//
//  Created by mq on 14-10-9.
//  Copyright (c) 2014年 mqq.com. All rights reserved.
//

#import "LRBLoginViewController.h"
#import "LRBUtil.h"
#import "REFrostedViewController.h"
#import "LRBIndexViewController.h"
#import "LRBSliderMenuViewController.h"


@interface LRBLoginViewController ()

@end

@implementation LRBLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [LRBUtil drawCircleImage:_headImage];
    
    

    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)loginInWithQQ:(id)sender
{
    [self userLoginSuccess];
}



-(void)userLoginSuccess
{
    LRBIndexViewController *indexViewController = [[LRBIndexViewController alloc] init];
    
     LRBSliderMenuViewController   *sliderMenuVc = [[LRBSliderMenuViewController alloc] init];
    
    REFrostedViewController *frostedViewController = [[REFrostedViewController alloc] initWithContentViewController:indexViewController menuViewController:sliderMenuVc];
    
    frostedViewController.direction = REFrostedViewControllerDirectionLeft;
    frostedViewController.liveBlurBackgroundStyle = REFrostedViewControllerLiveBackgroundStyleLight;
    frostedViewController.liveBlur = YES;
//    frostedViewController.delegate = self;
   
    self.view.window.rootViewController = frostedViewController;
    

    
    [self presentViewController:frostedViewController animated:YES completion:^(){}];
    
}

-(void)userLoginFailed
{
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end