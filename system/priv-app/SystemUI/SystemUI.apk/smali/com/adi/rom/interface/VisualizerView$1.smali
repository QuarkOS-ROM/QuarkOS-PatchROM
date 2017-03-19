.class Lcom/adi/rom/interface/VisualizerView$1;
.super Ljava/lang/Object;
.source "VisualizerView.java"

# interfaces
.implements Landroid/media/audiofx/Visualizer$OnDataCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adi/rom/interface/VisualizerView;->link(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adi/rom/interface/VisualizerView;


# direct methods
.method constructor <init>(Lcom/adi/rom/interface/VisualizerView;)V
    .locals 0

    iput-object p1, p0, Lcom/adi/rom/interface/VisualizerView$1;->this$0:Lcom/adi/rom/interface/VisualizerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 1

    iget-object v0, p0, Lcom/adi/rom/interface/VisualizerView$1;->this$0:Lcom/adi/rom/interface/VisualizerView;

    invoke-virtual {v0, p2}, Lcom/adi/rom/interface/VisualizerView;->updateVisualizerFFT([B)V

    return-void
.end method

.method public onWaveFormDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 1

    iget-object v0, p0, Lcom/adi/rom/interface/VisualizerView$1;->this$0:Lcom/adi/rom/interface/VisualizerView;

    invoke-virtual {v0, p2}, Lcom/adi/rom/interface/VisualizerView;->updateVisualizer([B)V

    return-void
.end method
