.class Lcom/android/settings/kryp/settings/HandlePreferenceFragments$1;
.super Lcom/android/settings/kryp/util/RootShell/execution/Command;
.source "HandlePreferenceFragments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/kryp/settings/HandlePreferenceFragments;


# direct methods
.method varargs constructor <init>(Lcom/android/settings/kryp/settings/HandlePreferenceFragments;I[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments$1;->this$0:Lcom/android/settings/kryp/settings/HandlePreferenceFragments;

    invoke-direct {p0, p2, p3}, Lcom/android/settings/kryp/util/RootShell/execution/Command;-><init>(I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public commandCompleted(II)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/kryp/util/RootShell/execution/Command;->commandCompleted(II)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments$1;->this$0:Lcom/android/settings/kryp/settings/HandlePreferenceFragments;

    iget-object v0, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->c:Landroid/content/Context;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments$1;->this$0:Lcom/android/settings/kryp/settings/HandlePreferenceFragments;

    iget-object v0, v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->c:Landroid/content/Context;

    const-string v1, "Executed Successfully"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
