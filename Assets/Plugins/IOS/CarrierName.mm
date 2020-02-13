/// <summary>
/// @author: Anjuman Noor
/// @email: noor.anjuman@gmail.com
/// </summary>

#import <Foundation/Foundation.h>
#import <CoreTelephony/CTTelephonyNetworkInfo.h>
#import <CoreTelephony/CTCarrier.h>

@interface iOSCarrierName : NSObject


@end

@implementation iOSCarrierName

+(NSString *) getCarrierName
{
    CTTelephonyNetworkInfo *info = [[CTTelephonyNetworkInfo alloc] init];
    NSDictionary *carrier = [info serviceSubscriberCellularProviders];

   // NSString *string = [carrier carrierName];
    for(NSString *key in [carrier allKeys]) {
      NSLog(@"%@",[carrier objectForKey:key]);
    }
    NSLog(@"Dictionary: %@", [carrier description]);
    
    NSLog(@"did: %@",[[carrier allValues] firstObject]);
   // printf("carrier name: "string);
    return @"string";
}

@end
char* cStringCopy(const char* string)
{
    if (string == NULL)
        return NULL;
    
    char* res = (char*)malloc(strlen(string) + 1);
    strcpy(res, string);
    
    return res;
}
extern "C"
{
    char * _GetCarrierName()
    {
        return cStringCopy([[ iOSCarrierName getCarrierName] UTF8String]);
    }
}
