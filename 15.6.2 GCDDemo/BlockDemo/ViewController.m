//
//  ViewController.m
//  GCDDemo
//

#import "ViewController.h"

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

- (IBAction)click:(id)sender {
    
    NSURL *imgkURL = [NSURL URLWithString:@"http://www.51work6.com/ios_book/animals/animal-3.png"];
    dispatch_queue_t downloadQueue = dispatch_queue_create("com.51wor6.image.downloader", NULL);
    dispatch_async(downloadQueue, ^{
        NSData *imgData = [NSData dataWithContentsOfURL:imgkURL];
        UIImage *img = [UIImage imageWithData:imgData];
        dispatch_async(dispatch_get_main_queue(), ^{
            self.imageView.image = img;
        });
    });
    
}

@end
