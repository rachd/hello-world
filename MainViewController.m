//
//  MainViewController.m
//  Hello-World
//
//  Created by Rachel Dorn on 2/9/16.
//  Copyright © 2016 Rachel Dorn. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@property (nonatomic, strong) UITextField *textField;
@property (nonatomic, strong) UILabel *label;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.textField = [[UITextField alloc] initWithFrame:CGRectMake(10.0f, 30.0f,
                                                                   300.0f, 30.0f)];
    self.textField.delegate = self;
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:self.textField];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(110.0f, 200.0f, 100.0f, 30.0f);
    [button addTarget:self action:@selector(buttonPressed) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Press Me" forState:UIControlStateNormal];
    [self.view addSubview:button];
    
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(115.0f, 150.0f, 200.0f, 30.0f)];
    self.label.text = @"Hello World!";
    [self.view addSubview:self.label];
}

- (void)buttonPressed {
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return NO;
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
