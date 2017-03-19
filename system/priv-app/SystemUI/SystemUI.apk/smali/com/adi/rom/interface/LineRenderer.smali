.class public Lcom/adi/rom/interface/LineRenderer;
.super Lcom/adi/rom/interface/renderer/Renderer;
.source "LineRenderer.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:Z

.field private d:F

.field private g:F


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/adi/rom/interface/renderer/Renderer;-><init>()V

    iput v0, p0, Lcom/adi/rom/interface/LineRenderer;->d:F

    iput v0, p0, Lcom/adi/rom/interface/LineRenderer;->g:F

    iput-object p1, p0, Lcom/adi/rom/interface/LineRenderer;->a:Landroid/graphics/Paint;

    iput-object p2, p0, Lcom/adi/rom/interface/LineRenderer;->b:Landroid/graphics/Paint;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adi/rom/interface/LineRenderer;->c:Z

    return-void
.end method


# virtual methods
.method public onRender(Landroid/graphics/Canvas;Lcom/adi/rom/interface/AudioData;Landroid/graphics/Rect;)V
    .locals 10

    const/4 v1, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4060000000000000L    # 128.0

    iget-boolean v0, p0, Lcom/adi/rom/interface/LineRenderer;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/adi/rom/interface/LineRenderer;->g:F

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    add-double/2addr v2, v4

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    iget v2, p0, Lcom/adi/rom/interface/LineRenderer;->g:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    add-double/2addr v2, v8

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p0, Lcom/adi/rom/interface/LineRenderer;->g:F

    const/high16 v4, 0x40e00000    # 7.0f

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    add-double/2addr v3, v8

    mul-double/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget-object v4, p0, Lcom/adi/rom/interface/LineRenderer;->a:Landroid/graphics/Paint;

    const/16 v5, 0x80

    invoke-static {v5, v0, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/adi/rom/interface/LineRenderer;->g:F

    float-to-double v2, v0

    const-wide v4, 0x3f9eb851eb851eb8L    # 0.03

    add-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, p0, Lcom/adi/rom/interface/LineRenderer;->g:F

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p2, Lcom/adi/rom/interface/AudioData;->bytes:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p2, Lcom/adi/rom/interface/AudioData;->bytes:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_2

    iget-object v1, p2, Lcom/adi/rom/interface/AudioData;->bytes:[B

    array-length v1, v1

    mul-int/lit16 v1, v1, 0x80

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/adi/rom/interface/LineRenderer;->d:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    iput v0, p0, Lcom/adi/rom/interface/LineRenderer;->d:F

    iget-object v0, p0, Lcom/adi/rom/interface/LineRenderer;->mPoints:[F

    iget-object v1, p0, Lcom/adi/rom/interface/LineRenderer;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    :goto_2
    return-void

    :cond_1
    iget-object v2, p0, Lcom/adi/rom/interface/LineRenderer;->mPoints:[F

    mul-int/lit8 v3, v0, 0x4

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    mul-int/2addr v4, v0

    iget-object v5, p2, Lcom/adi/rom/interface/AudioData;->bytes:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    div-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v2, v3

    iget-object v2, p0, Lcom/adi/rom/interface/LineRenderer;->mPoints:[F

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p2, Lcom/adi/rom/interface/AudioData;->bytes:[B

    aget-byte v5, v5, v0

    add-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x3

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x80

    add-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v2, v3

    iget-object v2, p0, Lcom/adi/rom/interface/LineRenderer;->mPoints:[F

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/lit8 v5, v0, 0x1

    mul-int/2addr v4, v5

    iget-object v5, p2, Lcom/adi/rom/interface/AudioData;->bytes:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    div-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v2, v3

    iget-object v2, p0, Lcom/adi/rom/interface/LineRenderer;->mPoints:[F

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p2, Lcom/adi/rom/interface/AudioData;->bytes:[B

    add-int/lit8 v6, v0, 0x1

    aget-byte v5, v5, v6

    add-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x3

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x80

    add-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    iget-object v2, p2, Lcom/adi/rom/interface/AudioData;->bytes:[B

    aget-byte v2, v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_3
    iget v0, p0, Lcom/adi/rom/interface/LineRenderer;->d:F

    float-to-double v0, v0

    const-wide v2, 0x3fefae147ae147aeL    # 0.99

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/adi/rom/interface/LineRenderer;->d:F

    iget-object v0, p0, Lcom/adi/rom/interface/LineRenderer;->mPoints:[F

    iget-object v1, p0, Lcom/adi/rom/interface/LineRenderer;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method public onRender(Landroid/graphics/Canvas;Lcom/adi/rom/interface/FFTData;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
