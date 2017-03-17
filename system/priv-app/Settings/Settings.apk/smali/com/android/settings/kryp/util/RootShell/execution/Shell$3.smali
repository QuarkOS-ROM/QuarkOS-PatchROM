.class Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;
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

    iput-object p1, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const/4 v12, 0x2

    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    :try_start_0
    iget-object v10, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->close:Z
    invoke-static {v10}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$200(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->inputStream:Ljava/io/BufferedReader;
    invoke-static {v10}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$1100(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/io/BufferedReader;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/BufferedReader;->ready()Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->read:I
    invoke-static {v10}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$500(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)I

    move-result v10

    iget-object v11, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->commands:Ljava/util/List;
    invoke-static {v11}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$100(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_2

    :cond_1
    iget-object v10, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->isReading:Z

    iget-object v10, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->inputStream:Ljava/io/BufferedReader;
    invoke-static {v10}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$1100(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/io/BufferedReader;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->isReading:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v8, :cond_4

    :cond_2
    :goto_1
    :try_start_1
    iget-object v10, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->proc:Ljava/lang/Process;
    invoke-static {v10}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$1300(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/lang/Process;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Process;->waitFor()I

    iget-object v10, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->proc:Ljava/lang/Process;
    invoke-static {v10}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$1300(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/lang/Process;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    :try_start_2
    iget-object v10, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->read:I
    invoke-static {v10}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$500(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)I

    move-result v10

    iget-object v11, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->commands:Ljava/util/List;
    invoke-static {v11}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$100(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_c

    if-nez v2, :cond_3

    iget-object v10, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->commands:Ljava/util/List;
    invoke-static {v10}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$100(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/util/List;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->read:I
    invoke-static {v11}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$500(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/android/settings/kryp/util/RootShell/execution/Command;

    move-object v2, v0

    :cond_3
    iget v10, v2, Lcom/android/settings/kryp/util/RootShell/execution/Command;->totalOutput:I

    iget v11, v2, Lcom/android/settings/kryp/util/RootShell/execution/Command;->totalOutputProcessed:I

    if-ge v10, v11, :cond_b

    const-string v10, "All output not processed!"

    invoke-virtual {v2, v10}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->terminated(Ljava/lang/String;)V

    const-string v10, "Did you forget the super.commandOutput call or are you waiting on the command object?"

    invoke-virtual {v2, v10}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->terminated(Ljava/lang/String;)V

    :goto_3
    const/4 v2, 0x0

    iget-object v10, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # operator++ for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->read:I
    invoke-static {v10}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$508(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;->ERROR:Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;

    invoke-static {v10, v11, v3}, Lcom/android/settings/kryp/util/RootShell/RootShell;->log(Ljava/lang/String;Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v10, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    iget-object v11, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->outputStream:Ljava/io/OutputStreamWriter;
    invoke-static {v11}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$800(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v11

    # invokes: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->closeQuietly(Ljava/io/Writer;)V
    invoke-static {v10, v11}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$1000(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Ljava/io/Writer;)V

    iget-object v10, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    iget-object v11, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->errorStream:Ljava/io/BufferedReader;
    invoke-static {v11}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$1400(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/io/BufferedReader;

    move-result-object v11

    # invokes: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->closeQuietly(Ljava/io/Reader;)V
    invoke-static {v10, v11}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$1500(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Ljava/io/Reader;)V

    iget-object v10, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    iget-object v11, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->inputStream:Ljava/io/BufferedReader;
    invoke-static {v11}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$1100(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/io/BufferedReader;

    move-result-object v11

    # invokes: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->closeQuietly(Ljava/io/Reader;)V
    invoke-static {v10, v11}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$1500(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Ljava/io/Reader;)V

    const-string v10, "Shell destroyed"

    invoke-static {v10}, Lcom/android/settings/kryp/util/RootShell/RootShell;->log(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    iput-boolean v14, v10, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->isClosed:Z

    iget-object v10, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    iput-boolean v13, v10, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->isReading:Z

    :goto_4
    return-void

    :cond_4
    if-nez v2, :cond_6

    :try_start_4
    iget-object v10, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->read:I
    invoke-static {v10}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$500(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)I

    move-result v10

    iget-object v11, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->commands:Ljava/util/List;
    invoke-static {v11}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$100(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lt v10, v11, :cond_5

    iget-object v10, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->close:Z
    invoke-static {v10}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$200(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto/16 :goto_1

    :cond_5
    iget-object v10, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->commands:Ljava/util/List;
    invoke-static {v10}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$100(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/util/List;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->read:I
    invoke-static {v11}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$500(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/android/settings/kryp/util/RootShell/execution/Command;

    move-object v2, v0

    :cond_6
    const/4 v9, -0x1

    const-string v10, "F*D^W@#FGF"

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_9

    iget v10, v2, Lcom/android/settings/kryp/util/RootShell/execution/Command;->id:I

    invoke-virtual {v2, v10, v8}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->output(ILjava/lang/String;)V

    :cond_7
    :goto_5
    if-ltz v9, :cond_0

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v10, v5

    if-lt v10, v12, :cond_0

    const/4 v10, 0x1

    aget-object v10, v5, v10
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v10, :cond_0

    const/4 v6, 0x0

    const/4 v10, 0x1

    :try_start_5
    aget-object v10, v5, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v6

    :goto_6
    const/4 v4, -0x1

    const/4 v10, 0x2

    :try_start_6
    aget-object v10, v5, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v4

    :goto_7
    :try_start_7
    iget-object v10, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->totalRead:I
    invoke-static {v10}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$1200(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)I

    move-result v10

    if-ne v6, v10, :cond_0

    iget-object v10, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    invoke-virtual {v10, v2}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->processErrors(Lcom/android/settings/kryp/util/RootShell/execution/Command;)V

    const/4 v7, 0x0

    :goto_8
    iget v10, v2, Lcom/android/settings/kryp/util/RootShell/execution/Command;->totalOutput:I

    iget v11, v2, Lcom/android/settings/kryp/util/RootShell/execution/Command;->totalOutputProcessed:I

    if-le v10, v11, :cond_a

    if-nez v7, :cond_8

    add-int/lit8 v7, v7, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Waiting for output to be processed. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v2, Lcom/android/settings/kryp/util/RootShell/execution/Command;->totalOutputProcessed:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v2, Lcom/android/settings/kryp/util/RootShell/execution/Command;->totalOutput:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/kryp/util/RootShell/RootShell;->log(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_8
    :try_start_8
    monitor-enter p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const-wide/16 v10, 0x7d0

    :try_start_9
    invoke-virtual {p0, v10, v11}, Ljava/lang/Object;->wait(J)V

    monitor-exit p0

    goto :goto_8

    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v10
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catch_1
    move-exception v3

    :try_start_b
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/kryp/util/RootShell/RootShell;->log(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v10

    iget-object v11, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    iget-object v12, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->outputStream:Ljava/io/OutputStreamWriter;
    invoke-static {v12}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$800(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v12

    # invokes: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->closeQuietly(Ljava/io/Writer;)V
    invoke-static {v11, v12}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$1000(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Ljava/io/Writer;)V

    iget-object v11, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    iget-object v12, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->errorStream:Ljava/io/BufferedReader;
    invoke-static {v12}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$1400(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/io/BufferedReader;

    move-result-object v12

    # invokes: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->closeQuietly(Ljava/io/Reader;)V
    invoke-static {v11, v12}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$1500(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Ljava/io/Reader;)V

    iget-object v11, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    iget-object v12, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->inputStream:Ljava/io/BufferedReader;
    invoke-static {v12}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$1100(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/io/BufferedReader;

    move-result-object v12

    # invokes: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->closeQuietly(Ljava/io/Reader;)V
    invoke-static {v11, v12}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$1500(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Ljava/io/Reader;)V

    const-string v11, "Shell destroyed"

    invoke-static {v11}, Lcom/android/settings/kryp/util/RootShell/RootShell;->log(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    iput-boolean v14, v11, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->isClosed:Z

    iget-object v11, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    iput-boolean v13, v11, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->isReading:Z

    throw v10

    :cond_9
    if-lez v9, :cond_7

    :try_start_c
    iget v10, v2, Lcom/android/settings/kryp/util/RootShell/execution/Command;->id:I

    const/4 v11, 0x0

    invoke-virtual {v8, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->output(ILjava/lang/String;)V

    goto/16 :goto_5

    :cond_a
    const-string v10, "Read all output"

    invoke-static {v10}, Lcom/android/settings/kryp/util/RootShell/RootShell;->log(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->setExitCode(I)V

    invoke-virtual {v2}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->commandFinished()V

    const/4 v2, 0x0

    iget-object v10, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # operator++ for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->read:I
    invoke-static {v10}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$508(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)I

    iget-object v10, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # operator++ for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->totalRead:I
    invoke-static {v10}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$1208(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)I

    goto/16 :goto_0

    :cond_b
    const-string v10, "Unexpected Termination."

    invoke-virtual {v2, v10}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->terminated(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_c
    iget-object v10, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    const/4 v11, 0x0

    # setter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->read:I
    invoke-static {v10, v11}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$502(Lcom/android/settings/kryp/util/RootShell/execution/Shell;I)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    iget-object v10, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    iget-object v11, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->outputStream:Ljava/io/OutputStreamWriter;
    invoke-static {v11}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$800(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v11

    # invokes: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->closeQuietly(Ljava/io/Writer;)V
    invoke-static {v10, v11}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$1000(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Ljava/io/Writer;)V

    iget-object v10, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    iget-object v11, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->errorStream:Ljava/io/BufferedReader;
    invoke-static {v11}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$1400(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/io/BufferedReader;

    move-result-object v11

    # invokes: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->closeQuietly(Ljava/io/Reader;)V
    invoke-static {v10, v11}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$1500(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Ljava/io/Reader;)V

    iget-object v10, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    iget-object v11, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->inputStream:Ljava/io/BufferedReader;
    invoke-static {v11}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$1100(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/io/BufferedReader;

    move-result-object v11

    # invokes: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->closeQuietly(Ljava/io/Reader;)V
    invoke-static {v10, v11}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$1500(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Ljava/io/Reader;)V

    const-string v10, "Shell destroyed"

    invoke-static {v10}, Lcom/android/settings/kryp/util/RootShell/RootShell;->log(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    iput-boolean v14, v10, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->isClosed:Z

    iget-object v10, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$3;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    iput-boolean v13, v10, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->isReading:Z

    goto/16 :goto_4

    :catch_2
    move-exception v10

    goto/16 :goto_2

    :catch_3
    move-exception v10

    goto/16 :goto_7

    :catch_4
    move-exception v10

    goto/16 :goto_6
.end method
