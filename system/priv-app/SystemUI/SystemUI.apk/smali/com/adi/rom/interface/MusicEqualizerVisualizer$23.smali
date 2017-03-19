.class final Lcom/adi/rom/interface/MusicEqualizerVisualizer$23;
.super Ljava/lang/Object;
.source "MusicEqualizerVisualizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adi/rom/interface/MusicEqualizerVisualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adi/rom/interface/MusicEqualizerVisualizer;


# direct methods
.method constructor <init>(Lcom/adi/rom/interface/MusicEqualizerVisualizer;)V
    .locals 0

    iput-object p1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer$23;->this$0:Lcom/adi/rom/interface/MusicEqualizerVisualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer$23;->this$0:Lcom/adi/rom/interface/MusicEqualizerVisualizer;

    # getter for: Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mVisualizerView:Lcom/adi/rom/interface/VisualizerView;
    invoke-static {v0}, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->access$1900(Lcom/adi/rom/interface/MusicEqualizerVisualizer;)Lcom/adi/rom/interface/VisualizerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adi/rom/interface/VisualizerView;->clearRenderers()V

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer$23;->this$0:Lcom/adi/rom/interface/MusicEqualizerVisualizer;

    # invokes: Lcom/adi/rom/interface/MusicEqualizerVisualizer;->addCircularRenderer()V
    invoke-static {v0}, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->access$300(Lcom/adi/rom/interface/MusicEqualizerVisualizer;)V

    iget-object v0, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer$23;->this$0:Lcom/adi/rom/interface/MusicEqualizerVisualizer;

    iget-object v0, v0, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adi/rom/interface/MusicEqualizerVisualizer$23;->this$0:Lcom/adi/rom/interface/MusicEqualizerVisualizer;

    # getter for: Lcom/adi/rom/interface/MusicEqualizerVisualizer;->mTwoHandler:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/adi/rom/interface/MusicEqualizerVisualizer;->access$100(Lcom/adi/rom/interface/MusicEqualizerVisualizer;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
