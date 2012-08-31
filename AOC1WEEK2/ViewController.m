//
//  ViewController.m
//  AOC1WEEK2
//
//  Created by Janis Jae on 8/30/12.
//  Copyright (c) 2012 Janis Jae. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Change the background color of the view to any color you wish.

    self.view.backgroundColor = [UIColor colorWithRed:0.827 green:0.412 blue:0.941 alpha:1];
    /*#d369f0*/
    
    //Create a UILabel and place it at the top of the view. This is used as the title of the book. Center the text for this label.

    bookTitle = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 20.0f)];
    if (bookTitle != nil)
    {
        bookTitle.backgroundColor = [UIColor colorWithRed:0.443 green:0.961 blue:0.953 alpha:1]; /*#71f5f3*/
        bookTitle.text = @"The Host";
        bookTitle.textAlignment = UITextAlignmentCenter;
        bookTitle.textColor = [UIColor colorWithRed:0.71 green:0.192 blue:0.608 alpha:1]; /*#b5319b*/
    }
    
    [self.view addSubview:bookTitle];
    
    //Create another label that contains the text "Author:" with the text right justified.
    
    author = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 50.0f, 100.0f, 20.0f)];
    if (author != nil)
    {
        author.backgroundColor = [UIColor colorWithRed:0.969 green:0.894 blue:0.953 alpha:1];
        /*#f7e4f3*/
        author.text = @"Author:";
        author.textAlignment = UITextAlignmentRight;
        author.textColor = [UIColor colorWithRed:0.639 green:0.11 blue:0.286 alpha:1]; /*#a31c49*/
    }
    [self.view addSubview:author];
    
    //Create a UILabel to the right of the author title label and have it contain the name of the author of the book you chose. This text will be left justified.
    
    authorName = [[UILabel alloc] initWithFrame:CGRectMake(110.0f, 50.0f, 320.0f, 20.0f)];
    if (authorName != nil)
    {
        authorName.backgroundColor = [UIColor yellowColor];
        authorName.text = @"Stephenie Meyer";
        authorName.textAlignment = UITextAlignmentLeft;
        authorName.textColor = [UIColor magentaColor];
    }
    [self.view addSubview:authorName];
    
    //Create a UILabel on the next line called "Published:". This text is right justified.
    
    published = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 80.0f, 100.0f, 20.0f)];
    if (published != nil)
    {
        published.backgroundColor = [UIColor purpleColor];
        published.text = @"Published:";
        published.textAlignment = UITextAlignmentRight;
        published.textColor = [UIColor redColor];
    }
    [self.view addSubview:published];
    
    //Create a label next to the Published label and add the text of when the book was published. This text is left justified.
    
    publishedDate = [[UILabel alloc] initWithFrame:CGRectMake(110.0f, 80.0f, 320.0f, 20.0f)];
    if (publishedDate != nil)
    {
        publishedDate.backgroundColor = [UIColor magentaColor];
        publishedDate.text = @"May 6, 2008";
        publishedDate.textAlignment = UITextAlignmentLeft;
        publishedDate.textColor = [UIColor colorWithRed:0.047 green:0.059 blue:0.361 alpha:1]; /*#0c0f5c*/
    }
    [self.view addSubview:publishedDate];
    
    //Create a UILabel with the text "Summary". This text is left justified.
    
    summary = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 110.0f, 100.0f, 20.0f)];
    if (summary != nil)
    {
        summary.backgroundColor = [UIColor colorWithRed:0.878 green:0.435 blue:0.192 alpha:1]; /*#e06f31*/
        summary.text = @"Summary";
        summary.textAlignment = UITextAlignmentLeft;
        summary.textColor = [UIColor blackColor];
    }
    [self.view addSubview:summary];
    
    //Create another UILabel that contains a small summary of the book's plot. This text is centered and should span multiple lines.
    
    summaryText = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 130.0f, 320.0f, 250.0f)];
    if (summaryText != nil)
    {
        summaryText.backgroundColor = [UIColor colorWithRed:0.227 green:0.043 blue:0.349 alpha:1]; /*#3a0b59*/
        summaryText.text = @"The Host is a science fiction/romance novel by Stephenie Meyer. The novel introduces an alien race, called Souls, they takeover the Earth and its inhabitants. The book describes one Soul's predicament when the mind of its human host refuses to cooperate with her takeover.";
        summaryText.textAlignment = UITextAlignmentCenter;
        summaryText.textColor = [UIColor colorWithRed:0.584 green:0.922 blue:0.961 alpha:1]; /*#95ebf5*/
        summaryText.numberOfLines = 10;
    }
    [self.view addSubview:summaryText];
    
    //Create an NSArray of 5 items talked about in the book. These items will be NSStrings. Add the items to the array.
    
    //Items for array
    item1 = [[NSString alloc] initWithString:@"Souls"];
    item2 = [[NSString alloc] initWithString:@"Humans"];
    item3 = [[NSString alloc] initWithString:@"Aliens"];
    item4 = [[NSString alloc] initWithString:@"Romance"];
    item5 = [[NSString alloc] initWithString:@"Parasites"];
    //Create Array
    itemArray = [NSArray arrayWithObjects:item1, item2, item3, item4, item5, nil];
    
    NSLog(@"%@", [itemArray description]);
    
    //Create a variable of type NSMutableString and allocate it. Loop through the NSArray you created and append each of these items to your NSMutableString separated by commas. (For example: dinosaurs, jeeps, storm, giant turkeys, eating people)
    
    itemText = [[NSMutableString alloc] initWithCapacity:5];
    
    for (int x = 0; x < itemArray.count; x++) {
        [itemText appendString:[itemArray objectAtIndex: x]];
        if (x < itemArray.count -1) {
            [itemText appendString: @", "];
        }
    }
    
    //Create a label with the text "List of items" and add it to the parent view. Make sure the text is left justified.
    
    itemList = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 400.0f, 100.0f, 20.0f)];
    if (itemList != nil)
    {
        itemList.backgroundColor = [UIColor colorWithRed:0.447 green:0.58 blue:0.949 alpha:1]; /*#7294f2*/
        itemList.text = @"List of items";
        itemList.textAlignment = UITextAlignmentLeft;
        itemList.textColor = [UIColor colorWithRed:0.02 green:0.094 blue:0.29 alpha:1]; /*#05184a*/;
    }
    [self.view addSubview:itemList];
    
    //Create another label beneath and set the text to the NSMutableString text. Increase the number of lines if necessary. Make sure the text in this label is centered
    
    itemListText = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 420.0f, 320.0f, 40.0f)];
    if (itemListText != nil)
    {
        itemListText.backgroundColor = [UIColor colorWithRed:0.341 green:0.067 blue:0.106 alpha:1]; /*#57111b*/
        itemListText.text = itemText;
        itemListText.textAlignment = UITextAlignmentCenter;
        itemListText.textColor = [UIColor colorWithRed:0.949 green:0.588 blue:0.894 alpha:1];
        /*#f296e4*/
        itemListText.numberOfLines = 6;
    }
    [self.view addSubview:itemListText];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
