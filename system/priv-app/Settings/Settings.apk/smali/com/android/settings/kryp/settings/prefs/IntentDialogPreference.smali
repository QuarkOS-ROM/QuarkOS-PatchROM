.class public Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;
.super Landroid/preference/DialogPreference;
.source "IntentDialogPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter;
    }
.end annotation


# instance fields
.field ai:Landroid/content/pm/ApplicationInfo;

.field appIcon:Landroid/graphics/drawable/Drawable;

.field appListAdapter:Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$AppListAdapter;

.field c:Landroid/content/Context;

.field isSearch:Z

.field loadApps:Landroid/os/AsyncTask;
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
.end field

.field lv:Landroid/widget/ListView;

.field mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field mSummary:Ljava/lang/String;

.field mValue:Ljava/lang/String;

.field pb:Landroid/widget/ProgressBar;

.field pm:Landroid/content/pm/PackageManager;

.field prefAppIcon:Landroid/widget/ImageView;

.field search:Landroid/widget/EditText;

.field separator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/kryp/settings/ComotID;->init(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->pm:Landroid/content/pm/PackageManager;

    const-string v0, "setSeparatorString"

    const-string v1, "/"

    invoke-direct {p0, p2, v2, v0, v1}, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->getStringForAttr(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->separator:Ljava/lang/String;

    const-string v0, "includeSearch"

    const/4 v1, 0x0

    invoke-interface {p2, v2, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->isSearch:Z

    const-string v0, "intent_dialog_layout"

    const-string v1, "layout"

    invoke-static {v0, v1}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->setDialogLayoutResource(I)V

    const-string v0, "intent_preference_app_icon"

    const-string v1, "layout"

    invoke-static {v0, v1}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->createAppList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private createAppList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->pm:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    :try_start_0
    iget-object v6, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->pm:Landroid/content/pm/PackageManager;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private createList()V
    .locals 2

    new-instance v0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$2;-><init>(Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->loadApps:Landroid/os/AsyncTask;

    return-void
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->separator:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v2, v3, v5

    const/4 v0, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->pm:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getStringForAttr(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1, p2, p3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p4

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v2, v3, v4

    :try_start_0
    iget-object v4, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->appIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v4, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->appIcon:Landroid/graphics/drawable/Drawable;

    return-object v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "ic_apps"

    const-string v6, "drawable"

    invoke-static {v5, v6}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->appIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    const-string v0, "appsList"

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->lv:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->lv:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->lv:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->lv:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->lv:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->lv:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->lv:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    const-string v0, "progressBar"

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->pb:Landroid/widget/ProgressBar;

    iget-boolean v0, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->isSearch:Z

    if-eqz v0, :cond_0

    const-string v0, "searchApp"

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->search:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->search:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->createList()V

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->search:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference$1;-><init>(Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->createList()V

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->getAppIcon()Landroid/graphics/drawable/Drawable;

    const-string v0, "iconForApp"

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->prefAppIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->prefAppIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->loadApps:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->loadApps:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->loadApps:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->loadApps:Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v8, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->pm:Landroid/content/pm/PackageManager;

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v1, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v5, "%1$s%2$s%3$s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v7, v6, v8

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->separator:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v5, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->mSummary:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->persistString(Ljava/lang/String;)Z

    iput-object v2, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->mValue:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_0
.end method

.method public onParentChanged(Landroid/preference/Preference;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onParentChanged(Landroid/preference/Preference;Z)V

    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->mSummary:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->persistString(Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setDefaultSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->mSummary:Ljava/lang/String;

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const-string v4, "colorAccent"

    const-string v5, "attr"

    invoke-static {v4, v5}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Lcom/android/settings/kryp/settings/prefs/IntentDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
