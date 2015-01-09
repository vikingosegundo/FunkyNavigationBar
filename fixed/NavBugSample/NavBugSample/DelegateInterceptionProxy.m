//
//  DelegateInterceptionProxy.m
//  NavBugSample
//
//  Created by Manuel Meyer on 08.01.15.
//  Copyright (c) 2015 vs. All rights reserved.
//

#import "DelegateInterceptionProxy.h"

@implementation DelegateInterceptionProxy

- (id)initWithOriginalDelegate:(id)delegate interceptionDelegate:(id)interceptionDelegate
{
    _originalDelegate = delegate;
    _interceptionDelegate = interceptionDelegate;
    return self;
}

-(BOOL)isKindOfClass:(Class)aClass;
{
    return [self.originalDelegate isKindOfClass:aClass] ;
}

-(BOOL)conformsToProtocol:(Protocol *)aProtocol;
{
    return [self.originalDelegate conformsToProtocol:aProtocol];
}

- (BOOL)respondsToSelector:(SEL)aSelector
{
    return [self.originalDelegate respondsToSelector:aSelector];
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel
{
    return [self.originalDelegate methodSignatureForSelector:sel];
}

- (void)forwardInvocation:(NSInvocation *)invocation
{
    if([self.interceptionDelegate respondsToSelector:invocation.selector]) {
        [invocation invokeWithTarget:self.interceptionDelegate];
    } else {
        [invocation invokeWithTarget:self.originalDelegate ];
    }
}
@end
