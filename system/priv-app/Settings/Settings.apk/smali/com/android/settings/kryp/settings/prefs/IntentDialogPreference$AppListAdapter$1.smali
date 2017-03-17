.class Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter$1;
.super Landroid/widget/Filter;
.source "IntentDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter$1;->this$1:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6

    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter$1;->this$1:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter;

    iget-object v4, v4, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter$1;->this$1:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter;

    iget-object v4, v4, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter$1;->this$1:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter;

    iget-object v5, v5, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter;->this$0:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;

    iget-object v5, v5, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter$1;->this$1:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter;

    iget-object v4, v4, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v1, Landroid/widget/Filter$FilterResults;->count:I

    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter$1;->this$1:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iput-object v0, v1, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter;->filteredList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter$1;->this$1:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter;->notifyDataSetChanged()V

    return-void
.end method
