.class Lcom/dhian/clock2/AnalogClock$2;
.super Ljava/lang/Object;
.source "AnalogClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dhian/clock2/AnalogClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dhian/clock2/AnalogClock;


# direct methods
.method constructor <init>(Lcom/dhian/clock2/AnalogClock;)V
    .locals 0

    iput-object p1, p0, Lcom/dhian/clock2/AnalogClock$2;->this$0:Lcom/dhian/clock2/AnalogClock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/dhian/clock2/AnalogClock$2;->this$0:Lcom/dhian/clock2/AnalogClock;

    # invokes: Lcom/dhian/clock2/AnalogClock;->onTimeChanged()V
    invoke-static {v0}, Lcom/dhian/clock2/AnalogClock;->access$100(Lcom/dhian/clock2/AnalogClock;)V

    iget-object v0, p0, Lcom/dhian/clock2/AnalogClock$2;->this$0:Lcom/dhian/clock2/AnalogClock;

    invoke-virtual {v0}, Lcom/dhian/clock2/AnalogClock;->invalidate()V

    iget-object v0, p0, Lcom/dhian/clock2/AnalogClock$2;->this$0:Lcom/dhian/clock2/AnalogClock;

    iget-object v1, p0, Lcom/dhian/clock2/AnalogClock$2;->this$0:Lcom/dhian/clock2/AnalogClock;

    # getter for: Lcom/dhian/clock2/AnalogClock;->mClockTick:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/dhian/clock2/AnalogClock;->access$200(Lcom/dhian/clock2/AnalogClock;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/dhian/clock2/AnalogClock;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
