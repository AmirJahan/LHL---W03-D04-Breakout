#import <UIKit/UIKit.h>
#import "MyProtocol.h"

@interface MainVC : UIViewController <sayHelloDelegate>

@property (weak, nonatomic) IBOutlet UIButton *goButton;

@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@end

