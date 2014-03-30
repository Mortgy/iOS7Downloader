//
//  ViewController.m
//  DownloadIOS7
//
//  Created by Lombardo on 10/11/13.
//  Copyright (c) 2013 Lombardo. All rights reserved.
//

#import "ViewController.h"
#import "FLDownloader.h"

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)start:(id)sender {
    NSURL *url = [NSURL URLWithString:self.url.text];
    
    FLDownloadTask *download = [[FLDownloader sharedDownloader] downloadTaskForURL:url];
    
    [download start];
}

- (IBAction)startAlternative:(id)sender {
    NSURL *url = [NSURL URLWithString:self.url.text];
    
    FLDownloadTask *download = [FLDownloadTask downloadTaskForURL:url];
    
    [download start];
}

- (IBAction)startUpload:(id)sender {
    
    NSURL *url = [NSURL URLWithString:@"http://162.252.243.43/testput.php"];
    NSURL *fileLocalURL = [[NSBundle mainBundle] URLForResource:@"5MB" withExtension:@"zip"];
    FLDownloadTask *upload = [[FLDownloader sharedDownloader] uploadTaskForURL:url fromFile:fileLocalURL];
    
    [upload start];
     
    
}
@end
