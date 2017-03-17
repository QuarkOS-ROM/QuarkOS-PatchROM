.class Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods$4;
.super Lcom/android/settings/kryp/util/RootShell/execution/Command;
.source "RootToolsInternalMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->getFilePermissionsSymlinks(Ljava/lang/String;)Lcom/android/settings/kryp/util/RootTools/containers/Permissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;


# direct methods
.method varargs constructor <init>(Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods$4;->this$0:Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/settings/kryp/util/RootShell/execution/Command;-><init>(IZ[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public commandOutput(ILjava/lang/String;)V
    .locals 6

    const/4 v4, 0x1

    if-ne p1, v4, :cond_2

    const-string v3, ""

    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->commandOutput(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    :try_start_0
    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    add-int/lit8 v4, v4, -0x2

    aget-object v4, v2, v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Symlink found."

    invoke-static {v4}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods$4;->this$0:Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;

    invoke-virtual {v4, p2}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->getPermissions(Ljava/lang/String;)Lcom/android/settings/kryp/util/RootTools/containers/Permissions;

    move-result-object v4

    sput-object v4, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->permissions:Lcom/android/settings/kryp/util/RootTools/containers/Permissions;

    sget-object v4, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->permissions:Lcom/android/settings/kryp/util/RootTools/containers/Permissions;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->permissions:Lcom/android/settings/kryp/util/RootTools/containers/Permissions;

    invoke-virtual {v4, v3}, Lcom/android/settings/kryp/util/RootTools/containers/Permissions;->setSymlink(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->commandOutput(ILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v4

    goto :goto_1
.end method
