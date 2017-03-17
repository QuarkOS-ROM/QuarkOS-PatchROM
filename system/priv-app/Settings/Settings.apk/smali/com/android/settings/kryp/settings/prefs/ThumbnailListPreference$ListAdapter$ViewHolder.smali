.class Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference$ListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ThumbnailListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field iv:Landroid/widget/ImageView;

.field rb:Landroid/widget/RadioButton;

.field final synthetic this$0:Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference$ListAdapter;

.field tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference$ListAdapter;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference$ListAdapter$ViewHolder;->this$0:Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference$ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "thumbnailRadioButton"

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference$ListAdapter$ViewHolder;->rb:Landroid/widget/RadioButton;

    const-string v0, "thumbnailText"

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference$ListAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    const-string v0, "thumbnailImage"

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ThumbnailListPreference$ListAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    return-void
.end method
