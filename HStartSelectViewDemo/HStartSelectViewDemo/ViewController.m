//
//  ViewController.m
//  HStartSelectViewDemo
//
//  Created by yyh on 2017/5/19.
//  Copyright © 2017年 yyh. All rights reserved.
//

#import "ViewController.h"
#import "HStartSelectView.h"

@interface ViewController ()

@property (strong, nonatomic) HStartSelectView *selectView;
@property (strong, nonatomic) HStartSelectView *showView;

@property (weak, nonatomic) IBOutlet UITextField *TF;
@property (weak, nonatomic) IBOutlet UIButton *button;


- (IBAction)buttonClick:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view addSubview:self.selectView];
    [self.view addSubview:self.showView];
}

- (HStartSelectView *)selectView {
    
    if (!_selectView) {
        
        CGFloat width = 150;
        _selectView = [[HStartSelectView alloc] initWithFrame:CGRectMake((self.view.frame.size.width - width) / 2, 100, width, 25) block:^(NSString *score) {
            
            NSLog(@"=====%@", [NSString stringWithFormat:@"选了 %@ 分", score]);
        } enable:YES];
    }
    
    return _selectView;
}

- (HStartSelectView *)showView {
    
    if (!_showView) {
        
        CGFloat width = 150;
        _showView = [[HStartSelectView alloc] initWithFrame:CGRectMake((self.view.frame.size.width - width) / 2, 200, width, 25) block:nil enable:NO];
    }
    
    return _showView;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonClick:(id)sender {
    
    if ([self.TF.text floatValue] > 5) {
        
        return;
    }
    
    self.showView.score = self.TF.text;
}
@end
