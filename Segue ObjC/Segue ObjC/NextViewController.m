#import "NextViewController.h"

@implementation NextViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _receivedTextLabel.text = _receivedTextString;
}

- (IBAction)dismissThis:(id)sender
{
    [self dismissViewControllerAnimated:true completion:nil];
    
    [self.delegate sayHelloTo:@"Next"];
}



@end
