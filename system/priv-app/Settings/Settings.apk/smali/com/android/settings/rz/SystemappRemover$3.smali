.class Lcom/android/settings/rz/SystemappRemover$3;
.super Ljava/lang/Object;
.source "SystemappRemover.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/rz/SystemappRemover;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/rz/SystemappRemover;


# direct methods
.method constructor <init>(Lcom/android/settings/rz/SystemappRemover;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/rz/SystemappRemover$3;->this$0:Lcom/android/settings/rz/SystemappRemover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/rz/SystemappRemover$3;->this$0:Lcom/android/settings/rz/SystemappRemover;

    iget-object v1, p0, Lcom/android/settings/rz/SystemappRemover$3;->this$0:Lcom/android/settings/rz/SystemappRemover;

    # getter for: Lcom/android/settings/rz/SystemappRemover;->mSysApp:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings/rz/SystemappRemover;->access$100(Lcom/android/settings/rz/SystemappRemover;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/rz/SystemappRemover$3;->this$0:Lcom/android/settings/rz/SystemappRemover;

    iget-object v2, v2, Lcom/android/settings/rz/SystemappRemover;->adapter:Landroid/widget/ArrayAdapter;

    # invokes: Lcom/android/settings/rz/SystemappRemover;->selectDialog(Ljava/util/ArrayList;Landroid/widget/ArrayAdapter;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/rz/SystemappRemover;->access$200(Lcom/android/settings/rz/SystemappRemover;Ljava/util/ArrayList;Landroid/widget/ArrayAdapter;)V

    return-void
.end method
