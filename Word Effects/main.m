//
//  main.m
//  Word Effects
//
//  Created by Colin on 2018-04-09.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        while (true) {
            
            // 255 unit long array of characters
            char inputChars[255];
            char inputNum[255];
            //char *inputNum;
            
            printf("Input a string: ");
            // limit input to max 255 characters
            fgets(inputChars, 255, stdin);
            
            // print as a c string
            printf("Your string is %s\n", inputChars);
            
            // get operation number
            printf("Choose an operation (1:Uppercase, 2:Lowercase, 3:Numberize, 4:Canadianize, 5:Respond, 6:De-Space-It: ");
            fgets(inputNum, 255, stdin);
            int inputInt = atoi(&inputNum[0]);
            
            // convert char array to an NSString object
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            
            switch (inputInt) {
                case 1:
                    NSLog(@"%@", [inputString uppercaseString]);
                    break;
                case 2:
                    NSLog(@"%@", [inputString lowercaseString]);
                    break;
                case 3:
                    NSLog(@"%d", [inputString intValue]);
                    break;
                case 4:
                    NSLog(@"%@", [inputString stringByAppendingString:@", eh"]);
                    break;
                case 5:
                    if([inputString characterAtIndex:[inputString length] - 2] == '!'){
                        NSLog(@"Whoa, calm down!");
                    }
                    if([inputString characterAtIndex:[inputString length] - 2] == '?'){
                        NSLog(@"I don't know.");
                    }
                    break;
                case 6:
                    NSLog(@"%@", [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
                    break;
                default:
                    break;
            }
            
            // print NSString object memory address
            NSLog(@"Memory Address is: %p", inputString);
            
        }
    }
    return 0;
}
