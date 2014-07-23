//
//  QuizAppViewController.h
//  quizApp
//
//  Created by Erin McGee on 10/14/13.
//  Copyright (c) 2013 Erin McGee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizAppViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *question;

@property (weak, nonatomic) IBOutlet UILabel *answerA;
@property (weak, nonatomic) IBOutlet UILabel *answerB;
@property (weak, nonatomic) IBOutlet UILabel *answerC;
@property (weak, nonatomic) IBOutlet UILabel *answerD;
@property (weak, nonatomic) IBOutlet UILabel *correctIncorrect;

- (IBAction)answerButtonA:(id)sender;
- (IBAction)answerButtonB:(id)sender;
- (IBAction)answerButtonC:(id)sender;
- (IBAction)answerButtonD:(id)sender;
- (IBAction)nextQuestion:(id)sender;




@end
