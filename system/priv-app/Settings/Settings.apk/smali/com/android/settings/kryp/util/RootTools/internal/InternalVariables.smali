.class public Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;
.super Ljava/lang/Object;
.source "InternalVariables.java"


# static fields
.field protected static final PS_REGEX:Ljava/lang/String; = "^\\S+\\s+([0-9]+).*$"

.field protected static busyboxVersion:Ljava/lang/String;

.field protected static found:Z

.field protected static getSpaceFor:Ljava/lang/String;

.field protected static inode:Ljava/lang/String;

.field protected static mounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/kryp/util/RootTools/containers/Mount;",
            ">;"
        }
    .end annotation
.end field

.field protected static nativeToolsReady:Z

.field protected static permissions:Lcom/android/settings/kryp/util/RootTools/containers/Permissions;

.field protected static pid_list:Ljava/lang/String;

.field protected static processRunning:Z

.field protected static psPattern:Ljava/util/regex/Pattern;

.field protected static space:[Ljava/lang/String;

.field protected static symlinks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/kryp/util/RootTools/containers/Symlink;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->nativeToolsReady:Z

    sput-boolean v0, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->found:Z

    sput-boolean v0, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->processRunning:Z

    const-string v0, ""

    sput-object v0, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->pid_list:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->inode:Ljava/lang/String;

    const-string v0, "^\\S+\\s+([0-9]+).*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/settings/kryp/util/RootTools/internal/InternalVariables;->psPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
