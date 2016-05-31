@interface Foobar : NSObject

@property(assign) NSString *str;

-(id)init:(char *)msg;
-(void)printMessage;
-(void)setMessage:(char *)msg;

@end
