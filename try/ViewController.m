//
//  ViewController.m
//  try
//
//  Created by FunnyQ on 2015/10/28.
//  Copyright © 2015年 FunnyQ. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *kaoYao;
@property (weak, nonatomic) IBOutlet UILabel *labelContainer;

@property NSArray *arrPoet;
@property int poetStatus;

@end


//---------------------------------------------------------------------------


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _arrPoet = @[@"床前明月光", @"疑是地上霜", @"舉頭望明月", @"低頭思故鄉"];
    _poetStatus = 0;
}


- (IBAction)changeLabelName:(id)sender {
    NSLog(@"%d", _poetStatus);
    
    [self increseStatus];
    
    _labelContainer.text = _arrPoet[_poetStatus];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) increseStatus {
    _poetStatus += 1;
    
    if (_poetStatus == 4) {
        _poetStatus = 0;
    }
}

@end
