//
//  ViewController.m
//  Commpass
//
//  Created by mac on 16/9/2.
//  Copyright © 2016年 CYC. All rights reserved.
//

#import "ViewController.h"
#import <CoreLocation/CoreLocation.h>

@interface ViewController () <CLLocationManagerDelegate> {

    CLLocationManager *_manager;

}
@property (weak, nonatomic) IBOutlet UIImageView *poinTto;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    _manager = [[CLLocationManager alloc] init];
    _manager.delegate = self;
    
    //启动指南针更新程序
    [_manager startUpdatingHeading];
    
    
    
    
    
}

//已经更新指南针
- (void)locationManager:(CLLocationManager *)manager didUpdateHeading:(CLHeading *)newHeading {
    
    //修改指南针指向
    _poinTto.transform = CGAffineTransformMakeRotation((180 - newHeading.magneticHeading)/180.0*3.1415926);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
