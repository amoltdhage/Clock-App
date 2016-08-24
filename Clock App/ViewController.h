//
//  ViewController.h
//  Clock App
//
//  Created by Student P_02 on 19/08/16.
//  Copyright © 2016 Amol Dhage. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSArray *themes;
    
}
@property (strong, nonatomic) IBOutlet UILabel *day;

@property (strong, nonatomic) IBOutlet UILabel *label;

- (IBAction)buttonThemes:(id)sender;


@end

