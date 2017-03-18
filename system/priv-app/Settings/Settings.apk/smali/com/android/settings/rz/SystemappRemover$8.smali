.class Lcom/android/settings/rz/SystemappRemover$8;
.super Ljava/lang/Object;
.source "SystemappRemover.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/rz/SystemappRemover;->showDialog(ILjava/lang/String;Landroid/widget/ArrayAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/rz/SystemappRemover;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/rz/SystemappRemover;Landroid/widget/ArrayAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/rz/SystemappRemover$8;->this$0:Lcom/android/settings/rz/SystemappRemover;

    iput-object p2, p0, Lcom/android/settings/rz/SystemappRemover$8;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v5, p0, Lcom/android/settings/rz/SystemappRemover$8;->this$0:Lcom/android/settings/rz/SystemappRemover;

    invoke-virtual {v5}, Lcom/android/settings/rz/SystemappRemover;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f090dd1      ## public string listsystem

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    :goto_0
    if-lez v2, :cond_1

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/rz/SystemappRemover$8;->this$0:Lcom/android/settings/rz/SystemappRemover;

    # getter for: Lcom/android/settings/rz/SystemappRemover;->mSysApp:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/settings/rz/SystemappRemover;->access$100(Lcom/android/settings/rz/SystemappRemover;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v5, p0, Lcom/android/settings/rz/SystemappRemover$8;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v0}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/settings/rz/SystemappRemover$8;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    new-instance v5, Lcom/android/settings/rz/SystemappRemover$Deleter;

    iget-object v6, p0, Lcom/android/settings/rz/SystemappRemover$8;->this$0:Lcom/android/settings/rz/SystemappRemover;

    invoke-direct {v5, v6}, Lcom/android/settings/rz/SystemappRemover$Deleter;-><init>(Lcom/android/settings/rz/SystemappRemover;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/rz/SystemappRemover$Deleter;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
