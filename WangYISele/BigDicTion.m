//
//  BigDicTion.m
//  ShanProject
//
//  Created by dllo on 15/9/30.
//  Copyright (c) 2014年 LiuZhishan. All rights reserved.
//

#import "BigDicTion.h"
#import "URLandController.h"
@implementation BigDicTion

-(NSMutableArray *)titleArray
{
    if (_titleArray == nil) {
        
         NSArray *array = @[@"头条",@"体育",@"娱乐",@"新闻",@"开心",@"高兴",@"美丽",@"漂亮",@"人生",@"梦想",@"天天",@"音乐",@"外语",@"山哥"];
        
        _titleArray = [[NSMutableArray arrayWithArray:array] retain];
    }
    
    return _titleArray;
    
}

-(NSMutableDictionary *)dic
{
    if (_dic ==nil) {
        
        
         NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        
        
           NSArray *array = @[@"头条",@"体育",@"娱乐",@"新闻",@"开心",@"高兴",@"美丽",@"漂亮",@"人生",@"梦想",@"天天",@"音乐",@"外语",@"山哥"];
        
        
        NSArray *arrayUrl = @[@"http:",
                              @"http:6",
                              @"http:/",
                              @"http://c.2",
                              @"http://",
                              @"http://c.4g.",
                              @"http://c.4g",
                              @"http://c.",
                              @"http://c.4",
                              @"http://c",
                              @"http://",
                              @"http://c",
                              @"http://c",
                              @"http://c.3g"
                              
                              ];
        
        
        NSArray *arr1 = @[@"NewsItemViewController",
                          @"NewsItemViewController",
                          @"NewsItemViewController",
                          @"NewsItemViewController",
                          @"NewsItemViewController",
                          @"NewsItemViewController",
                          @"NewsItemViewController",
                          @"NewsItemViewController",
                          @"NewsItemViewController",
                          @"NewsItemViewController",
                          @"NewsItemViewController",
                          @"NewsItemViewController",
                          @"NewsItemViewController",
                          @"NewsItemViewController"
                          ];
        
        
        
          //nslog(@"aaa%ld",array.count);
          //nslog(@"aaa%ld",arrayUrl.count);
          //nslog(@"aaa%ld",arr1.count);
       
        for (int i = 0 ; i < arrayUrl.count ; i ++ ) {
            
            URLandController *model = [[URLandController alloc]init];
            model.urlStr = arrayUrl[i];
            //nslog(@"%@",arr1[i]);
            model.conName = arr1[i];
            
            [dic setObject:model forKey:array[i]];
            
            [model release];
            
        }
        
        _dic = [dic retain];

        
    }
    
    
    return  _dic;
    
}

+(instancetype)shareBigDic
{
    static BigDicTion *handle = nil;
    
    
    
    if (handle == nil) {
     
        
        
        handle = [[BigDicTion alloc]init];
        
        
    }
    
    
    return handle;
    
    
}
@end
