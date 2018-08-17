#import "MainVC.h"
#import "NextViewController.h"
@implementation MainVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_goButton addTarget:self
                  action:@selector(goAction)
        forControlEvents:UIControlEventTouchUpInside];
    
    
}


-(void)goAction
{
    [self performSegueWithIdentifier:@"mySegueId"
                              sender:nil];
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ( [segue.identifier isEqualToString: @"mySegueId"])
    {
        NextViewController* nextVc = [segue destinationViewController];
        nextVc.receivedTextString = @"We are from Main View Controller";
        nextVc.delegate = self;
    }
}

-(void)sayHelloTo:(NSString *)viewToGoTo
{
    NSLog(@"This is called from %@", viewToGoTo);
}

@end
