.class public Lcom/android/settings/kryp/util/RootShell/execution/JavaCommand;
.super Lcom/android/settings/kryp/util/RootShell/execution/Command;
.source "JavaCommand.java"


# direct methods
.method public varargs constructor <init>(IILandroid/content/Context;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p4}, Lcom/android/settings/kryp/util/RootShell/execution/Command;-><init>(II[Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/settings/kryp/util/RootShell/execution/JavaCommand;->context:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/JavaCommand;->javaCommand:Z

    return-void
.end method

.method public varargs constructor <init>(ILandroid/content/Context;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/android/settings/kryp/util/RootShell/execution/Command;-><init>(I[Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/settings/kryp/util/RootShell/execution/JavaCommand;->context:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/JavaCommand;->javaCommand:Z

    return-void
.end method

.method public varargs constructor <init>(IZLandroid/content/Context;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p4}, Lcom/android/settings/kryp/util/RootShell/execution/Command;-><init>(IZ[Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/settings/kryp/util/RootShell/execution/JavaCommand;->context:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/kryp/util/RootShell/execution/JavaCommand;->javaCommand:Z

    return-void
.end method


# virtual methods
.method public commandCompleted(II)V
    .locals 0

    return-void
.end method

.method public commandOutput(ILjava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->commandOutput(ILjava/lang/String;)V

    return-void
.end method

.method public commandTerminated(ILjava/lang/String;)V
    .locals 0

    return-void
.end method
