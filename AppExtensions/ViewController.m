//
//  ViewController.m
//  AppExtensions
//
//  Created by Ishan on 12/2/15.
//  Copyright © 2015 Ishan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *imgView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)pressedShareButton:(id)sender {
    
    UIImage *img = [self.imgView image];
    
    NSArray *imgArray = [NSArray arrayWithObjects:img, nil];
    
    UIActivityViewController *controller = [[UIActivityViewController alloc] initWithActivityItems:imgArray applicationActivities:nil];
    
    NSArray *excludeActivities = @[UIActivityTypeAirDrop,
                                   UIActivityTypePrint,
                                   UIActivityTypeAssignToContact,
                                   UIActivityTypeSaveToCameraRoll,
                                   UIActivityTypeAddToReadingList,
                                   UIActivityTypePostToFlickr,
                                   UIActivityTypePostToVimeo,
                                   UIActivityTypePostToFacebook];
    
    controller.excludedActivityTypes = excludeActivities;
   
    [self presentViewController:controller animated:YES completion:nil];
    
}





@end
