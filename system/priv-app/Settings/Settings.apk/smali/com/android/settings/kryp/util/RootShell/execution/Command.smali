.class public Lcom/android/settings/kryp/util/RootShell/execution/Command;
.super Ljava/lang/Object;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/kryp/util/RootShell/execution/Command$1;,
        Lcom/android/settings/kryp/util/RootShell/execution/Command$CommandHandler;,
        Lcom/android/settings/kryp/util/RootShell/execution/Command$ExecutionMonitor;
    }
.end annotation


# instance fields
.field command:[Ljava/lang/String;

.field protected context:Landroid/content/Context;

.field executing:Z

.field executionMonitor:Lcom/android/settings/kryp/util/RootShell/execution/Command$ExecutionMonitor;

.field exitCode:I

.field finished:Z

.field handlerEnabled:Z

.field id:I

.field protected javaCommand:Z

.field mHandler:Landroid/os/Handler;

.field terminated:Z

.field timeout:I

.field public totalOutput:I

.field public totalOutputProcessed:I


# direct methods
.method public varargs constructor <init>(II[Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->javaCommand:Z

    iput-object v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->context:Landroid/content/Context;

    iput v1, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->totalOutput:I

    iput v1, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->totalOutputProcessed:I

    iput-object v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->executionMonitor:Lcom/android/settings/kryp/util/RootShell/execution/Command$ExecutionMonitor;

    iput-object v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->executing:Z

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->command:[Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->finished:Z

    iput-boolean v1, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->terminated:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->handlerEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->exitCode:I

    iput v1, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->id:I

    sget v0, Lcom/android/settings/kryp/util/RootShell/RootShell;->defaultCommandTimeout:I

    iput v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->timeout:I

    iput-object p3, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->command:[Ljava/lang/String;

    iput p1, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->id:I

    iput p2, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->timeout:I

    sget-boolean v0, Lcom/android/settings/kryp/util/RootShell/RootShell;->handlerEnabled:Z

    invoke-direct {p0, v0}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->createHandler(Z)V

    return-void
.end method

.method public varargs constructor <init>(IZ[Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->javaCommand:Z

    iput-object v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->context:Landroid/content/Context;

    iput v1, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->totalOutput:I

    iput v1, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->totalOutputProcessed:I

    iput-object v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->executionMonitor:Lcom/android/settings/kryp/util/RootShell/execution/Command$ExecutionMonitor;

    iput-object v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->executing:Z

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->command:[Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->finished:Z

    iput-boolean v1, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->terminated:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->handlerEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->exitCode:I

    iput v1, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->id:I

    sget v0, Lcom/android/settings/kryp/util/RootShell/RootShell;->defaultCommandTimeout:I

    iput v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->timeout:I

    iput-object p3, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->command:[Ljava/lang/String;

    iput p1, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->id:I

    invoke-direct {p0, p2}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->createHandler(Z)V

    return-void
.end method

.method public varargs constructor <init>(I[Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->javaCommand:Z

    iput-object v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->context:Landroid/content/Context;

    iput v1, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->totalOutput:I

    iput v1, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->totalOutputProcessed:I

    iput-object v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->executionMonitor:Lcom/android/settings/kryp/util/RootShell/execution/Command$ExecutionMonitor;

    iput-object v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->executing:Z

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->command:[Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->finished:Z

    iput-boolean v1, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->terminated:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->handlerEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->exitCode:I

    iput v1, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->id:I

    sget v0, Lcom/android/settings/kryp/util/RootShell/RootShell;->defaultCommandTimeout:I

    iput v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->timeout:I

    iput-object p2, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->command:[Ljava/lang/String;

    iput p1, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->id:I

    sget-boolean v0, Lcom/android/settings/kryp/util/RootShell/RootShell;->handlerEnabled:Z

    invoke-direct {p0, v0}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->createHandler(Z)V

    return-void
.end method

.method private createHandler(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->handlerEnabled:Z

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "CommandHandler created"

    invoke-static {v0}, Lcom/android/settings/kryp/util/RootShell/RootShell;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/kryp/util/RootShell/execution/Command$CommandHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/kryp/util/RootShell/execution/Command$CommandHandler;-><init>(Lcom/android/settings/kryp/util/RootShell/execution/Command;Lcom/android/settings/kryp/util/RootShell/execution/Command$1;)V

    iput-object v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->mHandler:Landroid/os/Handler;

    :goto_0
    return-void

    :cond_0
    const-string v0, "CommandHandler not created"

    invoke-static {v0}, Lcom/android/settings/kryp/util/RootShell/RootShell;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public commandCompleted(II)V
    .locals 0

    return-void
.end method

.method protected final commandFinished()V
    .locals 4

    iget-boolean v2, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->terminated:Z

    if-nez v2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->handlerEnabled:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Command "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " finished."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/kryp/util/RootShell/RootShell;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->finishCommand()V

    monitor-exit p0

    :cond_0
    return-void

    :cond_1
    iget v2, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->id:I

    iget v3, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->exitCode:I

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->commandCompleted(II)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public commandOutput(ILjava/lang/String;)V
    .locals 3

    const-string v0, "Command"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/kryp/util/RootShell/RootShell;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->totalOutputProcessed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->totalOutputProcessed:I

    return-void
.end method

.method public commandTerminated(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final finish()V
    .locals 1

    const-string v0, "Command finished at users request!"

    invoke-static {v0}, Lcom/android/settings/kryp/util/RootShell/RootShell;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->commandFinished()V

    return-void
.end method

.method protected final finishCommand()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->executing:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->finished:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public final getCommand()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->command:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    if-lez v0, :cond_0

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->command:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final getExitCode()I
    .locals 1

    iget v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->exitCode:I

    return v0
.end method

.method public final isExecuting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->executing:Z

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->finished:Z

    return v0
.end method

.method public final isHandlerEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->handlerEnabled:Z

    return v0
.end method

.method protected final output(ILjava/lang/String;)V
    .locals 4

    iget v2, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->totalOutput:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->totalOutput:I

    iget-object v2, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->handlerEnabled:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "text"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->commandOutput(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final resetCommand()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->finished:Z

    iput v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->totalOutput:I

    iput v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->totalOutputProcessed:I

    iput-boolean v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->executing:Z

    iput-boolean v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->terminated:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->exitCode:I

    return-void
.end method

.method protected final setExitCode(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->exitCode:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final startExecution()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/android/settings/kryp/util/RootShell/execution/Command$ExecutionMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/kryp/util/RootShell/execution/Command$ExecutionMonitor;-><init>(Lcom/android/settings/kryp/util/RootShell/execution/Command;Lcom/android/settings/kryp/util/RootShell/execution/Command$1;)V

    iput-object v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->executionMonitor:Lcom/android/settings/kryp/util/RootShell/execution/Command$ExecutionMonitor;

    iget-object v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->executionMonitor:Lcom/android/settings/kryp/util/RootShell/execution/Command$ExecutionMonitor;

    invoke-virtual {v0, v2}, Lcom/android/settings/kryp/util/RootShell/execution/Command$ExecutionMonitor;->setPriority(I)V

    iget-object v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->executionMonitor:Lcom/android/settings/kryp/util/RootShell/execution/Command$ExecutionMonitor;

    invoke-virtual {v0}, Lcom/android/settings/kryp/util/RootShell/execution/Command$ExecutionMonitor;->start()V

    iput-boolean v2, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->executing:Z

    return-void
.end method

.method public final terminate()V
    .locals 1

    const-string v0, "Terminating command at users request!"

    invoke-static {v0}, Lcom/android/settings/kryp/util/RootShell/RootShell;->log(Ljava/lang/String;)V

    const-string v0, "Terminated at users request!"

    invoke-virtual {p0, v0}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->terminated(Ljava/lang/String;)V

    return-void
.end method

.method protected final terminate(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->closeAll()V

    const-string v0, "Terminating all shells."

    invoke-static {v0}, Lcom/android/settings/kryp/util/RootShell/RootShell;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->terminated(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final terminated(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->handlerEnabled:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "text"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Command "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " did not finish because it was terminated. Termination reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/kryp/util/RootShell/RootShell;->log(Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->setExitCode(I)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->terminated:Z

    invoke-virtual {p0}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->finishCommand()V

    monitor-exit p0

    return-void

    :cond_0
    iget v2, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command;->id:I

    invoke-virtual {p0, v2, p1}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->commandTerminated(ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
