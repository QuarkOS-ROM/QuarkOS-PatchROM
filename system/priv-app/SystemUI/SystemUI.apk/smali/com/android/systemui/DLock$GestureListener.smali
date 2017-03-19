.class Lcom/android/systemui/DLock$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/DLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/DLock;


# direct methods
.method private constructor <init>(Lcom/android/systemui/DLock;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/DLock$GestureListener;->this$0:Lcom/android/systemui/DLock;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/DLock;Lcom/android/systemui/DLock$GestureListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/DLock$GestureListener;-><init>(Lcom/android/systemui/DLock;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v6, p0, Lcom/android/systemui/DLock$GestureListener;->this$0:Lcom/android/systemui/DLock;

    iget-boolean v6, v6, Lcom/android/systemui/DLock;->isDoubleClick:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/DLock$GestureListener;->this$0:Lcom/android/systemui/DLock;

    iget-wide v6, v6, Lcom/android/systemui/DLock;->lastTouchUpTime:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x1f4

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    iget-object v5, p0, Lcom/android/systemui/DLock$GestureListener;->this$0:Lcom/android/systemui/DLock;

    iget-object v6, p0, Lcom/android/systemui/DLock$GestureListener;->this$0:Lcom/android/systemui/DLock;

    iget-object v6, v6, Lcom/android/systemui/DLock;->c:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "double_tap_sb_sleep"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/android/systemui/DLock;->d_tap:I

    iget-object v5, p0, Lcom/android/systemui/DLock$GestureListener;->this$0:Lcom/android/systemui/DLock;

    iput-boolean v4, v5, Lcom/android/systemui/DLock;->isDoubleClick:Z

    iget-object v5, p0, Lcom/android/systemui/DLock$GestureListener;->this$0:Lcom/android/systemui/DLock;

    iput-wide v0, v5, Lcom/android/systemui/DLock;->lastTouchUpTime:J

    iget-object v5, p0, Lcom/android/systemui/DLock$GestureListener;->this$0:Lcom/android/systemui/DLock;

    iget-object v5, v5, Lcom/android/systemui/DLock;->c:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iget-object v5, p0, Lcom/android/systemui/DLock$GestureListener;->this$0:Lcom/android/systemui/DLock;

    iget v5, v5, Lcom/android/systemui/DLock;->d_tap:I

    if-lt v5, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager;->goToSleep(J)V

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/DLock$GestureListener;->this$0:Lcom/android/systemui/DLock;

    iput-wide v0, v4, Lcom/android/systemui/DLock;->lastTouchUpTime:J

    iget-object v4, p0, Lcom/android/systemui/DLock$GestureListener;->this$0:Lcom/android/systemui/DLock;

    iput-boolean v5, v4, Lcom/android/systemui/DLock;->isDoubleClick:Z

    const-wide/16 v6, 0xc8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v4, v5

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
