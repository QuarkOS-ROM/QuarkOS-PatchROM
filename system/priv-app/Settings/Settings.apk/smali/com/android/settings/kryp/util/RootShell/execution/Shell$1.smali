.class Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/kryp/util/RootShell/execution/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;


# direct methods
.method constructor <init>(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->commands:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$100(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->close:Z
    invoke-static {v3}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$200(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->write:I
    invoke-static {v3}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$300(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)I

    move-result v3

    iget-object v5, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->commands:Ljava/util/List;
    invoke-static {v5}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$100(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_1

    iget-object v3, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->isExecuting:Z

    iget-object v3, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->commands:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$100(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;->ERROR:Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;

    invoke-static {v3, v4, v1}, Lcom/android/settings/kryp/util/RootShell/RootShell;->log(Ljava/lang/String;Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v3, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # setter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->write:I
    invoke-static {v3, v6}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$302(Lcom/android/settings/kryp/util/RootShell/execution/Shell;I)I

    iget-object v3, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    iget-object v4, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->outputStream:Ljava/io/OutputStreamWriter;
    invoke-static {v4}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$800(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v4

    # invokes: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->closeQuietly(Ljava/io/Writer;)V
    invoke-static {v3, v4}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$1000(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Ljava/io/Writer;)V

    :goto_2
    return-void

    :cond_1
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v3, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->write:I
    invoke-static {v3}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$300(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->maxCommands:I
    invoke-static {v4}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$400(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)I

    move-result v4

    if-lt v3, v4, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->read:I
    invoke-static {v3}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$500(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->write:I
    invoke-static {v4}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$300(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)I

    move-result v4

    if-eq v3, v4, :cond_2

    const-string v3, "Waiting for read and write to catch up before cleanup."

    invoke-static {v3}, Lcom/android/settings/kryp/util/RootShell/RootShell;->log(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catch_1
    move-exception v1

    :try_start_6
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;->ERROR:Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;

    invoke-static {v3, v4, v1}, Lcom/android/settings/kryp/util/RootShell/RootShell;->log(Ljava/lang/String;Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    iget-object v3, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # setter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->write:I
    invoke-static {v3, v6}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$302(Lcom/android/settings/kryp/util/RootShell/execution/Shell;I)I

    iget-object v3, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    iget-object v4, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->outputStream:Ljava/io/OutputStreamWriter;
    invoke-static {v4}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$800(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v4

    # invokes: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->closeQuietly(Ljava/io/Writer;)V
    invoke-static {v3, v4}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$1000(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Ljava/io/Writer;)V

    goto :goto_2

    :cond_2
    :try_start_7
    iget-object v3, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # invokes: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->cleanCommands()V
    invoke-static {v3}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$600(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)V

    :cond_3
    iget-object v3, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->write:I
    invoke-static {v3}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$300(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->commands:Ljava/util/List;
    invoke-static {v4}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$100(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->isExecuting:Z

    iget-object v3, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->commands:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$100(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->write:I
    invoke-static {v4}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$300(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/kryp/util/RootShell/execution/Command;

    invoke-virtual {v0}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->startExecution()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Executing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->getCommand()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with context: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->shellContext:Lcom/android/settings/kryp/util/RootShell/execution/Shell$ShellContext;
    invoke-static {v4}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$700(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Lcom/android/settings/kryp/util/RootShell/execution/Shell$ShellContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/kryp/util/RootShell/RootShell;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->outputStream:Ljava/io/OutputStreamWriter;
    invoke-static {v3}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$800(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->getCommand()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\necho F*D^W@#FGF "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->totalExecuted:I
    invoke-static {v4}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$900(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " $?\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->outputStream:Ljava/io/OutputStreamWriter;
    invoke-static {v3}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$800(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->outputStream:Ljava/io/OutputStreamWriter;
    invoke-static {v3}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$800(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    iget-object v3, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # operator++ for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->write:I
    invoke-static {v3}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$308(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)I

    iget-object v3, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # operator++ for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->totalExecuted:I
    invoke-static {v3}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$908(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    iget-object v4, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # setter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->write:I
    invoke-static {v4, v6}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$302(Lcom/android/settings/kryp/util/RootShell/execution/Shell;I)I

    iget-object v4, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    iget-object v5, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->outputStream:Ljava/io/OutputStreamWriter;
    invoke-static {v5}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$800(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v5

    # invokes: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->closeQuietly(Ljava/io/Writer;)V
    invoke-static {v4, v5}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$1000(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Ljava/io/Writer;)V

    throw v3

    :cond_4
    :try_start_8
    iget-object v3, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->close:Z
    invoke-static {v3}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$200(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->isExecuting:Z

    iget-object v3, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->outputStream:Ljava/io/OutputStreamWriter;
    invoke-static {v3}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$800(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v3

    const-string v4, "\nexit 0\n"

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->outputStream:Ljava/io/OutputStreamWriter;
    invoke-static {v3}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$800(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    const-string v3, "Closing shell"

    invoke-static {v3}, Lcom/android/settings/kryp/util/RootShell/RootShell;->log(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    iget-object v3, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # setter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->write:I
    invoke-static {v3, v6}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$302(Lcom/android/settings/kryp/util/RootShell/execution/Shell;I)I

    iget-object v3, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    iget-object v4, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->outputStream:Ljava/io/OutputStreamWriter;
    invoke-static {v4}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$800(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v4

    # invokes: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->closeQuietly(Ljava/io/Writer;)V
    invoke-static {v3, v4}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$1000(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Ljava/io/Writer;)V

    goto/16 :goto_2
.end method
