.class public Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;
.super Landroid/preference/Preference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final DEFAULT_VALUE:I = 0x32


# instance fields
.field private mCurrentValue:I

.field private mInterval:I

.field private mMaxValue:I

.field private mMinValue:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStatusText:Landroid/widget/TextView;

.field private mUnitsLeft:Ljava/lang/String;

.field private mUnitsRight:Ljava/lang/String;

.field private units:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mMaxValue:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mMinValue:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mInterval:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mUnitsLeft:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mUnitsRight:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->units:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->initPreference(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mMaxValue:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mMinValue:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mInterval:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mUnitsLeft:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mUnitsRight:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->units:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->initPreference(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/kryp/settings/ComotID;->init(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private getAttributeStringValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1, p2, p3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p4

    :cond_0
    return-object v0
.end method

.method private initPreference(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->setValuesFromXml(Landroid/util/AttributeSet;)V

    const-string v0, "preference_widget_seekbar"

    const-string v1, "layout"

    invoke-static {v0, v1}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->setLayoutResource(I)V

    new-instance v0, Landroid/widget/SeekBar;

    invoke-direct {v0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mMaxValue:I

    iget v2, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mMinValue:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const-string v0, "seek_bar_preference"

    const-string v1, "layout"

    invoke-static {v0, v1}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method private setValuesFromXml(Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "max"

    const/16 v3, 0x64

    invoke-interface {p1, v1, v2, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mMaxValue:I

    const-string v1, "min"

    const/4 v2, 0x0

    invoke-interface {p1, v4, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mMinValue:I

    const-string v1, "unitsLeft"

    const-string v2, ""

    invoke-direct {p0, p1, v4, v1, v2}, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->getAttributeStringValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mUnitsLeft:Ljava/lang/String;

    const-string v1, "units"

    const-string v2, ""

    invoke-direct {p0, p1, v4, v1, v2}, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->getAttributeStringValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->units:Ljava/lang/String;

    const-string v1, "unitsRight"

    iget-object v2, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->units:Ljava/lang/String;

    invoke-direct {p0, p1, v4, v1, v2}, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->getAttributeStringValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mUnitsRight:Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "interval"

    invoke-interface {p1, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mInterval:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v2, "seekBarPrefBarContainer"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eq v1, v0, :cond_1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->updateView(Landroid/view/View;)V

    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-object v1
.end method

.method public onDependencyChanged(Landroid/preference/Preference;Z)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 2

    const/16 v1, 0x32

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    iget v1, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mMinValue:I

    add-int v0, p2, v1

    iget v1, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mMaxValue:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mMaxValue:I

    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mCurrentValue:I

    iget v2, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mMinValue:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_1
    return-void

    :cond_1
    iget v1, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mMinValue:I

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mMinValue:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mInterval:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mInterval:I

    rem-int v1, v0, v1

    if-eqz v1, :cond_0

    int-to-float v1, v0

    iget v2, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mInterval:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mInterval:I

    mul-int v0, v1, v2

    goto :goto_0

    :cond_3
    iput v0, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mCurrentValue:I

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mStatusText:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->persistInt(I)Z

    goto :goto_1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mCurrentValue:I

    invoke-virtual {p0, v1}, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->getPersistedInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mCurrentValue:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->persistInt(I)Z

    iput v0, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mCurrentValue:I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->notifyChanged()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method

.method protected updateView(Landroid/view/View;)V
    .locals 5

    :try_start_0
    const-string v2, "seekBarPrefValue"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mStatusText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mStatusText:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mCurrentValue:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mStatusText:Landroid/widget/TextView;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinimumWidth(I)V

    iget-object v2, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mCurrentValue:I

    iget v4, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mMinValue:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    const-string v2, "seekBarPrefUnitsRight"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mUnitsRight:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "seekBarPrefUnitsLeft"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/kryp/settings/prefs/SeekBarPreference;->mUnitsLeft:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method
