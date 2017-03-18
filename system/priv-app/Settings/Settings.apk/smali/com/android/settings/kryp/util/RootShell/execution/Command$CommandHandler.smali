.class Lcom/android/settings/kryp/util/RootShell/execution/Command$CommandHandler;
.super Landroid/os/Handler;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/kryp/util/RootShell/execution/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommandHandler"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "action"

.field public static final COMMAND_COMPLETED:I = 0x2

.field public static final COMMAND_OUTPUT:I = 0x1

.field public static final COMMAND_TERMINATED:I = 0x3

.field public static final TEXT:Ljava/lang/String; = "text"


# instance fields
.field final synthetic this$0:Lcom/android/settings/kryp/util/RootShell/execution/Command;


# direct methods
.method private constructor <init>(Lcom/android/settings/kryp/util/RootShell/execution/Command;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command$CommandHandler;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Command;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/kryp/util/RootShell/execution/Command;Lcom/android/settings/kryp/util/RootShell/execution/Command$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/kryp/util/RootShell/execution/Command$CommandHandler;-><init>(Lcom/android/settings/kryp/util/RootShell/execution/Command;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "action"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "text"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command$CommandHandler;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Command;

    iget-object v3, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command$CommandHandler;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Command;

    iget v3, v3, Lcom/android/settings/kryp/util/RootShell/execution/Command;->id:I

    invoke-virtual {v2, v3, v1}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->commandOutput(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command$CommandHandler;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Command;

    iget-object v3, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command$CommandHandler;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Command;

    iget v3, v3, Lcom/android/settings/kryp/util/RootShell/execution/Command;->id:I

    iget-object v4, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command$CommandHandler;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Command;

    iget v4, v4, Lcom/android/settings/kryp/util/RootShell/execution/Command;->exitCode:I

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->commandCompleted(II)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command$CommandHandler;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Command;

    iget-object v3, p0, Lcom/android/settings/kryp/util/RootShell/execution/Command$CommandHandler;->this$0:Lcom/android/settings/kryp/util/RootShell/execution/Command;

    iget v3, v3, Lcom/android/settings/kryp/util/RootShell/execution/Command;->id:I

    invoke-virtual {v2, v3, v1}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->commandTerminated(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method