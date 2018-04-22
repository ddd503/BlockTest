//
//  ViewController.m
//  blockTest
//
//  Created by kawaharadai on 2017/10/16.
//  Copyright © 2017年 dai kawahara. All rights reserved.
//

#import "ViewController.h"
#import "OtherClass.h"

@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UITextField *inputTextField;
@end

@implementation ViewController

#pragma mark - LifeCycle Methods

- (void)viewDidLoad {
    [super viewDidLoad];
    self.inputTextField.delegate = self;
}

- (void)call: (int)inputNumber {
    
    [OtherClass doSomeWorkWith:inputNumber handler:^(int result) {
        // 完了後の処理（計算後の数値を表示）
        self.resultLabel.text = [NSString stringWithFormat:@"%d", result];
    }];
}

#pragma mark - Action Methods

- (IBAction)tapScreen:(id)sender {
    [self.view endEditing:YES];
}

#pragma mark - UITextFieldDelegate Methods

- (void)textFieldDidEndEditing:(UITextField *)textField {
    [self call:textField.text.intValue];
}

@end
