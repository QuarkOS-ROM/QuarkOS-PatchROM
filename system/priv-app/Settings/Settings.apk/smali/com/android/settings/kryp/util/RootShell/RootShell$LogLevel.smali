.class public final enum Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;
.super Ljava/lang/Enum;
.source "RootShell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/kryp/util/RootShell/RootShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;

.field public static final enum DEBUG:Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;

.field public static final enum ERROR:Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;

.field public static final enum VERBOSE:Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;

.field public static final enum WARN:Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;

    const-string v1, "VERBOSE"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;->VERBOSE:Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;

    new-instance v0, Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;->ERROR:Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;

    new-instance v0, Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;->DEBUG:Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;

    new-instance v0, Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;

    const-string v1, "WARN"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;->WARN:Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;

    sget-object v1, Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;->VERBOSE:Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;->ERROR:Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;->DEBUG:Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;->WARN:Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;->$VALUES:[Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;
    .locals 1

    const-class v0, Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;
    .locals 1

    sget-object v0, Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;->$VALUES:[Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;

    invoke-virtual {v0}, [Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/kryp/util/RootShell/RootShell$LogLevel;

    return-object v0
.end method
