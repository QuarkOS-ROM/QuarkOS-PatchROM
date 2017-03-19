.class public Lcom/adi/rom/interface/DoubleBarGraphRenderer;
.super Lcom/adi/rom/interface/renderer/Renderer;
.source "DoubleBarGraphRenderer.java"


# instance fields
.field private a:I

.field private b:Landroid/graphics/Paint;

.field private c:Z


# direct methods
.method public constructor <init>(ILandroid/graphics/Paint;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/adi/rom/interface/renderer/Renderer;-><init>()V

    iput p1, p0, Lcom/adi/rom/interface/DoubleBarGraphRenderer;->a:I

    iput-object p2, p0, Lcom/adi/rom/interface/DoubleBarGraphRenderer;->b:Landroid/graphics/Paint;

    iput-boolean p3, p0, Lcom/adi/rom/interface/DoubleBarGraphRenderer;->c:Z

    return-void
.end method


# virtual methods
.method public onRender(Landroid/graphics/Canvas;Lcom/adi/rom/interface/AudioData;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public onRender(Landroid/graphics/Canvas;Lcom/adi/rom/interface/FFTData;Landroid/graphics/Rect;)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p2, Lcom/adi/rom/interface/FFTData;->bytes:[B

    array-length v1, v1

    iget v2, p0, Lcom/adi/rom/interface/DoubleBarGraphRenderer;->a:I

    div-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/adi/rom/interface/DoubleBarGraphRenderer;->mFFTPoints:[F

    iget-object v1, p0, Lcom/adi/rom/interface/DoubleBarGraphRenderer;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/adi/rom/interface/DoubleBarGraphRenderer;->mFFTPoints:[F

    mul-int/lit8 v2, v0, 0x4

    mul-int/lit8 v3, v0, 0x4

    iget v4, p0, Lcom/adi/rom/interface/DoubleBarGraphRenderer;->a:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/adi/rom/interface/DoubleBarGraphRenderer;->mFFTPoints:[F

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x2

    mul-int/lit8 v3, v0, 0x4

    iget v4, p0, Lcom/adi/rom/interface/DoubleBarGraphRenderer;->a:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v1, v2

    iget-object v1, p2, Lcom/adi/rom/interface/FFTData;->bytes:[B

    iget v2, p0, Lcom/adi/rom/interface/DoubleBarGraphRenderer;->a:I

    mul-int/2addr v2, v0

    aget-byte v1, v1, v2

    iget-object v2, p2, Lcom/adi/rom/interface/FFTData;->bytes:[B

    iget v3, p0, Lcom/adi/rom/interface/DoubleBarGraphRenderer;->a:I

    mul-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    mul-int/2addr v1, v1

    mul-int/2addr v2, v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    mul-double v1, v2, v4

    double-to-int v1, v1

    const-string v2, "tag"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "data "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/adi/rom/interface/DoubleBarGraphRenderer;->c:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/adi/rom/interface/DoubleBarGraphRenderer;->mFFTPoints:[F

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    iget-object v2, p0, Lcom/adi/rom/interface/DoubleBarGraphRenderer;->mFFTPoints:[F

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x3

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0xa

    int-to-float v1, v1

    aput v1, v2, v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/adi/rom/interface/DoubleBarGraphRenderer;->mFFTPoints:[F

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    aput v4, v2, v3

    iget-object v2, p0, Lcom/adi/rom/interface/DoubleBarGraphRenderer;->mFFTPoints:[F

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0xa

    sub-int v1, v4, v1

    int-to-float v1, v1

    aput v1, v2, v3

    goto :goto_1
.end method
