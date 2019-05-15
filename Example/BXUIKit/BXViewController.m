//
//  BXViewController.m
//  BXUIKit
//
//  Created by xudusheng on 05/15/2019.
//  Copyright (c) 2019 xudusheng. All rights reserved.
//

#import "BXViewController.h"

#import "BXAddressPickerView.h"

#import "BXPlaceTextViewVC.h"

#import "BXMenu.h"

#import "BXHUD.h"

@interface BXViewController ()
    
    @property (weak, nonatomic) IBOutlet UIButton *selecteAddressButton;
    @property (weak, nonatomic) IBOutlet UITextField *addressTextField;
    
@end

@implementation BXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [BXHUD setRootViewController:[UIApplication sharedApplication].keyWindow.rootViewController];
    [BXHUD setMinimumDismissTimeInterval:1.5];
    [BXHUD setHUDFont:[UIFont systemFontOfSize:16] detailFont:[UIFont systemFontOfSize:12]];
    [BXHUD setFrefreshCircleImage:[UIImage imageNamed:@"ico_refresh_circle"]];
    [BXHUD setFrefreshLogoImage:[UIImage imageNamed:@"ico_refresh_logo"]];
    
    [BXHUD setToastFont:[UIFont systemFontOfSize:14]];
    [BXHUD setForegroundColor:[UIColor whiteColor]];
    [BXHUD setBackgroundColor:[UIColor colorWithWhite:0 alpha:0.7]];
    
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleNotification:) name:BXProgressHUDWillAppearNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleNotification:) name:BXProgressHUDDidAppearNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleNotification:) name:BXProgressHUDWillDisappearNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleNotification:) name:BXProgressHUDDidDisappearNotification object:nil];
}
    
- (void)handleNotification:(NSNotification *)notification {
    NSLog(@"name = %@", notification.name);
    NSLog(@"object = %@", notification.object);
}
    

    
#pragma mark - BXAddressPickerView
- (IBAction)sekectedAddressButton:(id)sender {
//    BXProvinceModel *provinceModel = [[BXProvinceModel alloc] init];
//    provinceModel.name = @"福建省";
//    BXCityModel *cityModel = [[BXCityModel alloc] init];
//    cityModel.name = @"莆田市";
//    [BXAddressPickerView cityPickerViewWithProvince:provinceModel
//                                               city:cityModel
//                                          cityBlock:^(BXProvinceModel * _Nonnull province, BXCityModel * _Nonnull city) {
//                                              NSLog(@"%@, %@", province.name, city.name);
//                                          }];
    [BXAddressPickerView areaPickerViewWithProvince:nil
                                               city:nil
                                               area:nil
                                          areaBlock:^(BXProvinceModel * _Nonnull province, BXCityModel * _Nonnull city, BXAreaModel * _Nonnull area) {
                                              NSString *address = [NSString stringWithFormat:@"%@, %@，%@", province.name, city.name, area.name];
                                              self.addressTextField.text = address;
                                          }];
}
#pragma mark - BXPlaceholderTextView
- (IBAction)showPlaceTextView:(id)sender {
    BXPlaceTextViewVC *vc = [[BXPlaceTextViewVC alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}
    
#pragma mark - BXMenu
- (IBAction)showMenu:(UIButton *)menuButton {
    BXMenuItem *btn1 = [BXMenuItem menuItem:@"合伙人规则"
                                      image:nil
                                     target:self
                                     action:@selector(printSomething)];
    BXMenuItem *btn3 = [BXMenuItem menuItem:@"赠品地址"
                                      image:nil
                                     target:self
                                     action:@selector(printSomething)];
    NSArray *menuItems = @[btn1,btn3];//btn2
    [BXMenu showMenuInView:self.view
                  fromRect:menuButton.frame
                 menuItems:menuItems];
    [BXMenu setTitleFont:[UIFont systemFontOfSize:14]];
}
    
- (void)printSomething {
    NSLog(@"click menu");
}
    
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    //    [BXHUD setMinimumDismissTimeInterval:1.5];
    //    [BXHUD setHUDFont:[UIFont systemFontOfSize:16] detailFont:[UIFont systemFontOfSize:12]];
    //    [BXHUD setFrefreshCircleImage:[UIImage imageNamed:@"ico_refresh_circle"]];
    //    [BXHUD setFrefreshLogoImage:[UIImage imageNamed:@"ico_refresh_logo"]];
    //
    //    [BXHUD setToastFont:[UIFont systemFontOfSize:14]];
    //    [BXHUD setForegroundColor:[UIColor whiteColor]];
    //    [BXHUD setBackgroundColor:[UIColor colorWithWhite:0 alpha:0.7]];
    //        [BXHUD showHud:self.view];
    [BXHUD showToastWithText:@"网络请求失败"];
    //    [BXHUD showToastSuccess:@"实名认证成功"];
    //    [BXHUD showHud:self.view text:@"正在加载……"];
}
@end
