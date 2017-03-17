.class public Lcom/android/settings/kryp/settings/ComotID;
.super Ljava/lang/Object;
.source "ComotID.java"


# static fields
.field private static CONTEXT:Landroid/content/Context;

.field private static PACKAGE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/kryp/settings/ComotID;->CONTEXT:Landroid/content/Context;

    const-string v0, ""

    sput-object v0, Lcom/android/settings/kryp/settings/ComotID;->PACKAGE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Get(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    :try_start_0
    sget-object v1, Lcom/android/settings/kryp/settings/ComotID;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/android/settings/kryp/settings/ComotID;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, p0, p1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No resource ID found for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static GetStyle(Ljava/lang/String;)[I
    .locals 5

    const/4 v1, 0x1

    new-array v0, v1, [I

    const/4 v1, 0x0

    sget-object v2, Lcom/android/settings/kryp/settings/ComotID;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "styleable"

    sget-object v4, Lcom/android/settings/kryp/settings/ComotID;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v2, p0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    return-object v0
.end method

.method public static init(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/android/settings/kryp/settings/ComotID;->PACKAGE_NAME:Ljava/lang/String;

    sput-object p1, Lcom/android/settings/kryp/settings/ComotID;->CONTEXT:Landroid/content/Context;

    return-void
.end method
