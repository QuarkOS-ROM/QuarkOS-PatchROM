.class public Lcom/android/settings/kryp/util/RootShell/execution/Shell$Worker;
.super Ljava/lang/Thread;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/kryp/util/RootShell/execution/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Worker"
.end annotation


# instance fields
.field public exit:I

.field public shell:Lcom/android/settings/kryp/util/RootShell/execution/Shell;


# direct methods
.method private constructor <init>(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, -0x38f

    iput v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$Worker;->exit:I

    iput-object p1, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$Worker;->shell:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Lcom/android/settings/kryp/util/RootShell/execution/Shell$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/kryp/util/RootShell/execution/Shell$Worker;-><init>(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)V

    return-void
.end method

.method private setShellOom()V
    .locals 7

    :try_start_0
    iget-object v4, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$Worker;->shell:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->proc:Ljava/lang/Process;
    invoke-static {v4}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$1300(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/lang/Process;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :try_start_1
    const-string v4, "pid"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_0
    const/4 v4, 0x1

    :try_start_2
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v4, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$Worker;->shell:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->proc:Ljava/lang/Process;
    invoke-static {v4}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$1300(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/lang/Process;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$Worker;->shell:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->outputStream:Ljava/io/OutputStreamWriter;
    invoke-static {v4}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$800(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(echo -17 > /proc/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/oom_adj) &> /dev/null\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$Worker;->shell:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->outputStream:Ljava/io/OutputStreamWriter;
    invoke-static {v4}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$800(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v4

    const-string v5, "(echo -17 > /proc/$$/oom_adj) &> /dev/null\n"

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$Worker;->shell:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->outputStream:Ljava/io/OutputStreamWriter;
    invoke-static {v4}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$800(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v4, "id"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$Worker;->shell:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->outputStream:Ljava/io/OutputStreamWriter;
    invoke-static {v2}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$800(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v2

    const-string v3, "echo Started\n"

    invoke-virtual {v2, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$Worker;->shell:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->outputStream:Ljava/io/OutputStreamWriter;
    invoke-static {v2}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$800(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$Worker;->shell:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    # getter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->inputStream:Ljava/io/BufferedReader;
    invoke-static {v2}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$1100(Lcom/android/settings/kryp/util/RootShell/execution/Shell;)Ljava/io/BufferedReader;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const/16 v2, -0x2a

    iput v2, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$Worker;->exit:I

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$Worker;->shell:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->error:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$1602(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Ljava/lang/String;)Ljava/lang/String;

    :goto_1
    return-void

    :cond_1
    :try_start_1
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Started"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$Worker;->exit:I

    invoke-direct {p0}, Lcom/android/settings/kryp/util/RootShell/execution/Shell$Worker;->setShellOom()V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$Worker;->shell:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    const-string v3, "unkown error occured."

    # setter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->error:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$1602(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/kryp/util/RootShell/execution/Shell$Worker;->shell:Lcom/android/settings/kryp/util/RootShell/execution/Shell;

    const-string v3, "RootAccess denied?."

    # setter for: Lcom/android/settings/kryp/util/RootShell/execution/Shell;->error:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/settings/kryp/util/RootShell/execution/Shell;->access$1602(Lcom/android/settings/kryp/util/RootShell/execution/Shell;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method
