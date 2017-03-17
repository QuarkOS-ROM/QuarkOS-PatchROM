.class Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods$7;
.super Lcom/android/settings/kryp/util/RootShell/execution/Command;
.source "RootToolsInternalMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;

.field final synthetic val$box:Ljava/lang/String;

.field final synthetic val$util:Ljava/lang/String;


# direct methods
.method varargs constructor <init>(Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods$7;->this$0:Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods;

    iput-object p5, p0, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods$7;->val$box:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods$7;->val$util:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/settings/kryp/util/RootShell/execution/Command;-><init>(IZ[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public commandOutput(ILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods$7;->val$box:Ljava/lang/String;

    const-string v1, "toolbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "no such tool"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-boolean v2, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->found:Z

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->commandOutput(ILjava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods$7;->val$box:Ljava/lang/String;

    const-string v1, "busybox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/kryp/util/RootTools/internal/RootToolsInternalMethods$7;->val$util:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Found util!"

    invoke-static {v0}, Lcom/android/settings/kryp/util/RootTools/RootTools;->log(Ljava/lang/String;)V

    sput-boolean v2, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->found:Z

    goto :goto_0
.end method
