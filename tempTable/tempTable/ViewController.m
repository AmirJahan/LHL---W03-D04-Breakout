#import "ViewController.h"
#import "ShowAlert.h"

@implementation ViewController

NSArray* myArr;
NSMutableArray* myTempArr;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    myArr = [[NSArray alloc] initWithObjects:
             @"Van",
             @"Burnaby", @"Delta", @"Tsawassen", nil];
    
    myTempArr = [myArr mutableCopy];
}

// number of rows
-   (NSInteger)tableView:(UITableView *)tableView
   numberOfRowsInSection:(NSInteger)section
{
    return myTempArr.count;
}
// the rows
-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* myCell = [tableView dequeueReusableCellWithIdentifier:@"myCellId"];
    
    myCell.textLabel.text = [myTempArr objectAtIndex: indexPath.row];
    myCell.detailTextLabel.text = @"World";
    
    return myCell;
}


-(BOOL)tableView:(UITableView *)tableView
canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return true;
}

-   (void)tableView:(UITableView *)tableView
 commitEditingStyle:(UITableViewCellEditingStyle)editingStyle
  forRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSArray* myIndexPaths = [[NSArray alloc] initWithObjects:indexPath, nil];
    
    [myTempArr removeObjectAtIndex: indexPath.row];
    [tableView deleteRowsAtIndexPaths:myIndexPaths
                     withRowAnimation:UITableViewRowAnimationRight];
    
}


-(NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* retStr = [NSString stringWithFormat:@"Delete %@?", [myTempArr objectAtIndex:indexPath.row]];
                        return retStr;
}


-(void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [ShowAlert showAlertWith:[myTempArr objectAtIndex:indexPath.row] within:self];
}









@end
