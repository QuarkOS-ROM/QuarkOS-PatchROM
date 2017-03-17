.class public final Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;
.super Ljava/lang/Object;
.source "RootToolsInternalMethods.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private commandWait(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Lcom/android/settings/kryp/util/RootShell/execution/Command;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->isFinished()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "RootTools v4.2"

    invoke-virtual {p1, p2}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->getCommandQueuePositionString(Lcom/android/settings/kryp/util/RootShell/execution/Command;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RootTools v4.2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/android/settings/kryp/util/RootShell/execution/Command;->totalOutputProcessed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/android/settings/kryp/util/RootShell/execution/Command;->totalOutput:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " output from command."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p2

    :try_start_0
    invoke-virtual {p2}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    const-wide/16 v2, 0x7d0

    invoke-virtual {p2, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p2}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->isExecuting()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->isExecuting:Z

    if-nez v1, :cond_2

    iget-boolean v1, p1, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->isReading:Z

    if-nez v1, :cond_2

    const-string v1, "RootTools v4.2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waiting for a command to be executed in a shell that is not executing and not reading! \n\n Command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_2
    iget-boolean v1, p1, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->isExecuting:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->isReading:Z

    if-nez v1, :cond_3

    const-string v1, "RootTools v4.2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waiting for a command to be executed in a shell that is executing but not reading! \n\n Command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    const-string v1, "RootTools v4.2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waiting for a command to be executed in a shell that is not reading! \n\n Command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public static getInstance()V
    .locals 1

    new-instance v0, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;

    invoke-direct {v0}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;-><init>()V

    invoke-static {v0}, Lcom/android/settings/kryp/util/RootTools/RootTools;->setRim(Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;)V

    return-void
.end method


# virtual methods
.method public checkUtil(Ljava/lang/String;)Z
    .locals 8

    const/4 v5, 0x1

    invoke-static {p1}, Lcom/android/settings/kryp/util/RootShell/RootShell;->findBinary(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/kryp/util/RootTools/RootTools;->getFilePermissionsSymlinks(Ljava/lang/String;)Lcom/android/settings/kryp/util/RootTools/containers/Permissions;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/settings/kryp/util/RootTools/containers/Permissions;->getPermissions()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_2

    invoke-virtual {v4}, Lcom/android/settings/kryp/util/RootTools/containers/Permissions;->getPermissions()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v6, "755"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "777"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "775"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/settings/kryp/util/RootTools/RootTools;->utilPath:Ljava/lang/String;

    :goto_1
    return v5

    :cond_2
    invoke-virtual {v4}, Lcom/android/settings/kryp/util/RootTools/containers/Permissions;->getPermissions()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 12

    const/4 v0, 0x0

    const/4 v5, 0x1

    if-eqz p3, :cond_0

    :try_start_0
    const-string v6, "RW"

    invoke-static {p2, v6}, Lcom/android/settings/kryp/util/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    const-string v6, "cp"

    invoke-virtual {p0, v6}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "cp command is available!"

    invoke-static {v6}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    if-eqz p4, :cond_4

    new-instance v1, Lcom/android/settings/kryp/util/RootShell/execution/Command;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cp -fp "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-direct {v1, v6, v7, v8}, Lcom/android/settings/kryp/util/RootShell/execution/Command;-><init>(IZ[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->startRootShell()Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->add(Lcom/android/settings/kryp/util/RootShell/execution/Command;)Lcom/android/settings/kryp/util/RootShell/execution/Command;

    invoke-static {}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->startRootShell()Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v6

    invoke-direct {p0, v6, v1}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Lcom/android/settings/kryp/util/RootShell/execution/Command;)V

    invoke-virtual {v1}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->getExitCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-nez v6, :cond_3

    const/4 v5, 0x1

    :goto_0
    move-object v0, v1

    :goto_1
    if-eqz p3, :cond_1

    :try_start_2
    const-string v6, "RO"

    invoke-static {p2, v6}, Lcom/android/settings/kryp/util/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->getExitCode()I

    move-result v6

    if-nez v6, :cond_b

    const/4 v5, 0x1

    :cond_2
    :goto_3
    return v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    :try_start_3
    new-instance v1, Lcom/android/settings/kryp/util/RootShell/execution/Command;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cp -f "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-direct {v1, v6, v7, v8}, Lcom/android/settings/kryp/util/RootShell/execution/Command;-><init>(IZ[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-static {}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->startRootShell()Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->add(Lcom/android/settings/kryp/util/RootShell/execution/Command;)Lcom/android/settings/kryp/util/RootShell/execution/Command;

    invoke-static {}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->startRootShell()Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v6

    invoke-direct {p0, v6, v1}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Lcom/android/settings/kryp/util/RootShell/execution/Command;)V

    invoke-virtual {v1}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->getExitCode()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v6

    if-nez v6, :cond_5

    const/4 v5, 0x1

    :goto_4
    move-object v0, v1

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    goto :goto_4

    :cond_6
    :try_start_5
    const-string v6, "busybox"

    invoke-virtual {p0, v6}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "cp"

    const-string v7, "busybox"

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "busybox cp command is available!"

    invoke-static {v6}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    if-eqz p4, :cond_7

    new-instance v1, Lcom/android/settings/kryp/util/RootShell/execution/Command;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "busybox cp -fp "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-direct {v1, v6, v7, v8}, Lcom/android/settings/kryp/util/RootShell/execution/Command;-><init>(IZ[Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    invoke-static {}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->startRootShell()Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->add(Lcom/android/settings/kryp/util/RootShell/execution/Command;)Lcom/android/settings/kryp/util/RootShell/execution/Command;

    invoke-static {}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->startRootShell()Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v6

    invoke-direct {p0, v6, v1}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Lcom/android/settings/kryp/util/RootShell/execution/Command;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-object v0, v1

    goto/16 :goto_1

    :cond_7
    :try_start_7
    new-instance v1, Lcom/android/settings/kryp/util/RootShell/execution/Command;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "busybox cp -f "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-direct {v1, v6, v7, v8}, Lcom/android/settings/kryp/util/RootShell/execution/Command;-><init>(IZ[Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :try_start_8
    invoke-static {}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->startRootShell()Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->add(Lcom/android/settings/kryp/util/RootShell/execution/Command;)Lcom/android/settings/kryp/util/RootShell/execution/Command;

    invoke-static {}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->startRootShell()Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v6

    invoke-direct {p0, v6, v1}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Lcom/android/settings/kryp/util/RootShell/execution/Command;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-object v0, v1

    goto/16 :goto_1

    :cond_8
    :try_start_9
    const-string v6, "cat"

    invoke-virtual {p0, v6}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "cp is not available, use cat!"

    invoke-static {v6}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    const/4 v3, -0x1

    if-eqz p4, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->getFilePermissionsSymlinks(Ljava/lang/String;)Lcom/android/settings/kryp/util/RootTools/containers/Permissions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/kryp/util/RootTools/containers/Permissions;->getPermissions()I

    move-result v3

    :cond_9
    new-instance v1, Lcom/android/settings/kryp/util/RootShell/execution/Command;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cat "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " > "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-direct {v1, v6, v7, v8}, Lcom/android/settings/kryp/util/RootShell/execution/Command;-><init>(IZ[Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :try_start_a
    invoke-static {}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->startRootShell()Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->add(Lcom/android/settings/kryp/util/RootShell/execution/Command;)Lcom/android/settings/kryp/util/RootShell/execution/Command;

    invoke-static {}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->startRootShell()Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v6

    invoke-direct {p0, v6, v1}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Lcom/android/settings/kryp/util/RootShell/execution/Command;)V

    if-eqz p4, :cond_c

    new-instance v0, Lcom/android/settings/kryp/util/RootShell/execution/Command;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "chmod "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-direct {v0, v6, v7, v8}, Lcom/android/settings/kryp/util/RootShell/execution/Command;-><init>(IZ[Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    :try_start_b
    invoke-static {}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->startRootShell()Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->add(Lcom/android/settings/kryp/util/RootShell/execution/Command;)Lcom/android/settings/kryp/util/RootShell/execution/Command;

    invoke-static {}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->startRootShell()Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Lcom/android/settings/kryp/util/RootShell/execution/Command;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    :goto_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_3

    :catch_1
    move-exception v2

    move-object v0, v1

    goto :goto_5

    :cond_c
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public deleteFileOrDirectory(Ljava/lang/String;Z)Z
    .locals 9

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    :try_start_0
    const-string v3, "RW"

    invoke-static {p1, v3}, Lcom/android/settings/kryp/util/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    const-string v3, "rm"

    const-string v4, "toolbox"

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "rm command is available!"

    invoke-static {v3}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/kryp/util/RootShell/execution/Command;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rm -r "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v0, v3, v4, v5}, Lcom/android/settings/kryp/util/RootShell/execution/Command;-><init>(IZ[Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->startRootShell()Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->add(Lcom/android/settings/kryp/util/RootShell/execution/Command;)Lcom/android/settings/kryp/util/RootShell/execution/Command;

    invoke-static {}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->startRootShell()Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Lcom/android/settings/kryp/util/RootShell/execution/Command;)V

    invoke-virtual {v0}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->getExitCode()I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "target not exist or unable to delete file"

    invoke-static {v3}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    const-string v3, "RO"

    invoke-static {p1, v3}, Lcom/android/settings/kryp/util/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    :goto_1
    return v2

    :cond_3
    const-string v3, "busybox"

    invoke-virtual {p0, v3}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "rm"

    const-string v4, "busybox"

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "busybox rm command is available!"

    invoke-static {v3}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/kryp/util/RootShell/execution/Command;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "busybox rm -rf "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v0, v3, v4, v5}, Lcom/android/settings/kryp/util/RootShell/execution/Command;-><init>(IZ[Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->startRootShell()Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->add(Lcom/android/settings/kryp/util/RootShell/execution/Command;)Lcom/android/settings/kryp/util/RootShell/execution/Command;

    invoke-static {}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->startRootShell()Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Lcom/android/settings/kryp/util/RootShell/execution/Command;)V

    invoke-virtual {v0}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->getExitCode()I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "target not exist or unable to delete file"

    invoke-static {v3}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_1
.end method

.method public fixUtil(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    :try_start_0
    const-string v4, "/system"

    const-string v5, "rw"

    invoke-static {v4, v5}, Lcom/android/settings/kryp/util/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {p1}, Lcom/android/settings/kryp/util/RootShell/RootShell;->findBinary(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v0, Lcom/android/settings/kryp/util/RootShell/execution/Command;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " rm "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v0, v4, v5, v6}, Lcom/android/settings/kryp/util/RootShell/execution/Command;-><init>(IZ[Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/settings/kryp/util/RootShell/RootShell;->getShell(Z)Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->add(Lcom/android/settings/kryp/util/RootShell/execution/Command;)Lcom/android/settings/kryp/util/RootShell/execution/Command;

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/settings/kryp/util/RootShell/RootShell;->getShell(Z)Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Lcom/android/settings/kryp/util/RootShell/execution/Command;)V

    goto :goto_0

    :catch_0
    move-exception v4

    :goto_1
    return-void

    :cond_0
    new-instance v0, Lcom/android/settings/kryp/util/RootShell/execution/Command;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ln -s "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " /system/bin/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " chmod 0755 /system/bin/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v0, v4, v5, v6}, Lcom/android/settings/kryp/util/RootShell/execution/Command;-><init>(IZ[Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/settings/kryp/util/RootShell/RootShell;->getShell(Z)Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->add(Lcom/android/settings/kryp/util/RootShell/execution/Command;)Lcom/android/settings/kryp/util/RootShell/execution/Command;

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/settings/kryp/util/RootShell/RootShell;->getShell(Z)Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Lcom/android/settings/kryp/util/RootShell/execution/Command;)V

    :cond_1
    const-string v4, "/system"

    const-string v5, "ro"

    invoke-static {v4, v5}, Lcom/android/settings/kryp/util/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public fixUtils([Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    invoke-virtual {p0, v3}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "busybox"

    invoke-virtual {p0, v4}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "busybox"

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/settings/kryp/util/RootTools/RootTools;->utilPath:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->fixUtil(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "toolbox"

    invoke-virtual {p0, v4}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "toolbox"

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/settings/kryp/util/RootTools/RootTools;->utilPath:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->fixUtil(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_2
    return v4

    :cond_3
    const/4 v4, 0x1

    goto :goto_2
.end method

.method public getBusyBoxApplets(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods$1;

    const/4 v2, 0x3

    new-array v4, v7, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "busybox --list"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods$1;-><init>(Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v3}, Lcom/android/settings/kryp/util/RootShell/RootShell;->getShell(Z)Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->add(Lcom/android/settings/kryp/util/RootShell/execution/Command;)Lcom/android/settings/kryp/util/RootShell/execution/Command;

    invoke-static {v3}, Lcom/android/settings/kryp/util/RootShell/RootShell;->getShell(Z)Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Lcom/android/settings/kryp/util/RootShell/execution/Command;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    invoke-static {v7}, Lcom/android/settings/kryp/util/RootShell/RootShell;->getShell(Z)Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->add(Lcom/android/settings/kryp/util/RootShell/execution/Command;)Lcom/android/settings/kryp/util/RootShell/execution/Command;

    invoke-static {v7}, Lcom/android/settings/kryp/util/RootShell/RootShell;->getShell(Z)Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Lcom/android/settings/kryp/util/RootShell/execution/Command;)V

    :cond_1
    return-object v5

    :cond_2
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Path is null, please specifiy a path"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBusyBoxVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v4, ""

    sput-object v4, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->busyboxVersion:Ljava/lang/String;

    :try_start_0
    new-instance v0, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods$2;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "busybox"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v0, p0, v4, v5, v6}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods$2;-><init>(Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;)V

    const-string v4, "Getting BusyBox Version without root"

    invoke-static {v4}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/settings/kryp/util/RootTools/RootTools;->getShell(Z)Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->add(Lcom/android/settings/kryp/util/RootShell/execution/Command;)Lcom/android/settings/kryp/util/RootShell/execution/Command;

    invoke-direct {p0, v3, v0}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Lcom/android/settings/kryp/util/RootShell/execution/Command;)V

    sget-object v4, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->busyboxVersion:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    const-string v4, "Getting BusyBox Version with root"

    invoke-static {v4}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/settings/kryp/util/RootTools/RootTools;->getShell(Z)Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->add(Lcom/android/settings/kryp/util/RootShell/execution/Command;)Lcom/android/settings/kryp/util/RootShell/execution/Command;

    invoke-direct {p0, v2, v0}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Lcom/android/settings/kryp/util/RootShell/execution/Command;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    sget-object v4, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->busyboxVersion:Ljava/lang/String;

    :goto_0
    return-object v4

    :catch_0
    move-exception v1

    const-string v4, "BusyBox was not found, more information MAY be available with Debugging on."

    invoke-static {v4}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    const-string v4, ""

    goto :goto_0
.end method

.method public getConvertedSpace(Ljava/lang/String;)J
    .locals 8

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_4

    const/16 v6, 0x2e

    if-eq v0, v6, :cond_4

    const/16 v6, 0x6d

    if-eq v0, v6, :cond_0

    const/16 v6, 0x4d

    if-ne v0, v6, :cond_2

    :cond_0
    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-long v6, v6

    :goto_2
    return-wide v6

    :cond_2
    const/16 v6, 0x67

    if-eq v0, v6, :cond_3

    const/16 v6, 0x47

    if-ne v0, v6, :cond_1

    :cond_3
    const-wide/high16 v4, 0x4130000000000000L    # 1048576.0

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-wide/16 v6, -0x1

    goto :goto_2
.end method

.method public getFilePermissionsSymlinks(Ljava/lang/String;)Lcom/android/settings/kryp/util/RootTools/containers/Permissions;
    .locals 9

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking permissions for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/settings/kryp/util/RootTools/RootTools;->exists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was found."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods$4;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ls -l "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "busybox ls -l "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/system/bin/failsafe/toolbox ls -l "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "toolbox ls -l "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods$4;-><init>(Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/settings/kryp/util/RootShell/RootShell;->getShell(Z)Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->add(Lcom/android/settings/kryp/util/RootShell/execution/Command;)Lcom/android/settings/kryp/util/RootShell/execution/Command;

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/settings/kryp/util/RootShell/RootShell;->getShell(Z)Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Lcom/android/settings/kryp/util/RootShell/execution/Command;)V

    sget-object v2, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->permissions:Lcom/android/settings/kryp/util/RootTools/containers/Permissions;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getInode(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    :try_start_0
    new-instance v0, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods$3;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/local/ls -i "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods$3;-><init>(Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->startRootShell()Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->add(Lcom/android/settings/kryp/util/RootShell/execution/Command;)Lcom/android/settings/kryp/util/RootShell/execution/Command;

    invoke-static {}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->startRootShell()Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Lcom/android/settings/kryp/util/RootShell/execution/Command;)V

    sget-object v2, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->inode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string v2, ""

    goto :goto_0
.end method

.method public getMountedAs(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->getMounts()Ljava/util/ArrayList;

    move-result-object v3

    sput-object v3, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->mounts:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->mounts:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->mounts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/kryp/util/RootTools/containers/Mount;

    invoke-virtual {v1}, Lcom/android/settings/kryp/util/RootTools/containers/Mount;->getMountPoint()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/kryp/util/RootTools/containers/Mount;->getFlags()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v5

    check-cast v3, Ljava/lang/String;

    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/settings/kryp/util/RootTools/containers/Mount;->getFlags()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v5

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/settings/kryp/util/RootTools/containers/Mount;->getFlags()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v5

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    throw v3

    :cond_4
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    throw v3
.end method

.method public getMounts()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/kryp/util/RootTools/containers/Mount;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v9, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-static {v12}, Lcom/android/settings/kryp/util/RootTools/RootTools;->getShell(Z)Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v8

    new-instance v0, Lcom/android/settings/kryp/util/RootShell/execution/Command;

    new-array v9, v9, [Ljava/lang/String;

    const-string v10, "cat /proc/mounts > /data/local/RootToolsMounts"

    aput-object v10, v9, v11

    const-string v10, "chmod 0777 /data/local/RootToolsMounts"

    aput-object v10, v9, v12

    invoke-direct {v0, v11, v11, v9}, Lcom/android/settings/kryp/util/RootShell/execution/Command;-><init>(IZ[Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->add(Lcom/android/settings/kryp/util/RootShell/execution/Command;)Lcom/android/settings/kryp/util/RootShell/execution/Command;

    invoke-direct {p0, v8, v0}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Lcom/android/settings/kryp/util/RootShell/execution/Command;)V

    const/4 v5, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v9, "/data/local/RootToolsMounts"

    invoke-direct {v3, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v6, Ljava/io/LineNumberReader;

    invoke-direct {v6, v3}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v6}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v9, Lcom/android/settings/kryp/util/RootTools/containers/Mount;

    new-instance v10, Ljava/io/File;

    const/4 v11, 0x0

    aget-object v11, v1, v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/io/File;

    const/4 v12, 0x1

    aget-object v12, v1, v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x2

    aget-object v12, v1, v12

    const/4 v13, 0x3

    aget-object v13, v1, v13

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/android/settings/kryp/util/RootTools/containers/Mount;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v9

    move-object v2, v3

    move-object v5, v6

    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    :try_start_4
    invoke-virtual {v5}, Ljava/io/LineNumberReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_3
    throw v9

    :cond_0
    :try_start_5
    sput-object v7, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->mounts:Ljava/util/ArrayList;

    sget-object v9, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->mounts:Ljava/util/ArrayList;

    if-eqz v9, :cond_1

    sget-object v9, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->mounts:Ljava/util/ArrayList;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :goto_4
    :try_start_7
    invoke-virtual {v6}, Ljava/io/LineNumberReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :goto_5
    return-object v9

    :cond_1
    :try_start_8
    new-instance v9, Ljava/lang/Exception;

    invoke-direct {v9}, Ljava/lang/Exception;-><init>()V

    throw v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_0
    move-exception v10

    goto :goto_4

    :catch_1
    move-exception v10

    goto :goto_5

    :catch_2
    move-exception v10

    goto :goto_2

    :catch_3
    move-exception v10

    goto :goto_3

    :catchall_1
    move-exception v9

    goto :goto_1

    :catchall_2
    move-exception v9

    move-object v2, v3

    goto :goto_1
.end method

.method public getPermissions(Ljava/lang/String;)Lcom/android/settings/kryp/util/RootTools/containers/Permissions;
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/16 v8, 0x2d

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v3, v1, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v8, :cond_0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x64

    if-eq v4, v5, :cond_0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x6c

    if-ne v4, v5, :cond_3

    :cond_0
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v8, :cond_1

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x72

    if-ne v4, v5, :cond_3

    :cond_1
    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v8, :cond_2

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x77

    if-ne v4, v5, :cond_3

    :cond_2
    invoke-static {v3}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    new-instance v2, Lcom/android/settings/kryp/util/RootTools/containers/Permissions;

    invoke-direct {v2}, Lcom/android/settings/kryp/util/RootTools/containers/Permissions;-><init>()V

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/settings/kryp/util/RootTools/containers/Permissions;->setType(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/settings/kryp/util/RootTools/containers/Permissions;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    invoke-virtual {v3, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/settings/kryp/util/RootTools/containers/Permissions;->setUserPermissions(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/settings/kryp/util/RootTools/containers/Permissions;->getUserPermissions()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    const/4 v4, 0x7

    invoke-virtual {v3, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/settings/kryp/util/RootTools/containers/Permissions;->setGroupPermissions(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/settings/kryp/util/RootTools/containers/Permissions;->getGroupPermissions()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    const/4 v4, 0x7

    const/16 v5, 0xa

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/settings/kryp/util/RootTools/containers/Permissions;->setOtherPermissions(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/settings/kryp/util/RootTools/containers/Permissions;->getOtherPermissions()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->parseSpecialPermissions(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/settings/kryp/util/RootTools/containers/Permissions;->getUserPermissions()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->parsePermissions(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/settings/kryp/util/RootTools/containers/Permissions;->getGroupPermissions()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->parsePermissions(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/settings/kryp/util/RootTools/containers/Permissions;->getOtherPermissions()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->parsePermissions(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/settings/kryp/util/RootTools/containers/Permissions;->setPermissions(I)V

    :goto_0
    return-object v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSpace(Ljava/lang/String;)J
    .locals 14

    sput-object p1, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->getSpaceFor:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v8, "Looking for Space"

    invoke-static {v8}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods$5;

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "df "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-direct {v1, p0, v8, v9, v10}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods$5;-><init>(Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->startRootShell()Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->add(Lcom/android/settings/kryp/util/RootShell/execution/Command;)Lcom/android/settings/kryp/util/RootShell/execution/Command;

    invoke-static {}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->startRootShell()Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v8

    invoke-direct {p0, v8, v1}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Lcom/android/settings/kryp/util/RootShell/execution/Command;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v8, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->space:[Ljava/lang/String;

    if-eqz v8, :cond_6

    const-string v8, "First Method"

    invoke-static {v8}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->space:[Ljava/lang/String;

    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v6, v0, v4

    invoke-static {v6}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    invoke-virtual {p0, v6}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->getConvertedSpace(Ljava/lang/String;)J

    move-result-wide v8

    :goto_2
    return-wide v8

    :cond_0
    const-string v8, "used,"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v3, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    const/4 v7, 0x3

    const-string v8, "Second Method"

    invoke-static {v8}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    sget-object v8, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->space:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x5

    if-gt v8, v9, :cond_3

    const/4 v7, 0x2

    :cond_3
    sget-object v0, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->space:[Ljava/lang/String;

    array-length v5, v0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_6

    aget-object v6, v0, v4

    invoke-static {v6}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Valid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    if-ne v2, v7, :cond_4

    invoke-virtual {p0, v6}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->getConvertedSpace(Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    const-string v8, "Returning -1, space could not be determined."

    invoke-static {v8}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    const-wide/16 v8, -0x1

    goto :goto_2

    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method public getSymLinks()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/kryp/util/RootTools/containers/Symlink;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v7, "/data/local/symlinks.txt"

    invoke-direct {v2, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v5, Ljava/io/LineNumberReader;

    invoke-direct {v5, v2}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v5}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v7, Lcom/android/settings/kryp/util/RootTools/containers/Symlink;

    new-instance v8, Ljava/io/File;

    array-length v9, v0

    add-int/lit8 v9, v9, -0x3

    aget-object v9, v0, v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    aget-object v10, v0, v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8, v9}, Lcom/android/settings/kryp/util/RootTools/containers/Symlink;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    move-object v1, v2

    move-object v4, v5

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    :try_start_4
    invoke-virtual {v4}, Ljava/io/LineNumberReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_3
    throw v7

    :cond_0
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :goto_4
    :try_start_6
    invoke-virtual {v5}, Ljava/io/LineNumberReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :goto_5
    return-object v6

    :catch_0
    move-exception v7

    goto :goto_4

    :catch_1
    move-exception v7

    goto :goto_5

    :catch_2
    move-exception v8

    goto :goto_2

    :catch_3
    move-exception v8

    goto :goto_3

    :catchall_1
    move-exception v7

    goto :goto_1

    :catchall_2
    move-exception v7

    move-object v1, v2

    goto :goto_1
.end method

.method public getSymlink(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Looking for Symlink for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods$6;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ls -l "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods$6;-><init>(Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;Ljava/util/List;)V

    invoke-static {}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->startRootShell()Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->add(Lcom/android/settings/kryp/util/RootShell/execution/Command;)Lcom/android/settings/kryp/util/RootShell/execution/Command;

    invoke-static {}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->startRootShell()Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Lcom/android/settings/kryp/util/RootShell/execution/Command;)V

    const/4 v1, 0x0

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v1, v9

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    array-length v1, v9

    add-int/lit8 v1, v1, -0x2

    aget-object v1, v9, v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Symlink found."

    invoke-static {v1}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    array-length v1, v9

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v9, v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    array-length v1, v9

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v9, v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    array-length v1, v9

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v9, v1

    invoke-static {v1}, Lcom/android/settings/kryp/util/RootShell/RootShell;->findBinary(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v9

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v9, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_0
    return-object v7

    :cond_0
    array-length v1, v9

    add-int/lit8 v1, v1, -0x1

    aget-object v7, v9, v1

    goto :goto_0

    :cond_1
    array-length v1, v9

    add-int/lit8 v1, v1, -0x1

    aget-object v7, v9, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    sget-boolean v1, Lcom/android/settings/kryp/util/RootTools/RootTools;->debugMode:Z

    if-eqz v1, :cond_2

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const-string v1, "Symlink not found"

    invoke-static {v1}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    const-string v7, ""

    goto :goto_0
.end method

.method public getSymlinks(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/kryp/util/RootTools/containers/Symlink;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v1, "find"

    invoke-virtual {p0, v1}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1

    :cond_0
    new-instance v0, Lcom/android/settings/kryp/util/RootShell/execution/Command;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "dd if=/dev/zero of=/data/local/symlinks.txt bs=1024 count=1"

    aput-object v2, v1, v4

    const-string v2, "chmod 0777 /data/local/symlinks.txt"

    aput-object v2, v1, v3

    invoke-direct {v0, v4, v4, v1}, Lcom/android/settings/kryp/util/RootShell/execution/Command;-><init>(IZ[Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->startRootShell()Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->add(Lcom/android/settings/kryp/util/RootShell/execution/Command;)Lcom/android/settings/kryp/util/RootShell/execution/Command;

    invoke-static {}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->startRootShell()Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Lcom/android/settings/kryp/util/RootShell/execution/Command;)V

    new-instance v0, Lcom/android/settings/kryp/util/RootShell/execution/Command;

    new-array v1, v3, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -type l -exec ls -l {} \\; > /data/local/symlinks.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {v0, v4, v4, v1}, Lcom/android/settings/kryp/util/RootShell/execution/Command;-><init>(IZ[Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->startRootShell()Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->add(Lcom/android/settings/kryp/util/RootShell/execution/Command;)Lcom/android/settings/kryp/util/RootShell/execution/Command;

    invoke-static {}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->startRootShell()Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Lcom/android/settings/kryp/util/RootShell/execution/Command;)V

    invoke-virtual {p0}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->getSymLinks()Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->symlinks:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->symlinks:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->symlinks:Ljava/util/ArrayList;

    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
.end method

.method public getWorkingToolbox()Ljava/lang/String;
    .locals 1

    const-string v0, "busybox"

    invoke-static {v0}, Lcom/android/settings/kryp/util/RootTools/RootTools;->checkUtil(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "busybox"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "toolbox"

    invoke-static {v0}, Lcom/android/settings/kryp/util/RootTools/RootTools;->checkUtil(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "toolbox"

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public hasEnoughSpaceOnSdCard(J)Z
    .locals 11

    const/4 v7, 0x0

    const-string v8, "Checking SDcard size and that it is mounted as RW"

    invoke-static {v8}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    const-string v8, "mounted"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v2, v8

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v0, v8

    mul-long v8, v0, v2

    cmp-long v8, p1, v8

    if-gez v8, :cond_0

    const/4 v7, 0x1

    goto :goto_0
.end method

.method public hasUtil(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->found:Z

    const-string v1, "toolbox"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "busybox"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v8

    :goto_0
    return v1

    :cond_0
    :try_start_0
    new-instance v0, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods$7;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v1, "toolbox"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    aput-object v1, v4, v5

    move-object v1, p0

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods$7;-><init>(Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/settings/kryp/util/RootTools/RootTools;->getShell(Z)Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->add(Lcom/android/settings/kryp/util/RootShell/execution/Command;)Lcom/android/settings/kryp/util/RootShell/execution/Command;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/settings/kryp/util/RootTools/RootTools;->getShell(Z)Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Lcom/android/settings/kryp/util/RootShell/execution/Command;)V

    sget-boolean v1, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->found:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Box contains "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " util!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    move v1, v9

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " --list"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Box does not contain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " util!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v8

    goto/16 :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    move v1, v8

    goto/16 :goto_0
.end method

.method public installBinary(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    new-instance v1, Lcom/android/settings/kryp/util/RootTools/internal/Installer;

    invoke-direct {v1, p1}, Lcom/android/settings/kryp/util/RootTools/internal/Installer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/settings/kryp/util/RootTools/internal/Installer;->installBinary(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/android/settings/kryp/util/RootTools/RootTools;->debugMode:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isAppletAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->getBusyBoxApplets(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_1
    :goto_0
    return v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isBinaryAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    new-instance v1, Lcom/android/settings/kryp/util/RootTools/internal/Installer;

    invoke-direct {v1, p1}, Lcom/android/settings/kryp/util/RootTools/internal/Installer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1, p2}, Lcom/android/settings/kryp/util/RootTools/internal/Installer;->isBinaryInstalled(Ljava/lang/String;)Z

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/android/settings/kryp/util/RootTools/RootTools;->debugMode:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isNativeToolsReady(ILandroid/content/Context;)Z
    .locals 4

    const/4 v2, 0x0

    const-string v3, "Preparing Native Tools"

    invoke-static {v3}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    sput-boolean v2, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->nativeToolsReady:Z

    :try_start_0
    new-instance v1, Lcom/android/settings/kryp/util/RootTools/internal/Installer;

    invoke-direct {v1, p2}, Lcom/android/settings/kryp/util/RootTools/internal/Installer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "nativetools"

    invoke-virtual {v1, v2}, Lcom/android/settings/kryp/util/RootTools/internal/Installer;->isBinaryInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->nativeToolsReady:Z

    :goto_0
    sget-boolean v2, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->nativeToolsReady:Z

    :cond_0
    :goto_1
    return v2

    :catch_0
    move-exception v0

    sget-boolean v3, Lcom/android/settings/kryp/util/RootTools/RootTools;->debugMode:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_1
    const-string v2, "nativetools"

    const-string v3, "700"

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/settings/kryp/util/RootTools/internal/Installer;->installBinary(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->nativeToolsReady:Z

    goto :goto_0
.end method

.method public isProcessRunning(Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checks if process is running: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    sput-boolean v3, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->processRunning:Z

    :try_start_0
    new-instance v0, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods$8;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "ps"

    aput-object v5, v4, v1

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods$8;-><init>(Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/settings/kryp/util/RootTools/RootTools;->getShell(Z)Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->add(Lcom/android/settings/kryp/util/RootShell/execution/Command;)Lcom/android/settings/kryp/util/RootShell/execution/Command;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/settings/kryp/util/RootTools/RootTools;->getShell(Z)Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Lcom/android/settings/kryp/util/RootShell/execution/Command;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-boolean v1, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->processRunning:Z

    return v1

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public killProcess(Ljava/lang/String;)Z
    .locals 12

    const/4 v10, 0x0

    const/4 v9, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Killing process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    const-string v1, ""

    sput-object v1, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->pid_list:Ljava/lang/String;

    sput-boolean v9, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->processRunning:Z

    :try_start_0
    new-instance v0, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods$9;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "ps"

    aput-object v5, v4, v1

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods$9;-><init>(Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/settings/kryp/util/RootTools/RootTools;->getShell(Z)Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->add(Lcom/android/settings/kryp/util/RootShell/execution/Command;)Lcom/android/settings/kryp/util/RootShell/execution/Command;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/settings/kryp/util/RootTools/RootTools;->getShell(Z)Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Lcom/android/settings/kryp/util/RootShell/execution/Command;)V

    sget-object v8, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->pid_list:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    new-instance v6, Lcom/android/settings/kryp/util/RootShell/execution/Command;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "kill -9 "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v6, v1, v2, v3}, Lcom/android/settings/kryp/util/RootShell/execution/Command;-><init>(IZ[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x1

    :try_start_2
    invoke-static {v1}, Lcom/android/settings/kryp/util/RootTools/RootTools;->getShell(Z)Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->add(Lcom/android/settings/kryp/util/RootShell/execution/Command;)Lcom/android/settings/kryp/util/RootShell/execution/Command;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/settings/kryp/util/RootTools/RootTools;->getShell(Z)Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    move-result-object v1

    invoke-direct {p0, v1, v6}, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Lcom/android/settings/kryp/util/RootShell/execution/Command;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v1, v9

    :goto_0
    return v1

    :catch_0
    move-exception v7

    :goto_1
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    move v1, v10

    goto :goto_0

    :cond_0
    move v1, v9

    goto :goto_0

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception v7

    move-object v0, v6

    goto :goto_1
.end method

.method public offerBusyBox(Landroid/app/Activity;I)Landroid/content/Intent;
    .locals 3

    const-string v1, "Launching Market for BusyBox"

    invoke-static {v1}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=stericson.busybox"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-object v0
.end method

.method public offerBusyBox(Landroid/app/Activity;)V
    .locals 3

    const-string v1, "Launching Market for BusyBox"

    invoke-static {v1}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=stericson.busybox"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public offerSuperUser(Landroid/app/Activity;I)Landroid/content/Intent;
    .locals 3

    const-string v1, "Launching Play Store for SuperSU"

    invoke-static {v1}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=eu.chainfire.supersu"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-object v0
.end method

.method public offerSuperUser(Landroid/app/Activity;)V
    .locals 3

    const-string v1, "Launching Play Store for SuperSU"

    invoke-static {v1}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=eu.chainfire.supersu"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public parsePermissions(Ljava/lang/String;)I
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_1

    const/4 v0, 0x4

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x77

    if-ne v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x78

    if-eq v1, v2, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x73

    if-eq v1, v2, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x74

    if-ne v1, v2, :cond_3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x0

    goto :goto_2
.end method

.method public parseSpecialPermissions(Ljava/lang/String;)I
    .locals 3

    const/16 v2, 0x73

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x4

    :cond_0
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x2

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x74

    if-ne v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "special permissions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    return v0
.end method
