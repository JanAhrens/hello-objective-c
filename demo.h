#include <Foundation/NSObject.h>

@interface Foobar : NSObject

@property(assign, atomic) NSString *str;

-(id)init:(char *)msg;
-(void)printMessage;
-(void)setMessage:(char *)msg;

@end
