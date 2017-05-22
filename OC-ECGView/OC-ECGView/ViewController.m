//
//  ViewController.m
//  心电图
//
//  Created by 徐子文 on 2017/5/22.
//  Copyright © 2017年 徐子文. All rights reserved.
//

#import "ViewController.h"
#import "ECGView.h"

//满屏 高  宽
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
#define kScreenWidth [UIScreen mainScreen].bounds.size.width
@interface ViewController ()
@property (nonatomic, strong) NSMutableArray *dataArr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self dealData];
    [self addECGView];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)addECGView {
    ECGView *ecgView = [[ECGView alloc] initWithFrame:CGRectMake(20, 100, kScreenWidth-40, 200)];
    ecgView.ecgArray = _dataArr;
    [self.view addSubview:ecgView];
}

- (void)dealData{
    
    int data[] = {
        -22,
        -22,
        -22,
        -22,
        -22,
        -22,
        -22,
        -22,
        -22,
        -21,
        -21,
        -21,
        -21,
        -21,
        -21,
        -21,
        -25,
        -24,
        -22,
        -24,
        -25,
        -24,
        -25,
        -24,
        -24,
        -24,
        -24,
        -24,
        -24,
        -23,
        -24,
        -23,
        -24,
        -24,
        -23,
        -23,
        -19,
        -15,
        -15,
        -15,
        -18,
        -20,
        -21,
        -24,
        -21,
        -24,
        -26,
        -21,
        -23,
        -21,
        -26,
        -50,
        10,
        207,
        418,
        446,
        258,
        75,
        28,
        15,
        -1,
        -2,
        -10,
        -13,
        -11,
        -14,
        -11,
        -12,
        -13,
        -10,
        -10,
        -7,
        -4,
        -5,
        -2,
        -1,
        0,
        4,
        4,
        8,
        13,
        15,
        17,
        19,
        20,
        20,
        15,
        5,
        -3,
        -6,
        -10,
        -15,
        -17,
        -18,
        -18,
        -17,
        -18,
        -17,
        -17,
        -17,
        -18,
        -21,
        -22,
        -21,
        -21,
        -21,
        -21,
        -21,
        -20,
        -21,
        -21,
        -20,
        -21,
        -20,
        -20,
        -21,
        -23,
        -24,
        -23,
        -23,
        -24,
        -23,
        -24,
        -23,
        -23,
        -24,
        -23,
        -23,
        -23,
        -22,
        -23,
        -19,
        -14,
        -15,
        -14,
        -17,
        -19,
        -19,
        -23,
        -21,
        -21,
        -23,
        -18,
        -24,
        -24,
        -25,
        -51,
        -4,
        183,
        403,
        466,
        298,
        94,
        32,
        22,
        0,
        -2,
        -11,
        -17,
        -14,
        -17,
        -15,
        -15,
        -16,
        -11,
        -11,
        -12,
        -9,
        -8,
        -6,
        -6,
        -3,
        1,
        1,
        4,
        7,
        8,
        11,
        12,
        17,
        18,
        12,
        6,
        -2,
        -9,
        -14,
        -21,
        -21,
        -21,
        -21,
        -21,
        -24,
        -25,
        -23,
        -22,
        -23,
        -25,
        -24,
        -24,
        -27,
        -24,
        -23,
        -24,
        -23,
        -24,
        -24,
        -26,
        -28,
        -25,
        -25,
        -25,
        -24,
        -26,
        -26,
        -26,
        -27,
        -26,
        -27,
        -26,
        -26,
        -26,
        -25,
        -26,
        -25,
        -25,
        -26,
        -20,
        -17,
        -17,
        -20,
        -25,
        -24,
        -24,
        -25,
        -22,
        -27,
        -25,
        -25,
        -28,
        -23,
        -43,
        -38,
        101,
        316,
        411,
        288,
        103,
        32,
        19,
        0,
        -3,
        -7,
        -13,
        -12,
        -15,
        -11,
        -8,
        -12,
        -8,
        -6,
        -6,
        -4,
        -3,
        0,
        2,
        5,
        8,
        9,
        16,
        19,
        19,
        23,
        26,
        27,
        26,
        19,
        11,
        0,
        -8,
        -11,
        -16,
        -18,
        -20,
        -22,
        -20,
        -21,
        -21,
        -20,
        -21,
        -21,
        -23,
        -22,
        -21,
        -23,
        -21,
        -22,
        -22,
        -21,
        -22,
        -21,
        -21,
        -22,
        -21,
        -21,
        -21,
        -24,
        -26,
        -24,
        -25,
        -25,
        -23,
        -25,
        -24,
        -24,
        -24,
        -23,
        -24,
        -20,
        -15,
        -16,
        -14,
        -19,
        -23,
        -21,
        -24,
        -22,
        -25,
        -28,
        -23,
        -25,
        -25,
        -29,
        -52,
        0,
        188,
        400,
        434,
        251,
        74,
        30,
        15,
        -3,
        -4,
        -11,
        -14,
        -10,
        -13,
        -11,
        -11,
        -13,
        -10,
        -9,
        -6,
        -4,
        -3,
        0,
        1,
        3,
        6,
        8,
        12,
        14,
        17,
        22,
        22,
        24,
        22,
        12,
        6,
        -2,
        -10,
        -13,
        -18,
        -21,
        -21,
        -21,
        -20,
        -21,
        -21,
        -20,
        -21,
        -19,
        -21,
        -23,
        -20,
        -20,
        -23,
        -23,
        -24,
        -23,
        -23,
        -23,
        -22,
        -23,
        -22,
        -22,
        -23,
        -22,
        -23,
        -22,
        -22,
        -26,
        -26,
        -26,
        -26,
        -25,
        -26,
        -25,
        -25,
        -25,
        -24,
        -25,
        -21,
        -16,
        -18,
        -15,
        -17,
        -20,
        -19,
        -24,
        -23,
        -23,
        -25,
        -21,
        -25,
        -23,
        -26,
        -54,
        -1,
        191,
        406,
        459,
        286,
        86,
        28,
        19,
        -1,
        -4,
        -9,
        -15,
        -12,
        -14,
        -13,
        -12,
        -14,
        -11,
        -10,
        -9,
        -7,
        -5,
        -4,
        -4,
        -1,
        0,
        3,
        8,
        8,
        11,
        15,
        16,
        19,
        20,
        15,
        8,
        0,
        -6,
        -11,
        -15,
        -19,
        -22,
        -23,
        -22,
        -22,
        -22,
        -21,
        -19,
        -20,
        -22,
        -21,
        -21,
        -21,
        -21,
        -24,
        -25,
        -24,
        -25,
        -24,
        -24,
        -24,
        -24,
        -24,
        -24,
        -24,
        -24,
        -24,
        -24,
        -23,
        -24,
        -23,
        -23,
        -23,
        -23,
        -26,
        -26,
        -22,
        -23,
        -22,
        -22,
        -22,
        -17,
        -14,
        -14,
        -17,
        -22,
        -21,
        -24,
        -23,
        -23,
        -27,
        -23,
        -25,
        -26,
        -26,
        -53,
        -20,
        155,
        377,
        464,
        315,
        104,
        34,
        24,
        0,
        -5,
        -10,
        -17,
        -13,
        -16,
        -15,
        -13,
        -17,
        -12,
        -11,
        -10,
        -8,
        -8,
        -5,
        -5,
        -4,
        0,
        0,
        2,
        6,
        8,
        11,
        13,
        18,
        18,
        13,
        7,
        -1,
        -8,
        -12,
        -17,
        -19,
        -21,
        -24,
        -23,
        -24,
        -23,
        -23,
        -24,
        -23,
        -24,
        -23,
        -23,
        -24,
        -26,
        -28,
        -26,
        -23,
        -26,
        -27,
        -26,
        -27,
        -26,
        -27,
        -26,
        -26,
        -27,
        -25,
        -27,
        -29,
        -26,
        -26,
        -29,
        -29,
        -29,
        -28,
        -29,
        -29,
        -27,
        -26,
        -26,
        -26,
        -23,
        -21,
        -20,
        -20,
        -24,
        -25,
        -26,
        -29,
        -26,
        -28,
        -28,
        -25,
        -30,
        -25,
        -33,
        -53,
        16,
        218,
        392,
        354,
        164,
        43,
        15,
        -4,
        -12,
        -15,
        -23,
        -21,
        -21,
        -23,
        -21,
        -22,
        -22,
        -20,
        -19,
        -16,
        -17,
        -14,
        -11,
        -10,
        -7,
        -5,
        -1,
        0,
        2,
        7,
        8,
        10,
        12,
        6,
        0,
        -8,
        -16,
        -23,
        -31,
        -32,
        -34,
        -36,
        -34,
        -36,
        -38,
        -36,
        -38,
        -39,
        -38,
        -39,
        -37,
        -36,
        -33,
        -35,
        -37,
        -34,
        -34,
        -34,
        -33,
        -34,
        -33,
        -34,
        -34,
        -33,
        -34,
        -33,
        -33,
        -34,
        -33,
        -33,
        -32,
        -32,
        -33,
        -32,
        -33,
        -32,
        -32,
        -32,
        -25,
        -23,
        -25,
        -26,
        -30,
        -30,
        -32,
        -32,
        -31,
        -35,
        -32,
        -32,
        -35,
        -31,
        -53,
        -44,
        94,
        314,
        437,
        331,
        122,
        29,
        16,
        -5,
        -9,
        -12,
        -20,
        -16,
        -18,
        -19,
        -16,
        -17,
        -15,
        -15,
        -13,
        -10,
        -9,
        -5,
        -5,
        -1,
        2,
        2,
        7,
        10,
        10,
        15,
        18,
        20,
        21,
        16,
        10,
        0,
        -8,
        -12,
        -16,
        -20,
        -22,
        -21,
        -22,
        -24,
        -23,
        -23,
        -24,
        -23,
        -23,
        -23,
        -22,
        -23,
        -22,
        -23,
        -23,
        -22,
        -24,
        -25,
        -23,
        -22,
        -23,
        -25,
        -23,
        -21,
        -23,
        -25,
        -25,
        -23,
        -23,
        -23,
        -23,
        -26,
        -25,
        -24,
        -26,
        -24,
        -25,
        -22,
        -15,
        -15,
        -15,
        -17,
        -21,
        -19,
        -22,
        -23,
        -23,
        -26,
        -22,
        -25,
        -24,
        -22,
        -48,
        -10,
        170,
        399,
        486,
        325,
        104,
        34,
        25,
        0,
        -1,
        -6,
        -12,
        -8,
        -12,
        -10,
        -10,
        -12,
        -6,
        -7,
        -7,
        -2,
        -3,
        -1,
        1,
        4,
        6,
        9,
        13,
        14,
        17,
        22,
        22,
        26,
        29,
        22,
        14,
        6,
        -1,
        -5,
        -12,
        -17,
        -16,
        -17,
        -16,
        -16,
        -17,
        -16,
        -16,
        -16,
        -16,
        -16,
        -17,
        -19,
        -17,
        -18,
        -21,
        -19,
        -19,
        -20,
        -19,
        -20,
        -19,
        -19,
        -20,
        -19,
        -19,
        -20,
        -22,
        -24,
        -22,
        -22,
        -22,
        -22,
        -22,
        -19,
        -20,
        -20,
        -16,
        -15,
        -13,
        -14,
        -18,
        -18,
        -20,
        -23,
        -20,
        -23,
        -25,
        -24,
        -27,
        -20,
        -30,
        -50,
        30,
        248,
        446,
        422,
        213,
        60,
        29,
        12,
        -2,
        -2,
        -9,
        -12,
        -11,
        -12,
        -11,
        -11,
        -8,
        -6,
        -8,
        -4,
        -2,
        -1,
        2,
        3,
        5,
        9,
        11,
        14,
        16,
        20,
        25,
        28,
        29,
        25,
        16,
        6,
        -3,
        -9,
        -14,
        -18,
        -21,
        -22,
        -21,
        -21,
        -22,
        -21,
        -25,
        -26,
        -24,
        -26,
        -25,
        -25,
        -25,
        -24,
        -25,
        -25,
        -24,
        -25,
        -24,
        -24,
        -25,
        -23,
        -24,
        -25,
        -26,
        -26,
        -26,
        -29,
        -27,
        -27,
        -29,
        -22,
        -17,
        -18,
        -19,
        -23,
        -23,
        -26,
        -28,
        -24,
        -28,
        -29,
        -26,
        -28,
        -24,
        -36,
        -50,
        39,
        244,
        399,
        336,
        140,
        35,
        19,
        -1,
        -7,
        -7,
        -15,
        -13,
        -15,
        -15,
        -11,
        -14,
        -12,
        -9,
        -9,
        -4,
        -4,
        -1,
        3,
        3,
        8,
        12,
        14,
        20,
        22,
        24,
        27,
        27,
        28,
        23,
        11,
        1,
        -8,
        -14,
        -19,
        -23,
        -22,
        -23,
        -26,
        -27,
        -26,
        -23,
        -22,
        -23,
        -24,
        -23,
        -22,
        -25,
        -26,
        -25,
        -26,
        -25,
        -22,
        -25,
        -25,
        -25,
        -25,
        -25,
        -25,
        -25,
        -25,
        -25,
        -24,
        -25,
        -25,
        -28,
        -28,
        -25,
        -27,
        -25,
        -19,
        -18,
        -19,
        -23,
        -25,
        -23,
        -28,
        -28,
        -26,
        -29,
        -25,
        -27,
        -29,
        -28,
        -52,
        -23,
        146,
        369,
        450,
        298,
        95,
        25,
        16,
        -2,
        -5,
        -12,
        -16,
        -12,
        -15,
        -14,
        -12,
        -15,
        -12,
        -10,
        -9,
        -5,
        -5,
        -1,
        0,
        -2,
        0,
        2,
        6,
        8,
        9,
        12,
        14,
        16,
        15,
        7,
        0,
        -12,
        -20,
        -24,
        -28,
        -32,
        -35,
        -36,
        -35,
        -36,
        -35,
        -35,
        -36,
        -35,
        -35,
        -35,
        -35,
        -39,
        -39,
        -38,
        -39,
        -38,
        -39,
        -38,
        -38,
        -38,
        -38,
        -42,
        -42,
        -38,
        -38,
        -38,
        -41,
        -42,
        -41,
        -42,
        -41,
        -41,
        -41,
        -37,
        -37,
        -33,
        -29,
        -30,
        -28,
        -30,
        -32,
        -32,
        -33,
        -32,
        -36,
        -37,
        -30,
        -34,
        -30,
        -37,
        -58,
        15,
        224,
        427,
        431,
        -22,
        -22,
        -22,
        -22,
        -22,
        -22,
        -22,
        -22,
        -22,
        -21,
        -21,
        -21,
        -21,
        -21,
        -21,
        -21,
        -25,
        -24,
        -22,
        -24,
        -25,
        -24,
        -25,
        -24,
        -24,
        -24,
        -24,
        -24,
        -24,
        -23,
        -24,
        -23,
        -24,
        -24,
        -23,
        -23,
        -19,
        -15,
        -15,
        -15,
        -18,
        -20,
        -21,
        -24,
        -21,
        -24,
        -26,
        -21,
        -23,
        -21,
        -26,
        -50,
        10,
        207,
        418,
        446,
        258,
        75,
        28,
        15,
        -1,
        -2,
        -10,
        -13,
        -11,
        -14,
        -11,
        -12,
        -13,
        -10,
        -10,
        -7,
        -4,
        -5,
        -2,
        -1,
        0,
        4,
        4,
        8,
        13,
        15,
        17,
        19,
        20,
        20,
        15,
        5,
        -3,
        -6,
        -10,
        -15,
        -17,
        -18,
        -18,
        -17,
        -18,
        -17,
        -17,
        -17,
        -18,
        -21,
        -22,
        -21,
        -21,
        -21,
        -21,
        -21,
        -20,
        -21,
        -21,
        -20,
        -21,
        -20,
        -20,
        -21,
        -23,
        -24,
        -23,
        -23,
        -24,
        -23,
        -24,
        -23,
        -23,
        -24,
        -23,
        -23,
        -23,
        -22,
        -23,
        -19,
        -14,
        -15,
        -14,
        -17,
        -19,
        -19,
        -23,
        -21,
        -21,
        -23,
        -18,
        -24,
        -24,
        -25,
        -51,
        -4,
        183,
        403,
        466,
        298,
        94,
        32,
        22,
        0,
        -2,
        -11,
        -17,
        -14,
        -17,
        -15,
        -15,
        -16,
        -11,
        -11,
        -12,
        -9,
        -8,
        -6,
        -6,
        -3,
        1,
        1,
        4,
        7,
        8,
        11,
        12,
        17,
        18,
        12,
        6,
        -2,
        -9,
        -14,
        -21,
        -21,
        -21,
        -21,
        -21,
        -24,
        -25,
        -23,
        -22,
        -23,
        -25,
        -24,
        -24,
        -27,
        -24,
        -23,
        -24,
        -23,
        -24,
        -24,
        -26,
        -28,
        -25,
        -25,
        -25,
        -24,
        -26,
        -26,
        -26,
        -27,
        -26,
        -27,
        -26,
        -26,
        -26,
        -25,
        -26,
        -25,
        -25,
        -26,
        -20,
        -17,
        -17,
        -20,
        -25,
        -24,
        -24,
        -25,
        -22,
        -27,
        -25,
        -25,
        -28,
        -23,
        -43,
        -38,
        101,
        316,
        411,
        288,
        103,
        32,
        19,
        0,
        -3,
        -7,
        -13,
        -12,
        -15,
        -11,
        -8,
        -12,
        -8,
        -6,
        -6,
        -4,
        -3,
        0,
        2,
        5,
        8,
        9,
        16,
        19,
        19,
        23,
        26,
        27,
        26,
        19,
        11,
        0,
        -8,
        -11,
        -16,
        -18,
        -20,
        -22,
        -20,
        -21,
        -21,
        -20,
        -21,
        -21,
        -23,
        -22,
        -21,
        -23,
        -21,
        -22,
        -22,
        -21,
        -22,
        -21,
        -21,
        -22,
        -21,
        -21,
        -21,
        -24,
        -26,
        -24,
        -25,
        -25,
        -23,
        -25,
        -24,
        -24,
        -24,
        -23,
        -24,
        -20,
        -15,
        -16,
        -14,
        -19,
        -23,
        -21,
        -24,
        -22,
        -25,
        -28,
        -23,
        -25,
        -25,
        -29,
        -52,
        0,
        188,
        400,
        434,
        251,
        74,
        30,
        15,
        -3,
        -4,
        -11,
        -14,
        -10,
        -13,
        -11,
        -11,
        -13,
        -10,
        -9,
        -6,
        -4,
        -3,
        0,
        1,
        3,
        6,
        8,
        12,
        14,
        17,
        22,
        22,
        24,
        22,
        12,
        6,
        -2,
        -10,
        -13,
        -18,
        -21,
        -21,
        -21,
        -20,
        -21,
        -21,
        -20,
        -21,
        -19,
        -21,
        -23,
        -20,
        -20,
        -23,
        -23,
        -24,
        -23,
        -23,
        -23,
        -22,
        -23,
        -22,
        -22,
        -23,
        -22,
        -23,
        -22,
        -22,
        -26,
        -26,
        -26,
        -26,
        -25,
        -26,
        -25,
        -25,
        -25,
        -24,
        -25,
        -21,
        -16,
        -18,
        -15,
        -17,
        -20,
        -19,
        -24,
        -23,
        -23,
        -25,
        -21,
        -25,
        -23,
        -26,
        -54,
        -1,
        191,
        406,
        459,
        286,
        86,
        28,
        19,
        -1,
        -4,
        -9,
        -15,
        -12,
        -14,
        -13,
        -12,
        -14,
        -11,
        -10,
        -9,
        -7,
        -5,
        -4,
        -4,
        -1,
        0,
        3,
        8,
        8,
        11,
        15,
        16,
        19,
        20,
        15,
        8,
        0,
        -6,
        -11,
        -15,
        -19,
        -22,
        -23,
        -22,
        -22,
        -22,
        -21,
        -19,
        -20,
        -22,
        -21,
        -21,
        -21,
        -21,
        -24,
        -25,
        -24,
        -25,
        -24,
        -24,
        -24,
        -24,
        -24,
        -24,
        -24,
        -24,
        -24,
        -24,
        -23,
        -24,
        -23,
        -23,
        -23,
        -23,
        -26,
        -26,
        -22,
        -23,
        -22,
        -22,
        -22,
        -17,
        -14,
        -14,
        -17,
        -22,
        -21,
        -24,
        -23,
        -23,
        -27,
        -23,
        -25,
        -26,
        -26,
        -53,
        -20,
        155,
        377,
        464,
        315,
        104,
        34,
        24,
        0,
        -5,
        -10,
        -17,
        -13,
        -16,
        -15,
        -13,
        -17,
        -12,
        -11,
        -10,
        -8,
        -8,
        -5,
        -5,
        -4,
        0,
        0,
        2,
        6,
        8,
        11,
        13,
        18,
        18,
        13,
        7,
        -1,
        -8,
        -12,
        -17,
        -19,
        -21,
        -24,
        -23,
        -24,
        -23,
        -23,
        -24,
        -23,
        -24,
        -23,
        -23,
        -24,
        -26,
        -28,
        -26,
        -23,
        -26,
        -27,
        -26,
        -27,
        -26,
        -27,
        -26,
        -26,
        -27,
        -25,
        -27,
        -29,
        -26,
        -26,
        -29,
        -29,
        -29,
        -28,
        -29,
        -29,
        -27,
        -26,
        -26,
        -26,
        -23,
        -21,
        -20,
        -20,
        -24,
        -25,
        -26,
        -29,
        -26,
        -28,
        -28,
        -25,
        -30,
        -25,
        -33,
        -53,
        16,
        218,
        392,
        354,
        164,
        43,
        15,
        -4,
        -12,
        -15,
        -23,
        -21,
        -21,
        -23,
        -21,
        -22,
        -22,
        -20,
        -19,
        -16,
        -17,
        -14,
        -11,
        -10,
        -7,
        -5,
        -1,
        0,
        2,
        7,
        8,
        10,
        12,
        6,
        0,
        -8,
        -16,
        -23,
        -31,
        -32,
        -34,
        -36,
        -34,
        -36,
        -38,
        -36,
        -38,
        -39,
        -38,
        -39,
        -37,
        -36,
        -33,
        -35,
        -37,
        -34,
        -34,
        -34,
        -33,
        -34,
        -33,
        -34,
        -34,
        -33,
        -34,
        -33,
        -33,
        -34,
        -33,
        -33,
        -32,
        -32,
        -33,
        -32,
        -33,
        -32,
        -32,
        -32,
        -25,
        -23,
        -25,
        -26,
        -30,
        -30,
        -32,
        -32,
        -31,
        -35,
        -32,
        -32,
        -35,
        -31,
        -53,
        -44,
        94,
        314,
        437,
        331,
        122,
        29,
        16,
        -5,
        -9,
        -12,
        -20,
        -16,
        -18,
        -19,
        -16,
        -17,
        -15,
        -15,
        -13,
        -10,
        -9,
        -5,
        -5,
        -1,
        2,
        2,
        7,
        10,
        10,
        15,
        18,
        20,
        21,
        16,
        10,
        0,
        -8,
        -12,
        -16,
        -20,
        -22,
        -21,
        -22,
        -24,
        -23,
        -23,
        -24,
        -23,
        -23,
        -23,
        -22,
        -23,
        -22,
        -23,
        -23,
        -22,
        -24,
        -25,
        -23,
        -22,
        -23,
        -25,
        -23,
        -21,
        -23,
        -25,
        -25,
        -23,
        -23,
        -23,
        -23,
        -26,
        -25,
        -24,
        -26,
        -24,
        -25,
        -22,
        -15,
        -15,
        -15,
        -17,
        -21,
        -19,
        -22,
        -23,
        -23,
        -26,
        -22,
        -25,
        -24,
        -22,
        -48,
        -10,
        170,
        399,
        486,
        325,
        104,
        34,
        25,
        0,
        -1,
        -6,
        -12,
        -8,
        -12,
        -10,
        -10,
        -12,
        -6,
        -7,
        -7,
        -2,
        -3,
        -1,
        1,
        4,
        6,
        9,
        13,
        14,
        17,
        22,
        22,
        26,
        29,
        22,
        14,
        6,
        -1,
        -5,
        -12,
        -17,
        -16,
        -17,
        -16,
        -16,
        -17,
        -16,
        -16,
        -16,
        -16,
        -16,
        -17,
        -19,
        -17,
        -18,
        -21,
        -19,
        -19,
        -20,
        -19,
        -20,
        -19,
        -19,
        -20,
        -19,
        -19,
        -20,
        -22,
        -24,
        -22,
        -22,
        -22,
        -22,
        -22,
        -19,
        -20,
        -20,
        -16,
        -15,
        -13,
        -14,
        -18,
        -18,
        -20,
        -23,
        -20,
        -23,
        -25,
        -24,
        -27,
        -20,
        -30,
        -50,
        30,
        248,
        446,
        422,
        213,
        60,
        29,
        12,
        -2,
        -2,
        -9,
        -12,
        -11,
        -12,
        -11,
        -11,
        -8,
        -6,
        -8,
        -4,
        -2,
        -1,
        2,
        3,
        5,
        9,
        11,
        14,
        16,
        20,
        25,
        28,
        29,
        25,
        16,
        6,
        -3,
        -9,
        -14,
        -18,
        -21,
        -22,
        -21,
        -21,
        -22,
        -21,
        -25,
        -26,
        -24,
        -26,
        -25,
        -25,
        -25,
        -24,
        -25,
        -25,
        -24,
        -25,
        -24,
        -24,
        -25,
        -23,
        -24,
        -25,
        -26,
        -26,
        -26,
        -29,
        -27,
        -27,
        -29,
        -22,
        -17,
        -18,
        -19,
        -23,
        -23,
        -26,
        -28,
        -24,
        -28,
        -29,
        -26,
        -28,
        -24,
        -36,
        -50,
        39,
        244,
        399,
        336,
        140,
        35,
        19,
        -1,
        -7,
        -7,
        -15,
        -13,
        -15,
        -15,
        -11,
        -14,
        -12,
        -9,
        -9,
        -4,
        -4,
        -1,
        3,
        3,
        8,
        12,
        14,
        20,
        22,
        24,
        27,
        27,
        28,
        23,
        11,
        1,
        -8,
        -14,
        -19,
        -23,
        -22,
        -23,
        -26,
        -27,
        -26,
        -23,
        -22,
        -23,
        -24,
        -23,
        -22,
        -25,
        -26,
        -25,
        -26,
        -25,
        -22,
        -25,
        -25,
        -25,
        -25,
        -25,
        -25,
        -25,
        -25,
        -25,
        -24,
        -25,
        -25,
        -28,
        -28,
        -25,
        -27,
        -25,
        -19,
        -18,
        -19,
        -23,
        -25,
        -23,
        -28,
        -28,
        -26,
        -29,
        -25,
        -27,
        -29,
        -28,
        -52,
        -23,
        146,
        369,
        450,
        298,
        95,
        25,
        16,
        -2,
        -5,
        -12,
        -16,
        -12,
        -15,
        -14,
        -12,
        -15,
        -12,
        -10,
        -9,
        -5,
        -5,
        -1,
        0,
        -2,
        0,
        2,
        6,
        8,
        9,
        12,
        14,
        16,
        15,
        7,
        0,
        -12,
        -20,
        -24,
        -28,
        -32,
        -35,
        -36,
        -35,
        -36,
        -35,
        -35,
        -36,
        -35,
        -35,
        -35,
        -35,
        -39,
        -39,
        -38,
        -39,
        -38,
        -39,
        -38,
        -38,
        -38,
        -38,
        -42,
        -42,
        -38,
        -38,
        -38,
        -41,
        -42,
        -41,
        -42,
        -41,
        -41,
        -41,
        -37,
        -37,
        -33,
        -29,
        -30,
        -28,
        -30,
        -32,
        -32,
        -33,
        -32,
        -36,
        -37,
        -30,
        -34,
        -30,
        -37,
        -58,
        15,
        224,
        427,
        431
    };
    _dataArr = [[NSMutableArray alloc]init];
    for (int i = 0; i < 2345; i ++) {
        [_dataArr addObject:[NSNumber numberWithInt:data[i]]];
    }
}

@end
