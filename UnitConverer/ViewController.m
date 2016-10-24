//
//  ViewController.m
//  UnitConverer
//
//  Created by Yazhong Luo on 10/9/16.
//  Copyright © 2016 Yazhong Luo. All rights reserved.
//

#import "ViewController.h"



@interface ViewController () 

@property (weak, nonatomic) IBOutlet UITextField *InputField;

@property (weak, nonatomic) IBOutlet UIButton *ButtonTapped;

@property (weak, nonatomic) IBOutlet UILabel *OutputField;
@property (weak, nonatomic) IBOutlet UILabel *CurrencyA;
@property (weak, nonatomic) IBOutlet UILabel *CurrencyB;
@property (weak, nonatomic) IBOutlet UILabel *CurrencyC;


@end

@implementation ViewController

- (IBAction)ConvertButton:(id)sender {
    self.ButtonTapped.enabled = NO;
    self.CurrencyA.text = @"A";
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
