//
//  QuizViewController.m
//  chapter1
//
//  Created by Emilio Sellitto on 12/06/14.
//  Copyright (c) 2014 Emilio Sellitto. All rights reserved.
//

#import "BNRQuizViewController.h"

@interface BNRQuizViewController ()

@property (nonatomic) int currentQuestionIndex;
@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;
@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@end

@implementation BNRQuizViewController

- (instancetype) initWithNibName:(NSString *) nibNameOrNil bundle:(NSBundle *) nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self) {
        self.questions = @[@"Qual è la capitale d' Italia?",
                           @"Quanto fa 2+2?",
                           @"Quante dita ha una mano?"];
        self.answers = @[@"Roma",
                         @"4",
                         @"5"];
        self.tabBarItem.title = @"Quiz";
    }
    return self;
}

- (IBAction)showQuestion:(id)sender;
{
    self.currentQuestionIndex++;
    if (self.currentQuestionIndex == [self.questions count]) {
        self.currentQuestionIndex = 0;
    }
    NSString *question = self.questions[self.currentQuestionIndex];
    self.questionLabel.text = question;
    self.answerLabel.text = @"???";
}

- (IBAction)showAnswer:(id)sender; 
{
    NSString *answer = self.answers[self.currentQuestionIndex];
    self.answerLabel.text = answer;
}
@end
