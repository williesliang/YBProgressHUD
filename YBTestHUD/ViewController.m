//
//  ViewController.m
//  YBTestHUD
//
//  Created by EDZ on 2017/2/22.
//  Copyright © 2017年 王颖博. All rights reserved.
//

#import "ViewController.h"
#import "SVProgressHUD.h"
#import "MBProgressHUD.h"
#import "MBProgressHUD+MJ.h"
#import "MBProgressHUD+Add.h"

#import "YBProgressHUD_Header.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)click:(UIButton *)sender
{
    [self.textField resignFirstResponder];
    
    //[self testSVProgressHUD];
    
    //[self testMBProgressHUD];
    
    [self testYBProgressHUD];
}

- (void)testYBProgressHUD
{
    /**第一种*/
    YBInstanceProgressHUD.tipImage = [UIImage imageNamed:@"yb_error"];    [YBInstanceProgressHUD showMessage:@"超过20个字以后是什么样子呢让我们试试看效果看咋样了好吧这已经超过20个字了"];
    
    /**第二种*/
//    [[YBProgressHUD shareInstance] showMessage:@"超过20个字以后是什么样子呢让我们试试看效果看咋样了好吧这已经超过20个字了"];
    
    /**第三种*/
//    [YBInstanceProgressHUD showMessage:@"超过20个字以后是什么样子呢让我们试试看效果看咋样了好吧这已经超过20个字了" withSuccessImage:nil];
    
    /**第四种*/
//    [YBInstanceProgressHUD showMessage:@"超过20个字以后是什么样子呢让我们试试看效果看咋样了好吧这已经超过20个字了" withErrorImage:[UIImage imageNamed:@"icon-20"]];
}





- (void)testSVProgressHUD
{
    [SVProgressHUD setBackgroundColor:[UIColor lightGrayColor]];
    [SVProgressHUD setForegroundColor:[UIColor whiteColor]];
    //[SVProgressHUD showImage:[UIImage imageNamed:@"alert_image"] status:@"超过20个字以后是什么样子呢让我们试试看效果看咋样了好吧这已经超过20个字了" maskType:SVProgressHUDMaskTypeClear];
    [SVProgressHUD showImage:[UIImage imageNamed:@"alert_image"] status:@"超过20个字以后是什么样子呢让我们试试看效果看咋样了好吧这已经超过20个字了"];
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeClear];
}

- (void)testMBProgressHUD
{
    [MBProgressHUD showError:@"超过20个字以后是什么样子呢让我们试试看效果看咋样了好吧这已经超过20个字了"];
}

- (void)test
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        //在次写耗时操作，如加载数据、上传图片等
        
        dispatch_async(dispatch_get_main_queue(), ^{
            //刷新UI
        });
    });
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    YBLog(@"----点击了view-----");
}

@end
