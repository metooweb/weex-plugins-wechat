//
//  WechatModule.m
//  WeexPluginTemp
//
//  Created by  on 17/3/14.
//  Copyright © 2017年 . All rights reserved.
//

#import "WechatModule.h"
#import <WeexPluginLoader/WeexPluginLoader.h>
#import <WechatOpenSDK/WXApi.h>


@implementation WechatModule

WX_PlUGIN_EXPORT_MODULE(wechat, WechatModule)


WX_EXPORT_METHOD(@selector(pay:callback:))

- (void) pay:(NSDictionary *)options callback:(WXModuleCallback)callback{
    
    NSString *appid = [options valueForKey:@"appid"];
    
    [WXApi registerApp:appid];
    
    PayReq *request = [[PayReq alloc]init];
    request.partnerId = [options valueForKey:@"partnerid"];
    request.prepayId = [options valueForKey:@"prepayid"];
    request.package = [options valueForKey:@"package"];
    request.nonceStr = [options valueForKey:@"noncestr"];
    request.timeStamp = [[options valueForKey:@"timestamp"] intValue];
    request.sign = [options valueForKey:@"sign"];
    [WXApi sendReq:request];
    
}




@end
