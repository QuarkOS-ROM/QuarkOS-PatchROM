.class public final Lcom/dhian/clock/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dhian/clock/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AnalogClock:[I

.field public static final AnalogClock_jewelColor:I = 0x2

.field public static final AnalogClock_jewelOffset:I = 0x1

.field public static final AnalogClock_jewelRadius:I = 0x0

.field public static final GlowPadView:[I

.field public static final GlowPadView_alwaysTrackFinger:I = 0xd

.field public static final GlowPadView_android_gravity:I = 0x0

.field public static final GlowPadView_directionDescriptions:I = 0x3

.field public static final GlowPadView_feedbackCount:I = 0xc

.field public static final GlowPadView_glowRadius:I = 0x9

.field public static final GlowPadView_handleDrawable:I = 0x4

.field public static final GlowPadView_innerRadius:I = 0x7

.field public static final GlowPadView_outerRadius:I = 0x8

.field public static final GlowPadView_outerRingDrawable:I = 0x5

.field public static final GlowPadView_pointDrawable:I = 0x6

.field public static final GlowPadView_snapMargin:I = 0xb

.field public static final GlowPadView_targetDescriptions:I = 0x2

.field public static final GlowPadView_targetDrawables:I = 0x1

.field public static final GlowPadView_vibrationDuration:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dhian/clock/R$styleable;->AnalogClock:[I

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/dhian/clock/R$styleable;->GlowPadView:[I

    return-void

    :array_0
    .array-data 4
        0x7f01000d
        0x7f01000e
        0x7f01000f
    .end array-data

    :array_1
    .array-data 4
        0x10100af
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
        0x7f01000c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
