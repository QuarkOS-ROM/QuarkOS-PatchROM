.class Lcom/android/settings/rz/SystemappRemover$6;
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

.field final synthetic val$item:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/rz/SystemappRemover;Ljava/lang/String;Landroid/widget/ArrayAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/rz/SystemappRemover$6;->this$0:Lcom/android/settings/rz/SystemappRemover;

    iput-object p2, p0, Lcom/android/settings/rz/SystemappRemover$6;->val$item:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/rz/SystemappRemover$6;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance v0, Lcom/android/settings/rz/SystemappRemover$Deleter;

    iget-object v1, p0, Lcom/android/settings/rz/SystemappRemover$6;->this$0:Lcom/android/settings/rz/SystemappRemover;

    invoke-direct {v0, v1}, Lcom/android/settings/rz/SystemappRemover$Deleter;-><init>(Lcom/android/settings/rz/SystemappRemover;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/rz/SystemappRemover$6;->val$item:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/rz/SystemappRemover$Deleter;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/android/settings/rz/SystemappRemover$6;->val$adapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/rz/SystemappRemover$6;->val$item:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/rz/SystemappRemover$6;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method
