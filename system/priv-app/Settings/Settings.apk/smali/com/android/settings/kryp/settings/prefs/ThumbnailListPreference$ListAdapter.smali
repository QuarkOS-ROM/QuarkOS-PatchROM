.class Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThumbnailListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference$ListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field c:Landroid/content/Context;

.field entries:[Ljava/lang/CharSequence;

.field selectedPosition:I

.field thumbnails:[Landroid/graphics/drawable/Drawable;

.field values:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference$ListAdapter;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference$ListAdapter;->entries:[Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference$ListAdapter;->values:[Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference$ListAdapter;->thumbnails:[Landroid/graphics/drawable/Drawable;

    iput p5, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference$ListAdapter;->selectedPosition:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference$ListAdapter;->entries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference$ListAdapter;->entries:[Ljava/lang/CharSequence;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v2, 0x0

    if-nez p2, :cond_1

    iget-object v3, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference$ListAdapter;->c:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const-string v3, "thumbnail_item_view"

    const-string v4, "layout"

    invoke-static {v3, v4}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference$ListAdapter$ViewHolder;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference$ListAdapter$ViewHolder;-><init>(Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference$ListAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v3, v1, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference$ListAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference$ListAdapter;->entries:[Ljava/lang/CharSequence;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference$ListAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference$ListAdapter;->thumbnails:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v1, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference$ListAdapter$ViewHolder;->rb:Landroid/widget/RadioButton;

    iget v4, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference$ListAdapter;->selectedPosition:I

    if-ne p1, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference$ListAdapter$ViewHolder;

    goto :goto_0
.end method
