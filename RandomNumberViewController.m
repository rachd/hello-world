//
//  RandomNumberViewController.m
//  Hello-World
//
//  Created by Rachel Dorn on 2/11/16.
//  Copyright © 2016 Rachel Dorn. All rights reserved.
//

#import "RandomNumberViewController.h"

@interface RandomNumberViewController ()

@property(nonatomic, strong) UILabel *label;

@end

@implementation RandomNumberViewController

- (instancetype)init {
    self = [super init];
    
    if (self) {
        self.tabBarItem.title = @"Numbers";
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
