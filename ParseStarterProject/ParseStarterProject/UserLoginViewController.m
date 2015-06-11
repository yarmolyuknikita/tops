//
//  UserLoginViewController.m
//  Tops
//
//  Created by Никита Ярмолюк on 6/4/15.
//  Copyright (c) 2015 Никита Ярмолюк. All rights reserved.
//

#import "UserLoginViewController.h"
#import <Parse/Parse.h>
#import "MainViewController.h"

@interface UserLoginViewController ()

@end

@implementation UserLoginViewController{
    MainViewController *viewController;
}

-(IBAction)fbLogInPressed:(id)sender{
    
    FBSDKLoginManager *login = [[FBSDKLoginManager alloc] init];
    [login logInWithReadPermissions:@[@"email", @"public_profile"] handler:^(FBSDKLoginManagerLoginResult *result, NSError *error) {
        if (error) {
            // Process error
        } else if (result.isCancelled) {
            // Handle cancellations
        } else {
            // If you ask for multiple permissions at once, you
            // should check if specific permissions missing
            
            [self.navigationController pushViewController:viewController animated:YES];
        }
    }];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if ([FBSDKAccessToken currentAccessToken]) {
        // User is logged in, do work such as go to next view controller.
        //viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"MainViewController"];
        
        //[self.navigationController pushViewController:viewController animated:YES];
    }
    
//    else{
//        FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
//        loginButton.center = self.view.center;
//        [self.view addSubview:loginButton];
//    }
    
    
//    [PFFacebookUtils logInInBackgroundWithReadPermissions:@[ @"public_profile", @"email" ] block:^(PFUser *user, NSError *error) {
//        if (!user) {
//            NSLog(@"Uh oh. The user cancelled the Facebook login.");
//        } else if (user.isNew) {
//            NSLog(@"User signed up and logged in through Facebook!");
//        } else {
//            NSLog(@"User logged in through Facebook!");
//        }
//    }];
//    
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
