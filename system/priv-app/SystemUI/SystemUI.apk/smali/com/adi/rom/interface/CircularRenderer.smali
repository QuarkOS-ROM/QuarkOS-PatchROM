.class public Lcom/adi/rom/interface/CircularRenderer;
.super Lcom/adi/rom/interface/renderer/Renderer;
.source "CircularRenderer.java"


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field private g:I

.field private h:Landroid/graphics/Paint;

.field private i:Z

.field private j:F


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 2

    const v1, 0x3ecccccd    # 0.4f

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/adi/rom/interface/renderer/Renderer;-><init>()V

    iput v0, p0, Lcom/adi/rom/interface/CircularRenderer;->a:F

    iput v1, p0, Lcom/adi/rom/interface/CircularRenderer;->b:F

    iput v0, p0, Lcom/adi/rom/interface/CircularRenderer;->c:F

    iput v1, p0, Lcom/adi/rom/interface/CircularRenderer;->d:F

    iput v0, p0, Lcom/adi/rom/interface/CircularRenderer;->j:F

    iput-object p1, p0, Lcom/adi/rom/interface/CircularRenderer;->h:Landroid/graphics/Paint;

    const/16 v0, 0x20

    iput v0, p0, Lcom/adi/rom/interface/CircularRenderer;->g:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adi/rom/interface/CircularRenderer;->i:Z

    return-void
.end method

.method private a([FLandroid/graphics/Rect;)[F
    .locals 17

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-double v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-double v3, v3

    const/4 v5, 0x0

    aget v5, p1, v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    float-to-double v5, v5

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v5, v7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/adi/rom/interface/CircularRenderer;->d:F

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/adi/rom/interface/CircularRenderer;->d:F

    const/4 v9, 0x1

    aget v9, p1, v9

    mul-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-double v7, v7

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/adi/rom/interface/CircularRenderer;->b:F

    sub-float/2addr v9, v10

    float-to-double v9, v9

    move-object/from16 v0, p0

    iget v11, v0, Lcom/adi/rom/interface/CircularRenderer;->b:F

    float-to-double v11, v11

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/adi/rom/interface/CircularRenderer;->a:F

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    add-double/2addr v13, v15

    mul-double/2addr v11, v13

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr v11, v13

    add-double/2addr v9, v11

    mul-double/2addr v7, v9

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/adi/rom/interface/CircularRenderer;->c:F

    float-to-double v11, v11

    add-double/2addr v11, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v11, v7

    add-double/2addr v1, v11

    double-to-float v1, v1

    aput v1, v9, v10

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/adi/rom/interface/CircularRenderer;->c:F

    float-to-double v10, v2

    add-double/2addr v5, v10

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v7

    add-double v2, v3, v5

    double-to-float v2, v2

    aput v2, v9, v1

    return-object v9
.end method


# virtual methods
.method public onRender(Landroid/graphics/Canvas;Lcom/adi/rom/interface/AudioData;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public onRender(Landroid/graphics/Canvas;Lcom/adi/rom/interface/FFTData;Landroid/graphics/Rect;)V
    .locals 11

    const/high16 v10, 0x40800000    # 4.0f

    const-wide/high16 v8, 0x4060000000000000L    # 128.0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/adi/rom/interface/CircularRenderer;->i:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/adi/rom/interface/CircularRenderer;->j:F

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    add-double/2addr v2, v5

    mul-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    iget v2, p0, Lcom/adi/rom/interface/CircularRenderer;->j:F

    const/high16 v3, 0x40000000    # 2.0f

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    add-double/2addr v2, v5

    mul-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p0, Lcom/adi/rom/interface/CircularRenderer;->j:F

    add-float/2addr v3, v10

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    add-double/2addr v3, v5

    mul-double/2addr v3, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget-object v4, p0, Lcom/adi/rom/interface/CircularRenderer;->h:Landroid/graphics/Paint;

    const/16 v5, 0x80

    invoke-static {v5, v0, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/adi/rom/interface/CircularRenderer;->j:F

    float-to-double v2, v0

    const-wide v4, 0x3f9eb851eb851eb8L    # 0.03

    add-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, p0, Lcom/adi/rom/interface/CircularRenderer;->j:F

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p2, Lcom/adi/rom/interface/FFTData;->bytes:[B

    array-length v2, v2

    iget v3, p0, Lcom/adi/rom/interface/CircularRenderer;->g:I

    div-int/2addr v2, v3

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/adi/rom/interface/CircularRenderer;->mPoints:[F

    iget-object v1, p0, Lcom/adi/rom/interface/CircularRenderer;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/adi/rom/interface/CircularRenderer;->a:F

    float-to-double v0, v0

    const-wide v2, 0x3fc0a3d70a3d70a4L    # 0.13

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/adi/rom/interface/CircularRenderer;->a:F

    iget v0, p0, Lcom/adi/rom/interface/CircularRenderer;->c:F

    float-to-double v0, v0

    const-wide v2, 0x3fd1eb851eb851ecL    # 0.28

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/adi/rom/interface/CircularRenderer;->c:F

    return-void

    :cond_1
    iget-object v2, p2, Lcom/adi/rom/interface/FFTData;->bytes:[B

    iget v3, p0, Lcom/adi/rom/interface/CircularRenderer;->g:I

    mul-int/2addr v3, v0

    aget-byte v2, v2, v3

    iget-object v3, p2, Lcom/adi/rom/interface/FFTData;->bytes:[B

    iget v4, p0, Lcom/adi/rom/interface/CircularRenderer;->g:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    mul-int/2addr v2, v2

    mul-int/2addr v3, v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    const-string v3, "check"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "magnitude "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v3, 0x42960000    # 75.0f

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    double-to-float v2, v4

    mul-float/2addr v2, v3

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v4, p0, Lcom/adi/rom/interface/CircularRenderer;->g:I

    mul-int/2addr v4, v0

    int-to-float v4, v4

    iget-object v5, p2, Lcom/adi/rom/interface/FFTData;->bytes:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float/2addr v4, v5

    aput v4, v3, v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    div-float v5, v2, v10

    sub-float/2addr v4, v5

    aput v4, v3, v7

    invoke-direct {p0, v3, p3}, Lcom/adi/rom/interface/CircularRenderer;->a([FLandroid/graphics/Rect;)[F

    move-result-object v3

    iget-object v4, p0, Lcom/adi/rom/interface/CircularRenderer;->mPoints:[F

    mul-int/lit8 v5, v0, 0x4

    aget v6, v3, v1

    aput v6, v4, v5

    iget-object v4, p0, Lcom/adi/rom/interface/CircularRenderer;->mPoints:[F

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x1

    aget v3, v3, v7

    aput v3, v4, v5

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v4, p0, Lcom/adi/rom/interface/CircularRenderer;->g:I

    mul-int/2addr v4, v0

    int-to-float v4, v4

    iget-object v5, p2, Lcom/adi/rom/interface/FFTData;->bytes:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float/2addr v4, v5

    aput v4, v3, v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v2, v4

    aput v2, v3, v7

    invoke-direct {p0, v3, p3}, Lcom/adi/rom/interface/CircularRenderer;->a([FLandroid/graphics/Rect;)[F

    move-result-object v2

    iget-object v3, p0, Lcom/adi/rom/interface/CircularRenderer;->mPoints:[F

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x2

    aget v5, v2, v1

    aput v5, v3, v4

    iget-object v3, p0, Lcom/adi/rom/interface/CircularRenderer;->mPoints:[F

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x3

    aget v2, v2, v7

    aput v2, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method
