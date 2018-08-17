

#import <UIKit/UIKit.h>
#import "MyProtocol.h"

@interface NextViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *receivedTextLabel;
@property (weak, nonatomic) NSString *receivedTextString;

@property (nonatomic) id <sayHelloDelegate> delegate;

@end
