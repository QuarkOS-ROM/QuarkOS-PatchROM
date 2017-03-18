.class Lcom/android/settings/rz/SystemappRemover$1;
.super Ljava/lang/Object;
.source "SystemappRemover.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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

.field final synthetic val$lv:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/android/settings/rz/SystemappRemover;Landroid/widget/ListView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/rz/SystemappRemover$1;->this$0:Lcom/android/settings/rz/SystemappRemover;

    iput-object p2, p0, Lcom/android/settings/rz/SystemappRemover$1;->val$lv:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/settings/rz/SystemappRemover$1;->val$lv:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/rz/SystemappRemover$1;->this$0:Lcom/android/settings/rz/SystemappRemover;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settings/rz/SystemappRemover$1;->this$0:Lcom/android/settings/rz/SystemappRemover;

    iget-object v3, v3, Lcom/android/settings/rz/SystemappRemover;->adapter:Landroid/widget/ArrayAdapter;

    # invokes: Lcom/android/settings/rz/SystemappRemover;->showDialog(ILjava/lang/String;Landroid/widget/ArrayAdapter;)V
    invoke-static {v1, v2, v0, v3}, Lcom/android/settings/rz/SystemappRemover;->access$000(Lcom/android/settings/rz/SystemappRemover;ILjava/lang/String;Landroid/widget/ArrayAdapter;)V

    const/4 v1, 0x0

    return v1
.end method
