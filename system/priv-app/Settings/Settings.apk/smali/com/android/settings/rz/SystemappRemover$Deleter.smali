.class public Lcom/android/settings/rz/SystemappRemover$Deleter;
.super Landroid/os/AsyncTask;
.source "SystemappRemover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/rz/SystemappRemover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Deleter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private progress:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/android/settings/rz/SystemappRemover;


# direct methods
.method public constructor <init>(Lcom/android/settings/rz/SystemappRemover;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/rz/SystemappRemover$Deleter;->this$0:Lcom/android/settings/rz/SystemappRemover;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/rz/SystemappRemover$Deleter;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 12

    move-object v2, p1

    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v1, v2, v5

    const-string v9, ".apk$"

    const-string v10, ".odex"

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "/system/app/"

    new-instance v0, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/system/app/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    const-string v3, "/system/priv-app/"

    :cond_0
    :try_start_0
    iget-object v9, p0, Lcom/android/settings/rz/SystemappRemover$Deleter;->this$0:Lcom/android/settings/rz/SystemappRemover;

    iget-object v9, v9, Lcom/android/settings/rz/SystemappRemover;->dos:Ljava/io/DataOutputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\nrm -f \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/rz/SystemappRemover$Deleter;->this$0:Lcom/android/settings/rz/SystemappRemover;

    iget-object v9, v9, Lcom/android/settings/rz/SystemappRemover;->dos:Ljava/io/DataOutputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\nrm -f \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    return-object v9
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/rz/SystemappRemover$Deleter;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/rz/SystemappRemover$Deleter;->this$0:Lcom/android/settings/rz/SystemappRemover;

    iget-object v1, v1, Lcom/android/settings/rz/SystemappRemover;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/rz/SystemappRemover$Deleter;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 6

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v1, p0, Lcom/android/settings/rz/SystemappRemover$Deleter;->this$0:Lcom/android/settings/rz/SystemappRemover;

    iget-object v1, v1, Lcom/android/settings/rz/SystemappRemover;->dos:Ljava/io/DataOutputStream;

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/rz/SystemappRemover$Deleter;->this$0:Lcom/android/settings/rz/SystemappRemover;

    new-instance v2, Ljava/lang/ProcessBuilder;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "su"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "-c"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "/system/xbin/ash"

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/rz/SystemappRemover;->superUser:Ljava/lang/Process;

    iget-object v1, p0, Lcom/android/settings/rz/SystemappRemover$Deleter;->this$0:Lcom/android/settings/rz/SystemappRemover;

    new-instance v2, Ljava/io/DataOutputStream;

    iget-object v3, p0, Lcom/android/settings/rz/SystemappRemover$Deleter;->this$0:Lcom/android/settings/rz/SystemappRemover;

    iget-object v3, v3, Lcom/android/settings/rz/SystemappRemover;->superUser:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, v1, Lcom/android/settings/rz/SystemappRemover;->dos:Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/android/settings/rz/SystemappRemover$Deleter;->this$0:Lcom/android/settings/rz/SystemappRemover;

    iget-object v1, v1, Lcom/android/settings/rz/SystemappRemover;->dos:Ljava/io/DataOutputStream;

    const-string v2, "\nmount -o remount,rw /system\n"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/settings/rz/SystemappRemover$Deleter;->this$0:Lcom/android/settings/rz/SystemappRemover;

    invoke-virtual {v2}, Lcom/android/settings/rz/SystemappRemover;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/rz/SystemappRemover$Deleter;->progress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings/rz/SystemappRemover$Deleter;->progress:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/settings/rz/SystemappRemover$Deleter;->this$0:Lcom/android/settings/rz/SystemappRemover;

    const v3, 0x7f090dd9      ## public string delete_progress_title

    invoke-virtual {v2, v3}, Lcom/android/settings/rz/SystemappRemover;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/rz/SystemappRemover$Deleter;->progress:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/settings/rz/SystemappRemover$Deleter;->this$0:Lcom/android/settings/rz/SystemappRemover;

    const v3, 0x7f090dda      ## public string delete_progress

    invoke-virtual {v2, v3}, Lcom/android/settings/rz/SystemappRemover;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/rz/SystemappRemover$Deleter;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
