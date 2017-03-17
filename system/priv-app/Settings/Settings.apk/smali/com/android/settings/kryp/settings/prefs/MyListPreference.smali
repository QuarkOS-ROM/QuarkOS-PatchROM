.class public Lcom/android/settings/kryp/settings/prefs/MyListPreference;
.super Landroid/preference/ListPreference;
.source "MyListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/kryp/settings/prefs/MyListPreference$SavedState;
    }
.end annotation


# instance fields
.field adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mClickedDialogEntryIndex:I

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mValue:Ljava/lang/String;

.field private mValueSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/kryp/settings/ComotID;->init(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/kryp/settings/prefs/MyListPreference;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->mClickedDialogEntryIndex:I

    return p1
.end method

.method private getValueIndex()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->mClickedDialogEntryIndex:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->mClickedDialogEntryIndex:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "simple_list_item_single_choice"

    const-string v3, "layout"

    invoke-static {v2, v3}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->adapter:Landroid/widget/ArrayAdapter;

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    invoke-direct {p0}, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->getValueIndex()I

    move-result v0

    iput v0, p0, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->mClickedDialogEntryIndex:I

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->adapter:Landroid/widget/ArrayAdapter;

    iget v1, p0, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->mClickedDialogEntryIndex:I

    new-instance v2, Lcom/android/settings/kryp/settings/prefs/MyListPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/kryp/settings/prefs/MyListPreference$1;-><init>(Lcom/android/settings/kryp/settings/prefs/MyListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/settings/kryp/settings/prefs/MyListPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/settings/kryp/settings/prefs/MyListPreference$SavedState;

    invoke-virtual {v0}, Lcom/android/settings/kryp/settings/prefs/MyListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/ListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, v0, Lcom/android/settings/kryp/settings/prefs/MyListPreference$SavedState;->value:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/preference/ListPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Lcom/android/settings/kryp/settings/prefs/MyListPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings/kryp/settings/prefs/MyListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/kryp/settings/prefs/MyListPreference$SavedState;->value:Ljava/lang/String;

    move-object v1, v0

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->setValue(Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->mValue:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    :goto_0
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->mValueSet:Z

    if-nez v2, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->mValue:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->mValueSet:Z

    invoke-virtual {p0, p1}, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->persistString(Ljava/lang/String;)Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->notifyChanged()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const-string v3, "colorAccent"

    const-string v4, "attr"

    invoke-static {v3, v4}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Lcom/android/settings/kryp/settings/prefs/MyListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
