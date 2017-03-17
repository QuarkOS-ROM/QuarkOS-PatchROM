.class public Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "IntentDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mAppIcon:Landroid/widget/ImageView;

.field public mAppNames:Landroid/widget/TextView;

.field public mAppPackage:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter$ViewHolder;->this$1:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
