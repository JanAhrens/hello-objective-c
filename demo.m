#include <stdio.h>
#include <stdlib.h>

#include <Foundation/NSString.h>
#include <Foundation/NSObject.h>

#include "demo.h"

@implementation Foobar

- (id)init:(char *)msg {
  self = [super init];
  if (self) {
    self.str = [[NSString alloc] initWithCString: msg encoding:NSUTF8StringEncoding];
  }
  return self;
}

-(void)setMessage:(char *)msg {
  self.str= [[NSString alloc] initWithCString: msg encoding:NSUTF8StringEncoding];
}

- (void)printMessage {
  char *log = (char *)malloc([self.str length] + 1);
  BOOL success = [self.str getCString: log maxLength:20 encoding:NSUTF8StringEncoding];
  if (success == YES) {
    printf("%s\n", log);
  } else {
    printf("unabled to print\n");
  }
  free(log);
}

@end

int main(int argc, char *argv[]) {
  Foobar *foobar = [[Foobar alloc] init: "Hello from constructor"];
  [foobar setMessage: "Hello World"];
  [foobar printMessage];
}
