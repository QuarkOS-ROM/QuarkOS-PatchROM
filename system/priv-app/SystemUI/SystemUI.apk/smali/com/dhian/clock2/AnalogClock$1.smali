.class Lcom/dhian/clock2/AnalogClock$1;
.super Landroid/content/BroadcastReceiver;
.source "AnalogClock.java"


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

    iput-object p1, p0, Lcom/dhian/clock2/AnalogClock$1;->this$0:Lcom/dhian/clock2/AnalogClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "time-zone"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dhian/clock2/AnalogClock$1;->this$0:Lcom/dhian/clock2/AnalogClock;

    new-instance v2, Landroid/text/format/Time;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    # setter for: Lcom/dhian/clock2/AnalogClock;->mCalendar:Landroid/text/format/Time;
    invoke-static {v1, v2}, Lcom/dhian/clock2/AnalogClock;->access$002(Lcom/dhian/clock2/AnalogClock;Landroid/text/format/Time;)Landroid/text/format/Time;

    :cond_0
    iget-object v1, p0, Lcom/dhian/clock2/AnalogClock$1;->this$0:Lcom/dhian/clock2/AnalogClock;

    # invokes: Lcom/dhian/clock2/AnalogClock;->onTimeChanged()V
    invoke-static {v1}, Lcom/dhian/clock2/AnalogClock;->access$100(Lcom/dhian/clock2/AnalogClock;)V

    iget-object v1, p0, Lcom/dhian/clock2/AnalogClock$1;->this$0:Lcom/dhian/clock2/AnalogClock;

    invoke-virtual {v1}, Lcom/dhian/clock2/AnalogClock;->invalidate()V

    return-void
.end method
