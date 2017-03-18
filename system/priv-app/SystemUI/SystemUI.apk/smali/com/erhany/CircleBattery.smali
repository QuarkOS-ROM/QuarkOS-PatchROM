.class public Lcom/erhany/CircleBattery;
.super Landroid/widget/RelativeLayout;
.source "CircleBattery.java"


# instance fields
.field mBatteryLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/erhany/CircleBattery;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/erhany/CircleBattery$1;

    invoke-direct {v1, p0, v0}, Lcom/erhany/CircleBattery$1;-><init>(Lcom/erhany/CircleBattery;Landroid/widget/ImageView;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
