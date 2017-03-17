.class public Lcom/android/settings/kryp/util/CustomDrawerLayout;
.super Landroid/support/v4/widget/DrawerLayout;
.source "CustomDrawerLayout.java"


# instance fields
.field private mContentsView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/kryp/util/CustomDrawerLayout;->mContentsView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/kryp/util/CustomDrawerLayout;->mContentsView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/kryp/util/CustomDrawerLayout;->mContentsView:Landroid/view/View;

    return-void
.end method

.method private isPointInsideContentsView(FF)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v0, v5, [I

    iget-object v5, p0, Lcom/android/settings/kryp/util/CustomDrawerLayout;->mContentsView:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v1, v0, v4

    aget v2, v0, v3

    int-to-float v5, v1

    cmpl-float v5, p1, v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/kryp/util/CustomDrawerLayout;->mContentsView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    cmpg-float v5, p1, v5

    if-gez v5, :cond_0

    int-to-float v5, v2

    cmpl-float v5, p2, v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/kryp/util/CustomDrawerLayout;->mContentsView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v5, v5

    cmpg-float v5, p2, v5

    if-gez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setContentsView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/kryp/util/CustomDrawerLayout;->mContentsView:Landroid/view/View;

    return-void
.end method
