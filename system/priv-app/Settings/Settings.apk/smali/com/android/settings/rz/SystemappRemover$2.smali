.class Lcom/android/settings/rz/SystemappRemover$2;
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

.field final synthetic val$lv:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/android/settings/rz/SystemappRemover;Landroid/widget/ListView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/rz/SystemappRemover$2;->this$0:Lcom/android/settings/rz/SystemappRemover;

    iput-object p2, p0, Lcom/android/settings/rz/SystemappRemover$2;->val$lv:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/settings/rz/SystemappRemover$2;->val$lv:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/rz/SystemappRemover$2;->val$lv:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/rz/SystemappRemover$2;->val$lv:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_0
    if-lez v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/rz/SystemappRemover$2;->this$0:Lcom/android/settings/rz/SystemappRemover;

    # getter for: Lcom/android/settings/rz/SystemappRemover;->mSysApp:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/settings/rz/SystemappRemover;->access$100(Lcom/android/settings/rz/SystemappRemover;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    iget-object v4, p0, Lcom/android/settings/rz/SystemappRemover$2;->this$0:Lcom/android/settings/rz/SystemappRemover;

    iget-object v5, p0, Lcom/android/settings/rz/SystemappRemover$2;->this$0:Lcom/android/settings/rz/SystemappRemover;

    invoke-virtual {v5}, Lcom/android/settings/rz/SystemappRemover;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090dcd      ## public string sizer_message_noselect

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/rz/SystemappRemover;->toast(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/settings/rz/SystemappRemover$2;->this$0:Lcom/android/settings/rz/SystemappRemover;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/settings/rz/SystemappRemover$2;->this$0:Lcom/android/settings/rz/SystemappRemover;

    iget-object v6, v6, Lcom/android/settings/rz/SystemappRemover;->adapter:Landroid/widget/ArrayAdapter;

    # invokes: Lcom/android/settings/rz/SystemappRemover;->showDialog(ILjava/lang/String;Landroid/widget/ArrayAdapter;)V
    invoke-static {v4, v5, v2, v6}, Lcom/android/settings/rz/SystemappRemover;->access$000(Lcom/android/settings/rz/SystemappRemover;ILjava/lang/String;Landroid/widget/ArrayAdapter;)V

    goto :goto_1
.end method
