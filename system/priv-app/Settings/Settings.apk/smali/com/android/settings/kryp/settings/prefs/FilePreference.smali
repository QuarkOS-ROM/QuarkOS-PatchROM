.class public Lcom/android/settings/kryp/settings/prefs/FilePreference;
.super Landroid/preference/SwitchPreference;
.source "FilePreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field c:Landroid/content/Context;

.field defaultNameSpace:Ljava/lang/String;

.field file:Ljava/io/File;

.field isOn:Z

.field key:Ljava/lang/String;

.field summaryOff:Ljava/lang/CharSequence;

.field summaryOn:Ljava/lang/CharSequence;

.field swView:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/settings/kryp/settings/prefs/FilePreference;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/kryp/settings/ComotID;->init(Ljava/lang/String;Landroid/content/Context;)V

    const-string v0, "file_preference_widget"

    const-string v1, "layout"

    invoke-static {v0, v1}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/kryp/settings/prefs/FilePreference;->setWidgetLayoutResource(I)V

    const-string v0, "http://schemas.android.com/apk/res/android"

    iput-object v0, p0, Lcom/android/settings/kryp/settings/prefs/FilePreference;->defaultNameSpace:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/FilePreference;->defaultNameSpace:Ljava/lang/String;

    const-string v1, "key"

    const-string v2, "file"

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/android/settings/kryp/settings/prefs/FilePreference;->getStringForAttr(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/kryp/settings/prefs/FilePreference;->key:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/FilePreference;->defaultNameSpace:Ljava/lang/String;

    const-string v1, "summaryOn"

    const-string v2, ""

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/android/settings/kryp/settings/prefs/FilePreference;->getStringForAttr(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/kryp/settings/prefs/FilePreference;->summaryOn:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/FilePreference;->defaultNameSpace:Ljava/lang/String;

    const-string v1, "summaryOff"

    const-string v2, ""

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/android/settings/kryp/settings/prefs/FilePreference;->getStringForAttr(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/kryp/settings/prefs/FilePreference;->summaryOff:Ljava/lang/CharSequence;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/kryp/settings/prefs/FilePreference;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/kryp/settings/prefs/FilePreference;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/kryp/settings/prefs/FilePreference;->file:Ljava/io/File;

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/FilePreference;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/kryp/settings/prefs/FilePreference;->isOn:Z

    invoke-virtual {p0, p0}, Lcom/android/settings/kryp/settings/prefs/FilePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getStringForAttr(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1, p2, p3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p4

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    const-string v2, "fileSwitch"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/android/settings/kryp/settings/prefs/FilePreference;->swView:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/kryp/settings/prefs/FilePreference;->swView:Landroid/widget/Switch;

    iget-boolean v3, p0, Lcom/android/settings/kryp/settings/prefs/FilePreference;->isOn:Z

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-boolean v2, p0, Lcom/android/settings/kryp/settings/prefs/FilePreference;->isOn:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/kryp/settings/prefs/FilePreference;->getPersistedBoolean(Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/kryp/settings/prefs/FilePreference;->isOn:Z

    invoke-virtual {p0, v2}, Lcom/android/settings/kryp/settings/prefs/FilePreference;->persistBoolean(Z)Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/kryp/settings/prefs/FilePreference;->syncSummaryView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/settings/kryp/settings/prefs/FilePreference;->swView:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/android/settings/kryp/settings/prefs/FilePreference;->persistBoolean(Z)Z

    invoke-virtual {p0}, Lcom/android/settings/kryp/settings/prefs/FilePreference;->notifyChanged()V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/settings/kryp/settings/prefs/FilePreference;->swView:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/kryp/settings/prefs/FilePreference;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/kryp/settings/prefs/FilePreference;->isOn:Z

    :goto_0
    iget-object v2, p0, Lcom/android/settings/kryp/settings/prefs/FilePreference;->swView:Landroid/widget/Switch;

    iget-boolean v3, p0, Lcom/android/settings/kryp/settings/prefs/FilePreference;->isOn:Z

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    return v4

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/kryp/settings/prefs/FilePreference;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/settings/kryp/settings/prefs/FilePreference;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x4000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/kryp/settings/prefs/FilePreference;->isOn:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method syncSummaryView(Landroid/view/View;)V
    .locals 5

    const v4, 0x1020010

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/android/settings/kryp/settings/prefs/FilePreference;->isOn:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/kryp/settings/prefs/FilePreference;->summaryOn:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/kryp/settings/prefs/FilePreference;->summaryOn:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/kryp/settings/prefs/FilePreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    :cond_1
    const/16 v0, 0x8

    if-nez v3, :cond_2

    const/4 v0, 0x0

    :cond_2
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v0, v4, :cond_3

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void

    :cond_4
    iget-boolean v4, p0, Lcom/android/settings/kryp/settings/prefs/FilePreference;->isOn:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/kryp/settings/prefs/FilePreference;->summaryOff:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/kryp/settings/prefs/FilePreference;->summaryOff:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    goto :goto_0
.end method
