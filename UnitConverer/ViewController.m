//
//  ViewController.m
//  UnitConverer
//
//  Created by Yazhong Luo on 10/9/16.
//  Copyright © 2016 Yazhong Luo. All rights reserved.
//

#import "ViewController.h"
#import "CurrencyRequest/CRCurrencyRequest.h"
#import "CurrencyRequest/CRCurrencyResults.h"


@interface ViewController () <CRCurrencyRequestDelegate>

@property (weak, nonatomic) IBOutlet UITextField *InputField;

@property (weak, nonatomic) IBOutlet UIButton *ButtonTapped;

@property (weak, nonatomic) IBOutlet UILabel *OutputField;
@property (weak, nonatomic) IBOutlet UILabel *CurrencyA;
@property (weak, nonatomic) IBOutlet UILabel *CurrencyB;
@property (weak, nonatomic) IBOutlet UILabel *CurrencyC;

@property (nonatomic) CRCurrencyRequest *req;
@end

@implementation ViewController

- (IBAction)ConvertButton:(id)sender {
    self.ButtonTapped.enabled = NO;
    self.req = [[CRCurrencyRequest alloc] init];
    self.req.delegate = self;
    [self.req start];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)currencyRequest:(CRCurrencyRequest *)req retrievedCurrencies:(CRCurrencyResults *)currencies {
    self.ButtonTapped.enabled = YES;
    
    double inputValue = [self.InputField.text floatValue];
    double euroValue = inputValue * currencies.EUR;
    double ukValue = inputValue* currencies.GBP;
    double jpValue = inputValue* currencies.JPY;
    
    NSString *temp1 = [NSString stringWithFormat:@"%.2f", euroValue];
    NSString *temp2 = [NSString stringWithFormat:@"%.2f", ukValue];
    NSString *temp3 = [NSString stringWithFormat:@"%.2f", jpValue];
    
    self.CurrencyA.text = temp1;
    self.CurrencyB.text = temp2;
    self.CurrencyC.text = temp3;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
