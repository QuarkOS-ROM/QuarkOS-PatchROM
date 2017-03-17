.class Lcom/android/settings/kryp/settings/prefs/MyListPreference$1;
.super Ljava/lang/Object;
.source "MyListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/kryp/settings/prefs/MyListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/kryp/settings/prefs/MyListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/kryp/settings/prefs/MyListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/kryp/settings/prefs/MyListPreference$1;->this$0:Lcom/android/settings/kryp/settings/prefs/MyListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/MyListPreference$1;->this$0:Lcom/android/settings/kryp/settings/prefs/MyListPreference;

    # setter for: Lcom/android/settings/kryp/settings/prefs/MyListPreference;->mClickedDialogEntryIndex:I
    invoke-static {v0, p2}, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->access$002(Lcom/android/settings/kryp/settings/prefs/MyListPreference;I)I

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/MyListPreference$1;->this$0:Lcom/android/settings/kryp/settings/prefs/MyListPreference;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->onClick(Landroid/content/DialogInterface;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
