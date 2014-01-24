//
//  BNRContainer.m
//  RandomPossessions
//
//  Created by Moser, Wesley on 1/23/14.
//  Copyright (c) 2014 Moser, Wesley. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer

- (id) init
{
    self = [super init];
    
    if (self)
    {
        subItems = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (id) initWithItemName:(NSString *)name serialNumber:(NSString *)sNumber
{
    self = [super initWithItemName:name serialNumber:sNumber];
    
    if (self)
    {
        subItems = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (id) initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber
{
    self = [super initWithItemName:name valueInDollars:valueInDollars serialNumber:sNumber];
    
    if (self)
    {
        subItems = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (NSString *) description
{
    NSString *result = @"[Container: ";
    result = [result stringByAppendingString:[super description]];
    result = [result stringByAppendingString:@", sub-items: "];
    
    int totalValue = [super valueInDollars];
    
    if ([subItems count] == 0)
        result = [result stringByAppendingString:@"(none)"];
    
    for (BNRItem *item in subItems)
    {
        result = [[result stringByAppendingString:[item description]] stringByAppendingString:@", "];
        totalValue += [item valueInDollars];
    }
    
    result = [result stringByAppendingFormat:@", total value: $%d", totalValue];
    result = [result stringByAppendingString:@"]"];
    
    return result;
}

- (void) addSubItem:(BNRItem *)item
{
    [subItems addObject:item];
}

@end
