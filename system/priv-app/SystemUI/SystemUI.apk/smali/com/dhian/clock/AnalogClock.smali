.class public Lcom/dhian/clock/AnalogClock;
.super Landroid/view/View;
.source "AnalogClock.java"


# instance fields
.field private mAttached:Z

.field private mCalendar:Landroid/text/format/Time;

.field private mChanged:Z

.field private final mClockTick:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private final mDial:Landroid/graphics/drawable/Drawable;

.field private final mDialHeight:I

.field private final mDialWidth:I

.field private final mDotOffset:F

.field private mDotPaint:Landroid/graphics/Paint;

.field private final mDotRadius:F

.field private final mHandler:Landroid/os/Handler;

.field private mHour:F

.field private final mHourHand:Landroid/graphics/drawable/Drawable;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mMinuteHand:Landroid/graphics/drawable/Drawable;

.field private mMinutes:F

.field private mNoSeconds:Z

.field private final mSecondHand:Landroid/graphics/drawable/Drawable;

.field private mSeconds:F

.field private mTimeZoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dhian/clock/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dhian/clock/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/dhian/clock/AnalogClock;->mHandler:Landroid/os/Handler;

    iput-boolean v5, p0, Lcom/dhian/clock/AnalogClock;->mNoSeconds:Z

    new-instance v3, Lcom/dhian/clock/AnalogClock$1;

    invoke-direct {v3, p0}, Lcom/dhian/clock/AnalogClock$1;-><init>(Lcom/dhian/clock/AnalogClock;)V

    iput-object v3, p0, Lcom/dhian/clock/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/dhian/clock/AnalogClock$2;

    invoke-direct {v3, p0}, Lcom/dhian/clock/AnalogClock$2;-><init>(Lcom/dhian/clock/AnalogClock;)V

    iput-object v3, p0, Lcom/dhian/clock/AnalogClock;->mClockTick:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/dhian/clock/AnalogClock;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/dhian/clock/AnalogClock;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020628      ## public drawable somc_themeable_analog_clock_face

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/dhian/clock/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    const v3, 0x7f020629      ## public drawable somc_themeable_analog_clock_hour_hand

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/dhian/clock/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    const v3, 0x7f02062a      ## public drawable somc_themeable_analog_clock_minute_hand

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/dhian/clock/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    const v3, 0x7f02062b      ## public drawable somc_themeable_analog_clock_second_hand

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/dhian/clock/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/dhian/clock/R$styleable;->AnalogClock:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lcom/dhian/clock/AnalogClock;->mDotRadius:F

    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lcom/dhian/clock/AnalogClock;->mDotOffset:F

    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/dhian/clock/AnalogClock;->mDotPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/dhian/clock/AnalogClock;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    iput-object v3, p0, Lcom/dhian/clock/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget-object v3, p0, Lcom/dhian/clock/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Lcom/dhian/clock/AnalogClock;->mDialWidth:I

    iget-object v3, p0, Lcom/dhian/clock/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Lcom/dhian/clock/AnalogClock;->mDialHeight:I

    return-void
.end method

.method static synthetic access$002(Lcom/dhian/clock/AnalogClock;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 0

    iput-object p1, p0, Lcom/dhian/clock/AnalogClock;->mCalendar:Landroid/text/format/Time;

    return-object p1
.end method

.method static synthetic access$100(Lcom/dhian/clock/AnalogClock;)V
    .locals 0

    invoke-direct {p0}, Lcom/dhian/clock/AnalogClock;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/dhian/clock/AnalogClock;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/dhian/clock/AnalogClock;->mClockTick:Ljava/lang/Runnable;

    return-object v0
.end method

.method private drawHand(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIFZ)V
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v2, p3

    int-to-float v3, p4

    invoke-virtual {p1, p5, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    if-eqz p6, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v2, v1, 0x2

    sub-int v2, p3, v2

    div-int/lit8 v3, v0, 0x2

    sub-int v3, p4, v3

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, p3

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v5, p4

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private onTimeChanged()V
    .locals 6

    const/high16 v5, 0x42700000    # 60.0f

    iget-object v3, p0, Lcom/dhian/clock/AnalogClock;->mCalendar:Landroid/text/format/Time;

    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    iget-object v3, p0, Lcom/dhian/clock/AnalogClock;->mTimeZoneId:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/dhian/clock/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget-object v4, p0, Lcom/dhian/clock/AnalogClock;->mTimeZoneId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/dhian/clock/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v0, v3, Landroid/text/format/Time;->hour:I

    iget-object v3, p0, Lcom/dhian/clock/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v1, v3, Landroid/text/format/Time;->minute:I

    iget-object v3, p0, Lcom/dhian/clock/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v2, v3, Landroid/text/format/Time;->second:I

    int-to-float v3, v2

    iput v3, p0, Lcom/dhian/clock/AnalogClock;->mSeconds:F

    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/dhian/clock/AnalogClock;->mMinutes:F

    int-to-float v3, v0

    iget v4, p0, Lcom/dhian/clock/AnalogClock;->mMinutes:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/dhian/clock/AnalogClock;->mHour:F

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/dhian/clock/AnalogClock;->mChanged:Z

    iget-object v3, p0, Lcom/dhian/clock/AnalogClock;->mCalendar:Landroid/text/format/Time;

    invoke-direct {p0, v3}, Lcom/dhian/clock/AnalogClock;->updateContentDescription(Landroid/text/format/Time;)V

    return-void
.end method

.method private updateContentDescription(Landroid/text/format/Time;)V
    .locals 6

    const/16 v1, 0x81

    iget-object v2, p0, Lcom/dhian/clock/AnalogClock;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    const/16 v5, 0x81

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dhian/clock/AnalogClock;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public enableSeconds(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/dhian/clock/AnalogClock;->mNoSeconds:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v1, p0, Lcom/dhian/clock/AnalogClock;->mAttached:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dhian/clock/AnalogClock;->mAttached:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dhian/clock/AnalogClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/dhian/clock/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/dhian/clock/AnalogClock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, p0, Lcom/dhian/clock/AnalogClock;->mCalendar:Landroid/text/format/Time;

    invoke-direct {p0}, Lcom/dhian/clock/AnalogClock;->onTimeChanged()V

    iget-object v1, p0, Lcom/dhian/clock/AnalogClock;->mClockTick:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/dhian/clock/AnalogClock;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/dhian/clock/AnalogClock;->mAttached:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dhian/clock/AnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/dhian/clock/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/dhian/clock/AnalogClock;->mClockTick:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/dhian/clock/AnalogClock;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dhian/clock/AnalogClock;->mAttached:Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v6, p0, Lcom/dhian/clock/AnalogClock;->mChanged:Z

    if-eqz v6, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dhian/clock/AnalogClock;->mChanged:Z

    :cond_0
    invoke-virtual {p0}, Lcom/dhian/clock/AnalogClock;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/dhian/clock/AnalogClock;->getHeight()I

    move-result v7

    div-int/lit8 v3, v8, 0x2

    div-int/lit8 v4, v7, 0x2

    iget-object v9, p0, Lcom/dhian/clock/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    const/4 v12, 0x0

    if-lt v8, v13, :cond_1

    if-ge v7, v10, :cond_2

    :cond_1
    const/4 v12, 0x1

    int-to-float v0, v8

    int-to-float v1, v13

    div-float/2addr v0, v1

    int-to-float v1, v7

    int-to-float v2, v10

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v0, v3

    int-to-float v1, v4

    invoke-virtual {p1, v11, v11, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_2
    if-eqz v6, :cond_3

    div-int/lit8 v0, v13, 0x2

    sub-int v0, v3, v0

    div-int/lit8 v1, v10, 0x2

    sub-int v1, v4, v1

    div-int/lit8 v2, v13, 0x2

    add-int/2addr v2, v3

    div-int/lit8 v5, v10, 0x2

    add-int/2addr v5, v4

    invoke-virtual {v9, v0, v1, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/dhian/clock/AnalogClock;->mDotRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/dhian/clock/AnalogClock;->mDotPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_4

    int-to-float v0, v3

    div-int/lit8 v1, v10, 0x2

    sub-int v1, v4, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/dhian/clock/AnalogClock;->mDotOffset:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/dhian/clock/AnalogClock;->mDotRadius:F

    iget-object v5, p0, Lcom/dhian/clock/AnalogClock;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_4
    iget-object v2, p0, Lcom/dhian/clock/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/dhian/clock/AnalogClock;->mHour:F

    const/high16 v1, 0x41400000    # 12.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/dhian/clock/AnalogClock;->drawHand(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIFZ)V

    iget-object v2, p0, Lcom/dhian/clock/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/dhian/clock/AnalogClock;->mMinutes:F

    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/dhian/clock/AnalogClock;->drawHand(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIFZ)V

    iget-boolean v0, p0, Lcom/dhian/clock/AnalogClock;->mNoSeconds:Z

    if-nez v0, :cond_5

    iget-object v2, p0, Lcom/dhian/clock/AnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/dhian/clock/AnalogClock;->mSeconds:F

    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/dhian/clock/AnalogClock;->drawHand(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIFZ)V

    :cond_5
    if-eqz v12, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    const/4 v9, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v5, :cond_0

    iget v7, p0, Lcom/dhian/clock/AnalogClock;->mDialWidth:I

    if-ge v6, v7, :cond_0

    int-to-float v7, v6

    iget v8, p0, Lcom/dhian/clock/AnalogClock;->mDialWidth:I

    int-to-float v8, v8

    div-float v0, v7, v8

    :cond_0
    if-eqz v1, :cond_1

    iget v7, p0, Lcom/dhian/clock/AnalogClock;->mDialHeight:I

    if-ge v2, v7, :cond_1

    int-to-float v7, v2

    iget v8, p0, Lcom/dhian/clock/AnalogClock;->mDialHeight:I

    int-to-float v8, v8

    div-float v4, v7, v8

    :cond_1
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v7, p0, Lcom/dhian/clock/AnalogClock;->mDialWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    invoke-static {v7, p1, v9}, Lcom/dhian/clock/AnalogClock;->resolveSizeAndState(III)I

    move-result v7

    iget v8, p0, Lcom/dhian/clock/AnalogClock;->mDialHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-static {v8, p2, v9}, Lcom/dhian/clock/AnalogClock;->resolveSizeAndState(III)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/dhian/clock/AnalogClock;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dhian/clock/AnalogClock;->mChanged:Z

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dhian/clock/AnalogClock;->mTimeZoneId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/dhian/clock/AnalogClock;->onTimeChanged()V

    return-void
.end method
