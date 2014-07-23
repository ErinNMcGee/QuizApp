//
//  QuizAppViewController.m
//  quizApp
//
//  Created by Erin McGee on 10/14/13.
//  Copyright (c) 2013 Erin McGee. All rights reserved.
//

#import "QuizAppViewController.h"

@interface QuizAppViewController ()

@end

@implementation QuizAppViewController

static NSArray *questions;
static NSArray *answers;
static NSString *myQuestion;
static int arrayIndex=0;

- (void)viewDidLoad
{
    [super viewDidLoad];
    questions= [NSArray arrayWithObjects:@"What was the Beatles' first single in 1962?",
                @"What is Paul McCartney's middle name?",
                @"What was the title of Beatles manager Brian Epstein's autobiography?",
                @"Which Beatles album consisted only of Lennon/McCartney compositions?",
                @"Which actor appeared in three Beatles films?",
                @"Which Beatles song holds the record for the most versions recorded by different artists?",
                @"In which year was the Beatles' last live performance (at Candlestick Park, San Francisco)",
                @"Who gave the Beatles their name in April 1960?",
                @"Which was the last album recorded by the Beatles?",
                @"Which of the following artists was not recorded by Beatles producer George Martin?",
                @"Which pop artist designed the cover of the White Album?",
                @"The Beatles had a record 17 UK number one hits. Which was the group's only single between 1963 and 1969 that failed to reach the top of the charts?",
                @"Who played lead guitar on Ticket to Ride?",
                @"Which of these Beatles songs was not banned by the BBC?",
                @"Which Beatles song did Frank Sinatra describe as the greatest love song ever written?",
                nil];
    answers=[NSArray arrayWithObjects:        @"Please Please Me",
             @"Love Me Do",
             @"I Saw Her Standing There",
             @"Twist and Shout",
             @"John",
             @"Ringo",
             @"Paul",
             @"James",
             @"A Cellarful of Noise",
             @"Revolution in the Head",
             @"Nowhere Man",
             @"All You Need is Cash",
             @"Revolver",
             @"A Hard Day's Night",
             @"Rubber Soul",
             @"Sgt Pepper's Lonely Hearts Club Band",
             @"Wilfrid Brambell",
             @"Victor Spinetti",
             @"Roy Kinnear",
             @"Ivor Cutler",
             @"Hey Jude",
             @"Revolution #9",
             @"Yesterday",
             @"Let It Be",
             @"1965",
             @"1966",
             @"1967",
             @"1968",
             @"George Harrison",
             @"Pete Best",
             @"John Lennon",
             @"Paul McCartney",
             @"Sgt Pepper's Lonely Hearts Club Band",
             @"Let It Be",
             @"Abbey Road",
             @"The White Album",
             @"The Rolling Stones",
             @"Peter Sellers",
             @"Gerry & The Pacemakers",
             @"Cilla Black",
             @"Richard Hamilton",
             @"Peter Blake",
             @"Andy Warhol",
             @"Bridget Riley",
             @"Penny Lane/Strawberry Fields Forever",
             @"Eleanor Rigby/Yellow Submarine",
             @"I Feel Fine",
             @"The Ballad of John and Yoko",
             @"John Lennon",
             @"Eric Clapton",
             @"Paul McCartney",
             @"George Harrison",
             @"Lucy In The Sky With Diamonds",
             @"A Day in the Life",
             @"Dr. Robert",
             @"The Ballad of John and Yoko",
             @"Norwegian Wood",
             @"Yesterday",
             @"Why Don't We Do it in the Road?",
             @"Something",
             nil];

    // 1 - Get number of rows in array
    int array_tot = [questions count];
    // 2 - Get random index
    arrayIndex = (arc4random() % array_tot);
    // 3 - Get the quote string for the index
    myQuestion = questions[arrayIndex];
    // 4 - Display the quote in the text view
    question.text = myQuestion;
    answerA.text=answers[(arrayIndex*4)];
    answerB.text=answers[(arrayIndex*4)+1];
    answerC.text=answers[(arrayIndex*4)+2];
    answerD.text=answers[(arrayIndex*4)+3];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@synthesize question, answerA, answerB, answerD, answerC, correctIncorrect;



- (IBAction)answerButtonA:(id)sender {
    if((arrayIndex==2) || (arrayIndex==9) || (arrayIndex==10) || (arrayIndex==11))
    {
        correctIncorrect.text = @"Correct";
        correctIncorrect.textColor = [UIColor greenColor];
    }
    else
    {
        correctIncorrect.text = @"Wrong Answer. Try Again!";
        correctIncorrect.textColor = [UIColor redColor];
    }

}

- (IBAction)answerButtonB:(id)sender {
    if((arrayIndex==0) || (arrayIndex==3) || (arrayIndex==4) || (arrayIndex==6))
    {
        correctIncorrect.text = @"Correct";
        correctIncorrect.textColor = [UIColor greenColor];
    }
    else
    {
        correctIncorrect.text = @"Wrong Answer. Try Again!";
        correctIncorrect.textColor = [UIColor redColor];
    }
}

- (IBAction)answerButtonC:(id)sender {
    if((arrayIndex==1) || (arrayIndex==5) || (arrayIndex==7) || (arrayIndex==8) || (arrayIndex==12) || (arrayIndex==13))
    {
        correctIncorrect.text = @"Correct";
        correctIncorrect.textColor = [UIColor greenColor];
    }
    else
    {
        correctIncorrect.text = @"Wrong Answer. Try Again!";
        correctIncorrect.textColor = [UIColor redColor];
    }
}

- (IBAction)answerButtonD:(id)sender {
    if(arrayIndex==14)
    {
        correctIncorrect.text = @"Correct";
        correctIncorrect.textColor = [UIColor greenColor];
    }
    else
    {
        correctIncorrect.text = @"Wrong Answer. Try Again!";
        correctIncorrect.textColor = [UIColor redColor];
    }
}

- (IBAction)nextQuestion:(id)sender {
    questions= [NSArray arrayWithObjects:@"What was the Beatles' first single in 1962?",
                @"What is Paul McCartney's middle name?",
                @"What was the title of Beatles manager Brian Epstein's autobiography?",
                @"Which Beatles album consisted only of Lennon/McCartney compositions?",
                @"Which actor appeared in three Beatles films?",
                @"Which Beatles song holds the record for the most versions recorded by different artists?",
                @"In which year was the Beatles' last live performance (at Candlestick Park, San Francisco)",
                @"Who gave the Beatles their name in April 1960?",
                @"Which was the last album recorded by the Beatles?",
                @"Which of the following artists was not recorded by Beatles producer George Martin?",
                @"Which pop artist designed the cover of the White Album?",
                @"The Beatles had a record 17 UK number one hits. Which was the group's only single between 1963 and 1969 that failed to reach the top of the charts?",
                @"Who played lead guitar on Ticket to Ride?",
                @"Which of these Beatles songs was not banned by the BBC?",
                @"Which Beatles song did Frank Sinatra describe as the greatest love song ever written?",
                nil];
    answers=[NSArray arrayWithObjects:        @"Please Please Me",
             @"Love Me Do",
             @"I Saw Her Standing There",
             @"Twist and Shout",
             @"John",
             @"Ringo",
             @"Paul",
             @"James",
             @"A Cellarful of Noise",
             @"Revolution in the Head",
             @"Nowhere Man",
             @"All You Need is Cash",
             @"Revolver",
             @"A Hard Day's Night",
             @"Rubber Soul",
             @"Sgt Pepper's Lonely Hearts Club Band",
             @"Wilfrid Brambell",
             @"Victor Spinetti",
             @"Roy Kinnear",
             @"Ivor Cutler",
             @"Hey Jude",
             @"Revolution #9",
             @"Yesterday",
             @"Let It Be",
             @"1965",
             @"1966",
             @"1967",
             @"1968",
             @"George Harrison",
             @"Pete Best",
             @"John Lennon",
             @"Paul McCartney",
             @"Sgt Pepper's Lonely Hearts Club Band",
             @"Let It Be",
             @"Abbey Road",
             @"The White Album",
             @"The Rolling Stones",
             @"Peter Sellers",
             @"Gerry & The Pacemakers",
             @"Cilla Black",
             @"Richard Hamilton",
             @"Peter Blake",
             @"Andy Warhol",
             @"Bridget Riley",
             @"Penny Lane/Strawberry Fields Forever",
             @"Eleanor Rigby/Yellow Submarine",
             @"I Feel Fine",
             @"The Ballad of John and Yoko",
             @"John Lennon",
             @"Eric Clapton",
             @"Paul McCartney",
             @"George Harrison",
             @"Lucy In The Sky With Diamonds",
             @"A Day in the Life",
             @"Dr. Robert",
             @"The Ballad of John and Yoko",
             @"Norwegian Wood",
             @"Yesterday",
             @"Why Don't We Do it in the Road?",
             @"Something",
             nil];
    while([myQuestion isEqual:question.text])
    {
        // 1 - Get number of rows in array
        int array_tot = [questions count];
        // 2 - Get random index
        arrayIndex = (arc4random() % array_tot);
        // 3 - Get the quote string for the index
        myQuestion = questions[arrayIndex];
    }
    // 4 - Display the quote in the text view
    question.text = myQuestion;
    correctIncorrect.text=NULL;
    answerA.text=answers[(arrayIndex*4)];
    answerB.text=answers[(arrayIndex*4)+1];
    answerC.text=answers[(arrayIndex*4)+2];
    answerD.text=answers[(arrayIndex*4)+3];
}
@end
