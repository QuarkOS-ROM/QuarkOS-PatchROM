.class public Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;
.super Landroid/preference/DialogPreference;
.source "ThumbnailListPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference$ListAdapter;
    }
.end annotation


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private entriesList:[Ljava/lang/CharSequence;

.field private entryDefault:Ljava/lang/String;

.field private entryValuesList:[Ljava/lang/CharSequence;

.field private iconView:Landroid/widget/ImageView;

.field private selectedPosition:I

.field private thumbnailIcon:Landroid/graphics/drawable/Drawable;

.field private thumbnailsArray:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v4, "ThumbnailPreference"

    iput-object v4, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->LOG_TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->c:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/settings/kryp/settings/ComotID;->init(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->c:Landroid/content/Context;

    const-string v5, "ThumbnailListPreference"

    invoke-static {v5}, Lcom/android/settings/kryp/settings/ComotID;->GetStyle(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {v4, p2, v5, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    const-string v4, "ThumbnailListPreference_entryList"

    const-string v5, "styleable"

    invoke-static {v4, v5}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->entriesList:[Ljava/lang/CharSequence;

    const-string v4, "ThumbnailListPreference_entryValuesList"

    const-string v5, "styleable"

    invoke-static {v4, v5}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->entryValuesList:[Ljava/lang/CharSequence;

    const-string v4, "ThumbnailListPreference_entryDefault"

    const-string v5, "styleable"

    invoke-static {v4, v5}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->entryDefault:Ljava/lang/String;

    const-string v4, "ThumbnailListPreference_drawableArray"

    const-string v5, "styleable"

    invoke-static {v4, v5}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->thumbnailsArray:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->thumbnailsArray:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    const-string v4, "thumbnail_preference_dialog_view"

    const-string v5, "layout"

    invoke-static {v4, v5}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->setDialogLayoutResource(I)V

    const-string v4, "thumbnail_preference_icon"

    const-string v5, "layout"

    invoke-static {v4, v5}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public getDefaultEntry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->entryDefault:Ljava/lang/String;

    return-object v0
.end method

.method public getDrawableArray()[Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->thumbnailsArray:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->entriesList:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->entryValuesList:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbnailIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->entryValuesList:[Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->thumbnailsArray:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->thumbnailIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget-object v2, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->thumbnailIcon:Landroid/graphics/drawable/Drawable;

    return-object v2

    :cond_0
    iput-object v3, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->thumbnailIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->entryValuesList:[Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {p0, v2}, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->selectedPosition:I

    const-string v1, "thumbnailListView"

    const-string v2, "id"

    invoke-static {v1, v2}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {v6, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v6, v4}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    invoke-virtual {v6, v4}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    invoke-virtual {v6, v3}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    new-instance v0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference$ListAdapter;

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->entriesList:[Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->entryValuesList:[Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->thumbnailsArray:[Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->selectedPosition:I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference$ListAdapter;-><init>(Landroid/content/Context;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->entryDefault:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->entryDefault:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->persistString(Ljava/lang/String;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->getThumbnailIcon()Landroid/graphics/drawable/Drawable;

    const-string v0, "thumbnailIcon"

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->iconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->iconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->thumbnailIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->entryDefault:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->entryDefault:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->entryValuesList:[Ljava/lang/CharSequence;

    aget-object v0, v0, p3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->persistString(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->thumbnailsArray:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p3

    iput-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->thumbnailIcon:Landroid/graphics/drawable/Drawable;

    iput p3, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->selectedPosition:I

    invoke-virtual {p0}, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->iconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->thumbnailIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDrawableArray([Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->thumbnailsArray:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->entriesList:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setEntryDefault(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->entryDefault:Ljava/lang/String;

    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->entryValuesList:[Ljava/lang/CharSequence;

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const-string v4, "colorAccent"

    const-string v5, "attr"

    invoke-static {v4, v5}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
