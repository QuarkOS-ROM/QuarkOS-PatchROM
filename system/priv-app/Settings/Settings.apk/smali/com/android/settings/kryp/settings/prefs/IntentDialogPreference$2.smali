.class Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$2;
.super Landroid/os/AsyncTask;
.source "IntentDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->createList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$2;->this$0:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$2;->this$0:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$2;->this$0:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;

    # invokes: Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->createAppList()Ljava/util/List;
    invoke-static {v1}, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->access$000(Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->mAppList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$2;->this$0:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;

    iget-object v0, v0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->mAppList:Ljava/util/List;

    new-instance v1, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$2$1;

    invoke-direct {v1, p0}, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$2$1;-><init>(Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$2;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$2;->this$0:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;

    new-instance v1, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter;

    iget-object v2, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$2;->this$0:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;

    iget-object v3, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$2;->this$0:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;

    iget-object v3, v3, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->mAppList:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter;-><init>(Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;Ljava/util/List;)V

    iput-object v1, v0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->appListAdapter:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter;

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$2;->this$0:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;

    iget-object v0, v0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->pb:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$2;->this$0:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;

    iget-object v0, v0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->lv:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$2;->this$0:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;

    iget-object v1, v1, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->appListAdapter:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$2;->this$0:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;

    iget-object v0, v0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->pb:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$2;->this$0:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;

    iget-object v0, v0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->refreshDrawableState()V

    return-void
.end method
