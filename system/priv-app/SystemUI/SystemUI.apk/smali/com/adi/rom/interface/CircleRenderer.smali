.class public Lcom/adi/rom/interface/CircleRenderer;
.super Lcom/adi/rom/interface/renderer/Renderer;
.source "CircleRenderer.java"


# instance fields
.field aggresive:F

.field private colorCounter:F

.field private mCycleColor:Z

.field private mPaint:Landroid/graphics/Paint;

.field modulation:F


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/adi/rom/interface/CircleRenderer;-><init>(Landroid/graphics/Paint;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/adi/rom/interface/renderer/Renderer;-><init>()V

    iput v1, p0, Lcom/adi/rom/interface/CircleRenderer;->modulation:F

    const v0, 0x3ea8f5c3    # 0.33f

    iput v0, p0, Lcom/adi/rom/interface/CircleRenderer;->aggresive:F

    iput v1, p0, Lcom/adi/rom/interface/CircleRenderer;->colorCounter:F

    iput-object p1, p0, Lcom/adi/rom/interface/CircleRenderer;->mPaint:Landroid/graphics/Paint;

    iput-boolean p2, p0, Lcom/adi/rom/interface/CircleRenderer;->mCycleColor:Z

    return-void
.end method

.method private cycleColor()V
    .locals 9

    const-wide/high16 v7, 0x4060000000000000L    # 128.0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    iget v3, p0, Lcom/adi/rom/interface/CircleRenderer;->colorCounter:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    add-double/2addr v3, v5

    mul-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v2, v3

    iget v3, p0, Lcom/adi/rom/interface/CircleRenderer;->colorCounter:F

    const/high16 v4, 0x40000000    # 2.0f

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    add-double/2addr v3, v5

    mul-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    iget v3, p0, Lcom/adi/rom/interface/CircleRenderer;->colorCounter:F

    const/high16 v4, 0x40800000    # 4.0f

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    add-double/2addr v3, v5

    mul-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v0, v3

    iget-object v3, p0, Lcom/adi/rom/interface/CircleRenderer;->mPaint:Landroid/graphics/Paint;

    const/16 v4, 0x80

    invoke-static {v4, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, p0, Lcom/adi/rom/interface/CircleRenderer;->colorCounter:F

    float-to-double v3, v3

    const-wide v5, 0x3f9eb851eb851eb8L    # 0.03

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, p0, Lcom/adi/rom/interface/CircleRenderer;->colorCounter:F

    return-void
.end method

.method private toPolar([FLandroid/graphics/Rect;)[F
    .locals 15

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-double v2, v9

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-double v4, v9

    const/4 v9, 0x0

    aget v9, p1, v9

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    float-to-double v9, v9

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v9, v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    iget v11, p0, Lcom/adi/rom/interface/CircleRenderer;->aggresive:F

    sub-float/2addr v10, v11

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/adi/rom/interface/CircleRenderer;->aggresive:F

    const/4 v11, 0x1

    aget v11, p1, v11

    mul-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-double v9, v9

    const-wide v11, 0x3ff3333333333333L    # 1.2

    iget v13, p0, Lcom/adi/rom/interface/CircleRenderer;->modulation:F

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    add-double/2addr v11, v13

    mul-double/2addr v9, v11

    const-wide v11, 0x400199999999999aL    # 2.2

    div-double v7, v9, v11

    const/4 v9, 0x2

    new-array v6, v9, [F

    const/4 v9, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v7

    add-double/2addr v10, v2

    double-to-float v10, v10

    aput v10, v6, v9

    const/4 v9, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v7

    add-double/2addr v10, v4

    double-to-float v10, v10

    aput v10, v6, v9

    return-object v6
.end method


# virtual methods
.method public onRender(Landroid/graphics/Canvas;Lcom/adi/rom/interface/AudioData;Landroid/graphics/Rect;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-boolean v5, p0, Lcom/adi/rom/interface/CircleRenderer;->mCycleColor:Z

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/adi/rom/interface/CircleRenderer;->cycleColor()V

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v5, p2, Lcom/adi/rom/interface/AudioData;->bytes:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-lt v2, v5, :cond_1

    iget-object v5, p0, Lcom/adi/rom/interface/CircleRenderer;->mPoints:[F

    iget-object v6, p0, Lcom/adi/rom/interface/CircleRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    iget v5, p0, Lcom/adi/rom/interface/CircleRenderer;->modulation:F

    float-to-double v5, v5

    const-wide v7, 0x3fa47ae147ae147bL    # 0.04

    add-double/2addr v5, v7

    double-to-float v5, v5

    iput v5, p0, Lcom/adi/rom/interface/CircleRenderer;->modulation:F

    return-void

    :cond_1
    new-array v0, v10, [F

    int-to-float v5, v2

    iget-object v6, p2, Lcom/adi/rom/interface/AudioData;->bytes:[B

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v0, v8

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p2, Lcom/adi/rom/interface/AudioData;->bytes:[B

    aget-byte v6, v6, v2

    add-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    mul-int/2addr v6, v7

    div-int/lit16 v6, v6, 0x80

    add-int/2addr v5, v6

    int-to-float v5, v5

    aput v5, v0, v9

    invoke-direct {p0, v0, p3}, Lcom/adi/rom/interface/CircleRenderer;->toPolar([FLandroid/graphics/Rect;)[F

    move-result-object v3

    iget-object v5, p0, Lcom/adi/rom/interface/CircleRenderer;->mPoints:[F

    mul-int/lit8 v6, v2, 0x4

    aget v7, v3, v8

    aput v7, v5, v6

    iget-object v5, p0, Lcom/adi/rom/interface/CircleRenderer;->mPoints:[F

    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x1

    aget v7, v3, v9

    aput v7, v5, v6

    new-array v1, v10, [F

    add-int/lit8 v5, v2, 0x1

    int-to-float v5, v5

    iget-object v6, p2, Lcom/adi/rom/interface/AudioData;->bytes:[B

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v1, v8

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p2, Lcom/adi/rom/interface/AudioData;->bytes:[B

    add-int/lit8 v7, v2, 0x1

    aget-byte v6, v6, v7

    add-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    mul-int/2addr v6, v7

    div-int/lit16 v6, v6, 0x80

    add-int/2addr v5, v6

    int-to-float v5, v5

    aput v5, v1, v9

    invoke-direct {p0, v1, p3}, Lcom/adi/rom/interface/CircleRenderer;->toPolar([FLandroid/graphics/Rect;)[F

    move-result-object v4

    iget-object v5, p0, Lcom/adi/rom/interface/CircleRenderer;->mPoints:[F

    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x2

    aget v7, v4, v8

    aput v7, v5, v6

    iget-object v5, p0, Lcom/adi/rom/interface/CircleRenderer;->mPoints:[F

    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x3

    aget v7, v4, v9

    aput v7, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public onRender(Landroid/graphics/Canvas;Lcom/adi/rom/interface/FFTData;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
