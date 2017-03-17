.class public Lcom/android/settings/kryp/settings/SystemuiCustomizations;
.super Landroid/preference/PreferenceFragment;
.source "SystemuiCustomizations.java"


# instance fields
.field hpf:Lcom/android/settings/kryp/settings/HandlePreferenceFragments;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;

    invoke-virtual {p0}, Lcom/android/settings/kryp/settings/SystemuiCustomizations;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "systemui_customizations"

    invoke-direct {v0, v1, p0, v2}, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;-><init>(Landroid/content/Context;Landroid/preference/PreferenceFragment;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/kryp/settings/SystemuiCustomizations;->hpf:Lcom/android/settings/kryp/settings/HandlePreferenceFragments;

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/kryp/settings/SystemuiCustomizations;->hpf:Lcom/android/settings/kryp/settings/HandlePreferenceFragments;

    invoke-virtual {v0}, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->onPauseFragment()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/kryp/settings/SystemuiCustomizations;->hpf:Lcom/android/settings/kryp/settings/HandlePreferenceFragments;

    invoke-virtual {v0}, Lcom/android/settings/kryp/settings/HandlePreferenceFragments;->onResumeFragment()V

    return-void
.end method
