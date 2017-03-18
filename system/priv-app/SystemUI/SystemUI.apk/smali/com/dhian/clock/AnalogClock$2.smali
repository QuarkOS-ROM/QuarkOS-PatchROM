.class Lcom/dhian/clock/AnalogClock$2;
.super Ljava/lang/Object;
.source "AnalogClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dhian/clock/AnalogClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dhian/clock/AnalogClock;


# direct methods
.method constructor <init>(Lcom/dhian/clock/AnalogClock;)V
    .locals 0

    iput-object p1, p0, Lcom/dhian/clock/AnalogClock$2;->this$0:Lcom/dhian/clock/AnalogClock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/dhian/clock/AnalogClock$2;->this$0:Lcom/dhian/clock/AnalogClock;

    # invokes: Lcom/dhian/clock/AnalogClock;->onTimeChanged()V
    invoke-static {v0}, Lcom/dhian/clock/AnalogClock;->access$100(Lcom/dhian/clock/AnalogClock;)V

    iget-object v0, p0, Lcom/dhian/clock/AnalogClock$2;->this$0:Lcom/dhian/clock/AnalogClock;

    invoke-virtual {v0}, Lcom/dhian/clock/AnalogClock;->invalidate()V

    iget-object v0, p0, Lcom/dhian/clock/AnalogClock$2;->this$0:Lcom/dhian/clock/AnalogClock;

    iget-object v1, p0, Lcom/dhian/clock/AnalogClock$2;->this$0:Lcom/dhian/clock/AnalogClock;

    # getter for: Lcom/dhian/clock/AnalogClock;->mClockTick:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/dhian/clock/AnalogClock;->access$200(Lcom/dhian/clock/AnalogClock;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/dhian/clock/AnalogClock;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
