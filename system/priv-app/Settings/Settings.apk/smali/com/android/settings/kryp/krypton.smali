.class public Lcom/android/settings/kryp/krypton;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "krypton.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f060072      ## public xml quark_customizations

    invoke-virtual {p0, v0}, Lcom/android/settings/kryp/krypton;->addPreferencesFromResource(I)V

    return-void
.end method
