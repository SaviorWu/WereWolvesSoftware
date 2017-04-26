#import "DDDatePickerView.h"


// Identifiers of components
#define MONTH ( 1 )
#define YEAR ( 0 )


// Identifies for component views
#define LABEL_TAG 43


@interface DDDatePickerView()

@property (nonatomic, strong) NSIndexPath *todayIndexPath;
@property (nonatomic, strong) NSArray *months;
@property (nonatomic, strong) NSArray *years;
@property (nonatomic, strong) NSArray *days;
-(NSArray *)nameOfYears;
-(NSArray *)nameOfMonths;
-(NSArray *)nameOfDays;
-(CGFloat)componentWidth;

-(UILabel *)labelForComponent:(NSInteger)component selected:(BOOL)selected;
-(NSString *)titleForRow:(NSInteger)row forComponent:(NSInteger)component;
-(NSIndexPath *)todayPath;
-(NSInteger)bigRowMonthCount;
-(NSInteger)bigRowYearCount;
-(NSString *)currentMonthName;
-(NSString *)currentYearName;

@end



@implementation DDDatePickerView

const NSInteger bigRowCount = 1000;
//const NSInteger minYear = 2008;
//const NSInteger maxYear = 2030;
const CGFloat rowHeight = 44.f;
NSInteger numberOfComponents = 3;

@synthesize todayIndexPath;
@synthesize months;
@synthesize years = _years;

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if(self){
        [self awakeFromNib];
    }
    
    return self;
}
- (instancetype)initWithFrame:(CGRect)frame withType:(NSString*)type
{
    self = [super initWithFrame:frame];
    
    if(self){
        self.bHiddenDay = type;
        [self awakeFromNib];
    }
    
    return self;
}
-(void)awakeFromNib
{
    [super awakeFromNib];
    if ([self.bHiddenDay integerValue] == 1)
        numberOfComponents  = 2;
    else
        numberOfComponents  = 3;
    
    self.months = [self nameOfMonths];
    self.years = [self nameOfYears];
    self.days   = [self nameOfDays];
    self.todayIndexPath = [self todayPath];
    
    self.delegate = self;
    self.dataSource = self;
    
    [self selectToday];
    [self reloadAllComponents];
}

-(NSString *)date
{
    NSInteger yearCount = [self.years count];
    NSString *year = [self.years objectAtIndex:([self selectedRowInComponent:0] % yearCount)];
    
    NSInteger monthCount = [self.months count];
    NSString *month = [self.months objectAtIndex:([self selectedRowInComponent:1] % monthCount)];
    
    if ([self.bHiddenDay integerValue] == 1)
    {
        NSLog(@"year:%@  month:%@",year,month);
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        NSString* timeStr = [NSString stringWithFormat:@"%@:%@",year, month];
        [formatter setDateFormat:@"YYYY:MM"];
        NSDate* date = [formatter dateFromString:timeStr];
        return timeStr;
    }
    else
    {
        NSInteger dayCount = [self.days count];
        NSString *day = [self.days objectAtIndex:([self selectedRowInComponent:2] % dayCount)];
        NSLog(@"year:%@  month:%@ day:%@",year,month,day);
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        NSString* timeStr = [NSString stringWithFormat:@"%@:%@:%@",year, month,day ];
        [formatter setDateFormat:@"YYYY:MM:dd"];
        NSDate* date = [formatter dateFromString:timeStr];
        return timeStr;
    }
}

#pragma mark - UIPickerViewDelegate
-(CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component
{
    return [self componentWidth];
}

-(UIView *)pickerView: (UIPickerView *)pickerView
           viewForRow: (NSInteger)row
         forComponent: (NSInteger)component
          reusingView: (UIView *)view
{
    BOOL selected = NO;
    switch (component) {
        case 0:
        {
            NSLog(@"年");
        }
            break;
        case 1:
        {
            NSLog(@"月");
        }
            break;
        case 2:
        {
            NSLog(@"日");
        }
            break;
        default:
            break;
    }
//    if(component == MONTH)
//    {
//        NSInteger monthCount = [self.months count];
//        NSString *monthName = [self.months objectAtIndex:(row % monthCount)];
//        NSString *currentMonthName = [self currentMonthName];
////        if([monthName isEqualToString:currentMonthName] == YES)
////        {
////            selected = YES;
////        }
//    }
//    else
//    {
//        NSInteger yearCount = [self.years count];
//        NSString *yearName = [self.years objectAtIndex:(row % yearCount)];
//        NSString *currenrYearName  = [self currentYearName];
////        if([yearName isEqualToString:currenrYearName] == YES)
////        {
////            selected = YES;
////        }
//    }
    
    UILabel *returnView = nil;
    if(view.tag == LABEL_TAG)
    {
        returnView = (UILabel *)view;
    }
    else
    {
        returnView = [self labelForComponent: component selected: selected];
    }
    
    returnView.textColor = selected ? [UIColor blueColor] : [UIColor blackColor];
    returnView.text = [self titleForRow:row forComponent:component];
    return returnView;
}

-(CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
    return rowHeight;
}

#pragma mark - UIPickerViewDataSource
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    if ([self.bHiddenDay integerValue] == 1)
        numberOfComponents  = 2;
    else
        numberOfComponents  = 3;
    return numberOfComponents;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    switch (component) {
        case 0:
        {
            return [self bigRowYearCount];
        }
            break;
        case 1:
        {
            return [self bigRowMonthCount];
        }
            break;
        case 2:
        {
            return [self bigRowDayCount];
        }
            break;
        default:
            break;
    }
    return 0;
}

#pragma mark - Util
-(NSInteger)bigRowDayCount
{
    return 31;
}
-(NSInteger)bigRowMonthCount
{
    return [self.months count]  * bigRowCount;
}

-(NSInteger)bigRowYearCount
{
    return [self.years count];
}

-(CGFloat)componentWidth
{
    return (self.bounds.size.width - 80) / numberOfComponents;
}

-(NSString *)titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    
    switch (component) {
        case 0:
        {
            NSInteger yearCount = [self.years count];
            return [NSString stringWithFormat:@"%@年",[self.years objectAtIndex:(row % yearCount)]];
        }
            break;
        case 1:
        {
            NSInteger monthCount = [self.months count];
            return [NSString stringWithFormat:@"%@月",[self.months objectAtIndex:(row % monthCount)]];
        }
            break;
        case 2:
        {
            return [NSString stringWithFormat:@"%@日",[self.days objectAtIndex:row]];
        }
            break;
        default:
            break;
    }
    return @"";
}

-(UILabel *)labelForComponent:(NSInteger)component selected:(BOOL)selected
{
    CGRect frame = CGRectMake(0.f, 0.f, [self componentWidth],rowHeight);
    
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.textAlignment = NSTextAlignmentCenter;
    label.backgroundColor = [UIColor clearColor];
    label.textColor = selected ? [UIColor blueColor] : [UIColor blackColor];
    label.font = [UIFont systemFontOfSize:20];
    label.userInteractionEnabled = NO;
    
    label.tag = LABEL_TAG;
    
    return label;
}

-(NSArray *)nameOfMonths
{
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    return [dateFormatter veryShortMonthSymbols];
}
-(NSArray *)nameOfDays
{
    NSMutableArray *days = [NSMutableArray array];
    
    for (int iLoop = 1; iLoop < 32; iLoop++) {
        [days addObject:[NSString stringWithFormat:@"%d",iLoop]];
    }
    return days;
}
-(NSArray *)nameOfYears
{
    NSMutableArray *years = [NSMutableArray array];
    
    int yy = [[[[self monthAndYear:[NSDate date]] componentsSeparatedByString:@"-"] objectAtIndex:0] intValue];
    
    for(NSInteger year = yy - 50; year <= yy + 50; year++)
    {
        NSString *yearStr = [NSString stringWithFormat:@"%li", (long)year];
        [years addObject:yearStr];
    }
    return years;
}

-(void)selectToday
{
    [self selectRow: self.todayIndexPath.row
        inComponent: MONTH
           animated: NO];
    
    [self selectRow: self.todayIndexPath.section
        inComponent: YEAR
           animated: NO];
}

-(NSIndexPath *)todayPath // row - month ; section - year
{
    CGFloat row = 0.f;
    CGFloat section = 0.f;
    
    NSString *month = [self currentMonthName];
    NSString *year  = [self currentYearName];
    
    
    month = [NSString stringWithFormat:@"%d",[month intValue]];
    
    //set table on the middle
    for(NSString *cellMonth in self.months)
    {
        if([cellMonth isEqualToString:month])
        {
            row = [self.months indexOfObject:cellMonth];
            row = row + [self bigRowMonthCount] / 2;
            break;
        }
    }
    
    for(NSString *cellYear in self.years)
    {
        if([cellYear isEqualToString:year])
        {
            section = [self.years indexOfObject:cellYear];
            section = section;
            break;
        }
    }
    
    return [NSIndexPath indexPathForRow:row inSection:section];
}

-(NSString *)currentMonthName
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"MM"];
    return [formatter stringFromDate:[NSDate date]];
}

-(NSString *)currentYearName
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy"];
    return [formatter stringFromDate:[NSDate date]];
}

- (NSString *)monthAndYear:(NSDate *)date
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM"];
    NSString *destDateString = [dateFormatter stringFromDate:date];
    
    return destDateString;
    
}

@end
