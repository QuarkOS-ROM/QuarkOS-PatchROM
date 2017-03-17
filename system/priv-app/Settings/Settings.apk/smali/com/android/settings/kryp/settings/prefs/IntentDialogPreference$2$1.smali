.class Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$2$1;
.super Ljava/lang/Object;
.source "IntentDialogPreference.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$2;


# direct methods
.method constructor <init>(Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$2$1;->this$1:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I
    .locals 3

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$2$1;->this$1:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$2;

    iget-object v1, v1, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$2;->this$0:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;

    iget-object v1, v1, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$2$1;->this$1:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$2;

    iget-object v2, v2, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$2;->this$0:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;

    iget-object v2, v2, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    check-cast p2, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$2$1;->compare(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I

    move-result v0

    return v0
.end method
