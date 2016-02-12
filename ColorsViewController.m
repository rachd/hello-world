//
//  ColorsViewController.m
//  Hello-World
//
//  Created by Rachel Dorn on 2/11/16.
//  Copyright © 2016 Rachel Dorn. All rights reserved.
//

#import "ColorsViewController.h"

@interface ColorsViewController ()

@property(nonatomic, strong) UIColor *myColor;
@property(nonatomic, strong) NSArray *colors;

@end

@implementation ColorsViewController

- (instancetype)init {
    self = [super init];
    
    if (self) {
        self.tabBarItem.title = @"Colors";
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(110.0f, 200.0f, 100.0f, 30.0f);
    button.backgroundColor = [UIColor whiteColor];
    button.layer.borderColor = [UIColor blackColor].CGColor;
    button.layer.borderWidth = 0.5f;
    button.layer.cornerRadius = 10.0f;
    [button addTarget:self action:@selector(buttonPressed) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Press Me" forState:UIControlStateNormal];
    [self.view addSubview:button];
    
    self.colors = [NSArray arrayWithObjects:[UIColor redColor], [UIColor blackColor], [UIColor greenColor], [UIColor blueColor], [UIColor brownColor], [UIColor yellowColor], [UIColor whiteColor], [UIColor cyanColor], [UIColor magentaColor], [UIColor orangeColor], [UIColor purpleColor], nil];
  
}


- (void)pickColor{
    if ([self.colors count] > 0) {
        self.myColor = self.colors[arc4random_uniform([self.colors count])];
    }
}


- (void)buttonPressed {
    [self pickColor];
    self.view.backgroundColor = self.myColor;
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
