.class Lcom/android/settings/rz/SystemappRemover$4;
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


# direct methods
.method constructor <init>(Lcom/android/settings/rz/SystemappRemover;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/rz/SystemappRemover$4;->this$0:Lcom/android/settings/rz/SystemappRemover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
