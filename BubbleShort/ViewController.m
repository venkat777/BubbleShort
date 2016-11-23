//
//  ViewController.m
//  BubbleShort
//
//  Created by VENKATARAMANA on 19/07/16.
//  Copyright © 2016 rjil. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //Begin test Bubble Sorting Code
    NSArray *dArray =@[@10, @3, @7,@5,@11,@1];
    NSMutableArray *dataArray = [NSMutableArray arrayWithArray:dArray];
    
    //Check Bubble Sort
    NSArray *bubbleSortedArray = [self bubbleSort:dataArray];
   // NSLog(@"bubbleSortCount %d",bubbleSortCount);     //Number of Iterations //bubbleSortCount is a static variable initialized to 0 //Gives the average & worst case of n^2
    NSLog(@"bubbleSortedArray %@",bubbleSortedArray); //Prints the sorted array
   // bubbleSortCount =0;  //Reinitialize the static variable to 0 to retest
    //NSLog(@"bubbleSortCount %d",bubbleSortCount); //Gives the best case count of n
    //End test Bubble Sorting Code

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSArray *)bubbleSort:(NSMutableArray *)unsortedDataArray
{
    long count = unsortedDataArray.count;
    int i;
    bool swapped = TRUE;
    while (swapped){
        swapped = FALSE;
        for (i=1; i<count;i++)
        {
            if ([unsortedDataArray objectAtIndex:(i-1)] > [unsortedDataArray objectAtIndex:i])
            {
                [unsortedDataArray exchangeObjectAtIndex:(i-1) withObjectAtIndex:(i)];
                swapped = TRUE;
            }
            //bubbleSortCount ++; //Increment the count everytime a switch is done, this line is not required in the production implementation.
        }
    }
    return unsortedDataArray;
}
@end
