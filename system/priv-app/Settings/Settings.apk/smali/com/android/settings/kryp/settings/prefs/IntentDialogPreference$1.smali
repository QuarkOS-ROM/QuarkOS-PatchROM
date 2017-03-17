.class Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$1;
.super Ljava/lang/Object;
.source "IntentDialogPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$1;->this$0:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$1;->this$0:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;

    iget-object v0, v0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->appListAdapter:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    return-void
.end method
