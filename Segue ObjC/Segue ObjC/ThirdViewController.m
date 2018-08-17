#import "ThirdViewController.h"

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)dismissThis:(id)sender
{
    [self dismissViewControllerAnimated:true completion:nil];
}


@end
