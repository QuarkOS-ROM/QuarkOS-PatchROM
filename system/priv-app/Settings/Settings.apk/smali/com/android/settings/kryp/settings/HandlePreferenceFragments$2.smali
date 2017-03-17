.class Lcom/android/settings/kryp/settings/HandlePreferenceFragments$2;
.super Ljava/lang/Object;
.source "HandlePreferenceFragments.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->appRebootRequired(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/kryp/settings/HandlePreferenceFragments;

.field final synthetic val$pckgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/kryp/settings/HandlePreferenceFragments;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments$2;->this$0:Lcom/android/settings/kryp/settings/HandlePreferenceFragments;

    iput-object p2, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments$2;->val$pckgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v2, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/android/settings/kryp/util/RootShell/execution/Command;

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pkill "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments$2;->val$pckgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {v0, v5, v2}, Lcom/android/settings/kryp/util/RootShell/execution/Command;-><init>(I[Ljava/lang/String;)V

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Lcom/android/settings/kryp/util/RootTools/RootTools;->getShell(Z)Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->add(Lcom/android/settings/kryp/util/RootShell/execution/Command;)Lcom/android/settings/kryp/util/RootShell/execution/Command;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/settings/kryp/util/RootShell/exceptions/RootDeniedException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Lcom/android/settings/kryp/util/RootShell/exceptions/RootDeniedException;->printStackTrace()V

    goto :goto_0
.end method
