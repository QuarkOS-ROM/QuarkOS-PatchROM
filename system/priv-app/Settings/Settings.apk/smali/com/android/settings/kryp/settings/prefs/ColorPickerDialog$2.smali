.class Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog$2;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->setColorAndClickAction(Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;

.field final synthetic val$color:I


# direct methods
.method constructor <init>(Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog$2;->this$0:Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;

    iput p2, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog$2;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog$2;->this$0:Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;

    # getter for: Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mColorPicker:Lcom/android/settings/kryp/settings/prefs/ColorPickerView;
    invoke-static {v0}, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->access$100(Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;)Lcom/android/settings/kryp/settings/prefs/ColorPickerView;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog$2;->val$color:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/kryp/settings/prefs/ColorPickerView;->setColor(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
