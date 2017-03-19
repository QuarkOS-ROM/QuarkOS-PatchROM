.class public Lcom/adi/rom/interface/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static CONTEXT:Landroid/content/Context;

.field private static PACKAGE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/adi/rom/interface/Utils;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/adi/rom/interface/Utils;->CONTEXT:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimResId(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lcom/adi/rom/interface/Utils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "anim"

    sget-object v2, Lcom/adi/rom/interface/Utils;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getArrayResId(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lcom/adi/rom/interface/Utils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "array"

    sget-object v2, Lcom/adi/rom/interface/Utils;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getBoolResId(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lcom/adi/rom/interface/Utils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bool"

    sget-object v2, Lcom/adi/rom/interface/Utils;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getColorResId(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lcom/adi/rom/interface/Utils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "color"

    sget-object v2, Lcom/adi/rom/interface/Utils;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/adi/rom/interface/Utils;->CONTEXT:Landroid/content/Context;

    return-object v0
.end method

.method public static getDimenResId(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lcom/adi/rom/interface/Utils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    sget-object v2, Lcom/adi/rom/interface/Utils;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDrawableResId(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lcom/adi/rom/interface/Utils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    sget-object v2, Lcom/adi/rom/interface/Utils;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getIdResId(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lcom/adi/rom/interface/Utils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    sget-object v2, Lcom/adi/rom/interface/Utils;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getIntegerResId(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lcom/adi/rom/interface/Utils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "integer"

    sget-object v2, Lcom/adi/rom/interface/Utils;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getLayoutResId(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lcom/adi/rom/interface/Utils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "layout"

    sget-object v2, Lcom/adi/rom/interface/Utils;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/adi/rom/interface/Utils;->PACKAGE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static getStringResId(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lcom/adi/rom/interface/Utils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    sget-object v2, Lcom/adi/rom/interface/Utils;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getStyleableArrayResId(Ljava/lang/String;)[I
    .locals 5

    const/4 v1, 0x1

    new-array v0, v1, [I

    const/4 v1, 0x0

    sget-object v2, Lcom/adi/rom/interface/Utils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "styleable"

    sget-object v4, Lcom/adi/rom/interface/Utils;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v2, p0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    return-object v0
.end method

.method public static getStyleableResId(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lcom/adi/rom/interface/Utils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "styleable"

    sget-object v2, Lcom/adi/rom/interface/Utils;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getXmlResId(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lcom/adi/rom/interface/Utils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "xml"

    sget-object v2, Lcom/adi/rom/interface/Utils;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static init(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/adi/rom/interface/Utils;->PACKAGE_NAME:Ljava/lang/String;

    sput-object p1, Lcom/adi/rom/interface/Utils;->CONTEXT:Landroid/content/Context;

    return-void
.end method
