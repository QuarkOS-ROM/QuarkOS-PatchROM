.class public Lcom/android/settings/rz/SystemappRemover;
.super Landroid/app/Fragment;
.source "SystemappRemover.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/rz/SystemappRemover$Deleter;
    }
.end annotation


# instance fields
.field private final DELETE_DIALOG:I

.field private final DELETE_MULTIPLE_DIALOG:I

.field private final STARTUP_DIALOG:I

.field protected adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected dos:Ljava/io/DataOutputStream;

.field private mSysApp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private startup:Z

.field protected superUser:Ljava/lang/Process;

.field public final systemPath:Ljava/lang/String;

.field public final systemPrivPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput v1, p0, Lcom/android/settings/rz/SystemappRemover;->STARTUP_DIALOG:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/rz/SystemappRemover;->DELETE_DIALOG:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/rz/SystemappRemover;->DELETE_MULTIPLE_DIALOG:I

    iput-boolean v1, p0, Lcom/android/settings/rz/SystemappRemover;->startup:Z

    const-string v0, "/system/app/"

    iput-object v0, p0, Lcom/android/settings/rz/SystemappRemover;->systemPath:Ljava/lang/String;

    const-string v0, "/system/priv-app/"

    iput-object v0, p0, Lcom/android/settings/rz/SystemappRemover;->systemPrivPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/rz/SystemappRemover;ILjava/lang/String;Landroid/widget/ArrayAdapter;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/rz/SystemappRemover;->showDialog(ILjava/lang/String;Landroid/widget/ArrayAdapter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/rz/SystemappRemover;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/rz/SystemappRemover;->mSysApp:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/rz/SystemappRemover;Ljava/util/ArrayList;Landroid/widget/ArrayAdapter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/rz/SystemappRemover;->selectDialog(Ljava/util/ArrayList;Landroid/widget/ArrayAdapter;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/rz/SystemappRemover;)S
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/rz/SystemappRemover;->sdAvailable()S

    move-result v0

    return v0
.end method

.method private combine([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    array-length v2, p1

    array-length v3, p2

    add-int v0, v2, v3

    new-array v1, v0, [Ljava/lang/String;

    array-length v2, p1

    invoke-static {p1, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p1

    array-length v3, p2

    invoke-static {p2, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private filterOdex()V
    .locals 3

    iget-object v2, p0, Lcom/android/settings/rz/SystemappRemover;->mSysApp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ".odex"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sdAvailable()S
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private selectDialog(Ljava/util/ArrayList;Landroid/widget/ArrayAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/rz/SystemappRemover;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b00bc      ## public array slimsizer_profile_array

    new-instance v2, Lcom/android/settings/rz/SystemappRemover$9;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/settings/rz/SystemappRemover$9;-><init>(Lcom/android/settings/rz/SystemappRemover;Ljava/util/ArrayList;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showDialog(ILjava/lang/String;Landroid/widget/ArrayAdapter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const v2, 0x7f090dd5      ## public string sizer_message_delete

    const v5, 0x7f0901da      ## public string cancel

    const/4 v4, 0x1

    const v3, 0x7f0900a7      ## public string ok

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/rz/SystemappRemover;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-ne p1, v4, :cond_1

    const v1, 0x7f090dd4      ## public string sizer_message_startup

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090dd3      ## public string caution

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/rz/SystemappRemover$4;

    invoke-direct {v2, p0}, Lcom/android/settings/rz/SystemappRemover$4;-><init>(Lcom/android/settings/rz/SystemappRemover;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/rz/SystemappRemover$6;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/settings/rz/SystemappRemover$6;-><init>(Lcom/android/settings/rz/SystemappRemover;Ljava/lang/String;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/rz/SystemappRemover$5;

    invoke-direct {v2, p0}, Lcom/android/settings/rz/SystemappRemover$5;-><init>(Lcom/android/settings/rz/SystemappRemover;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/rz/SystemappRemover$8;

    invoke-direct {v2, p0, p3}, Lcom/android/settings/rz/SystemappRemover$8;-><init>(Lcom/android/settings/rz/SystemappRemover;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/rz/SystemappRemover$7;

    invoke-direct {v2, p0}, Lcom/android/settings/rz/SystemappRemover$7;-><init>(Lcom/android/settings/rz/SystemappRemover;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/rz/SystemappRemover;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0f032d      ## public id btn_delete

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings/rz/SystemappRemover;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0f032e      ## public id btn_profile

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "CertInstaller.apk"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "DrmProvider.apk"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "PackageInstaller.apk"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "Superuser.apk"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "TelephonyProvider.apk"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "ContactsProvider.apk"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "DefaultContainerService.apk"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "Dialer.apk"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "DownloadProvider.apk"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "FusedLocation.apk"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "Keyguard.apk"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "MediaProvider.apk"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "ProxyHandler.apk"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "Settings.apk"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "SettingsProvider.apk"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "SystemUI.apk"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "TeleService.apk"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/io/File;

    const-string v7, "/system/app/"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    const-string v7, "/system/priv-app/"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings/rz/SystemappRemover;->combine([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, p0, Lcom/android/settings/rz/SystemappRemover;->mSysApp:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/settings/rz/SystemappRemover;->filterOdex()V

    iget-object v7, p0, Lcom/android/settings/rz/SystemappRemover;->mSysApp:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v7, p0, Lcom/android/settings/rz/SystemappRemover;->mSysApp:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v7, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/rz/SystemappRemover;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x1090010

    iget-object v10, p0, Lcom/android/settings/rz/SystemappRemover;->mSysApp:Ljava/util/ArrayList;

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v7, p0, Lcom/android/settings/rz/SystemappRemover;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/rz/SystemappRemover;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f090dd1      ## public string listsystem

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v7, p0, Lcom/android/settings/rz/SystemappRemover;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v7, Lcom/android/settings/rz/SystemappRemover$1;

    invoke-direct {v7, p0, v1}, Lcom/android/settings/rz/SystemappRemover$1;-><init>(Lcom/android/settings/rz/SystemappRemover;Landroid/widget/ListView;)V

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    new-instance v7, Lcom/android/settings/rz/SystemappRemover$2;

    invoke-direct {v7, p0, v1}, Lcom/android/settings/rz/SystemappRemover$2;-><init>(Lcom/android/settings/rz/SystemappRemover;Landroid/widget/ListView;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Lcom/android/settings/rz/SystemappRemover$3;

    invoke-direct {v7, p0}, Lcom/android/settings/rz/SystemappRemover$3;-><init>(Lcom/android/settings/rz/SystemappRemover;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f040131      ## public layout slim_sizer

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setUserVisibleHint(Z)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/rz/SystemappRemover;->adapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/rz/SystemappRemover;->startup:Z

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/rz/SystemappRemover;->adapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/settings/rz/SystemappRemover;->showDialog(ILjava/lang/String;Landroid/widget/ArrayAdapter;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/rz/SystemappRemover;->startup:Z

    :cond_0
    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/rz/SystemappRemover;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
