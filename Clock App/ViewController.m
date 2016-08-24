//
//  ViewController.m
//  Clock App
//
//  Created by Student P_02 on 19/08/16.
//  Copyright © 2016 Amol Dhage. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
     // Do any additional setup after loading the view, typically from a nib.

    themes = [NSArray arrayWithObjects:@"blue.jpg",@"texture-8.jpg",@"tree_PNG5529.png",@"bottom-middle.jpg",@"light.jpg", nil];
    
    
self.label.text = @"";
    
self.day.text =@"";
    
[self updateDay];
    
[self updateTime];
    
   self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"texture-8.jpg"]];
    
}



-(void)updateDay
{
NSDateFormatter *dateFormat =[[NSDateFormatter alloc]init];
    
[dateFormat setDateFormat:@"dd-MM-yyyy"];
    
self.day.text = [dateFormat stringFromDate:[NSDate date]];
    
 [self performSelector:@selector(updateDay) withObject:self afterDelay:1.0];
}




 -(void)updateTime
{
   
 NSDateFormatter *dateFormat =[[NSDateFormatter alloc]init];
    
[dateFormat setDateFormat:@"hh:mm:ss"];
    
self.label.text = [dateFormat stringFromDate:[NSDate date]];
    
[self performSelector:@selector(updateTime) withObject:self afterDelay:1.0];

    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
}

- (IBAction)buttonThemes:(id)sender {
    
    static int count=0;
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:[themes objectAtIndex:count]]];
if(count<themes.count)
    count++;
    
    if(count==themes.count)
        count = 0;
    
}
@end
