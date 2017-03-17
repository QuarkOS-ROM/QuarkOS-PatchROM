.class public Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;
.super Landroid/app/Dialog;
.source "ColorPickerDialog.java"

# interfaces
.implements Lcom/android/settings/kryp/settings/prefs/ColorPickerView$OnColorChangedListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog$OnColorChangedListener;
    }
.end annotation


# instance fields
.field private mBlack:Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

.field private mColorPicker:Lcom/android/settings/kryp/settings/prefs/ColorPickerView;

.field private mCyan:Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

.field private mGreen:Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

.field private mHexDefaultTextColor:Landroid/content/res/ColorStateList;

.field private mHexVal:Landroid/widget/EditText;

.field private mHexValueEnabled:Z

.field private mLayout:Landroid/view/View;

.field private mListener:Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog$OnColorChangedListener;

.field private mNewColor:Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

.field private mOldColor:Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

.field private mOrientation:I

.field private mRed:Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

.field private mSetButton:Landroid/widget/ImageButton;

.field private mWhite:Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

.field private mYellow:Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mHexValueEnabled:Z

    invoke-direct {p0, p2}, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->init(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/kryp/settings/ComotID;->init(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;)Lcom/android/settings/kryp/settings/prefs/ColorPickerView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mColorPicker:Lcom/android/settings/kryp/settings/prefs/ColorPickerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mHexDefaultTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method private init(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    invoke-direct {p0, p1}, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->setUp(I)V

    return-void
.end method

.method private setUp(I)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const-string v1, "dialog_color_picker_w"

    const-string v2, "layout"

    invoke-static {v1, v2}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0}, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mOrientation:I

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mLayout:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->setContentView(Landroid/view/View;)V

    const-string v1, "dialog_color_picker"

    const-string v2, "string"

    invoke-static {v1, v2}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->setTitle(I)V

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mLayout:Landroid/view/View;

    const-string v2, "color_picker_view_w"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/kryp/settings/prefs/ColorPickerView;

    iput-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mColorPicker:Lcom/android/settings/kryp/settings/prefs/ColorPickerView;

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mLayout:Landroid/view/View;

    const-string v2, "old_color_panel"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

    iput-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mOldColor:Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mLayout:Landroid/view/View;

    const-string v2, "new_color_panel"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

    iput-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mNewColor:Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mLayout:Landroid/view/View;

    const-string v2, "white_panel"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

    iput-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mWhite:Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mLayout:Landroid/view/View;

    const-string v2, "black_panel"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

    iput-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mBlack:Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mLayout:Landroid/view/View;

    const-string v2, "cyan_panel"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

    iput-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mCyan:Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mLayout:Landroid/view/View;

    const-string v2, "red_panel"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

    iput-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mRed:Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mLayout:Landroid/view/View;

    const-string v2, "green_panel"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

    iput-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mGreen:Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mLayout:Landroid/view/View;

    const-string v2, "yellow_panel"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

    iput-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mYellow:Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mLayout:Landroid/view/View;

    const-string v2, "hex_val"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mHexDefaultTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    new-instance v2, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog$1;

    invoke-direct {v2, p0}, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog$1;-><init>(Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mOldColor:Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

    invoke-virtual {v1}, Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mColorPicker:Lcom/android/settings/kryp/settings/prefs/ColorPickerView;

    invoke-virtual {v2}, Lcom/android/settings/kryp/settings/prefs/ColorPickerView;->getDrawingOffset()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mColorPicker:Lcom/android/settings/kryp/settings/prefs/ColorPickerView;

    invoke-virtual {v3}, Lcom/android/settings/kryp/settings/prefs/ColorPickerView;->getDrawingOffset()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mOldColor:Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

    invoke-virtual {v1, p0}, Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mNewColor:Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

    invoke-virtual {v1, p0}, Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mColorPicker:Lcom/android/settings/kryp/settings/prefs/ColorPickerView;

    invoke-virtual {v1, p0}, Lcom/android/settings/kryp/settings/prefs/ColorPickerView;->setOnColorChangedListener(Lcom/android/settings/kryp/settings/prefs/ColorPickerView$OnColorChangedListener;)V

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mOldColor:Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

    invoke-virtual {v1, p1}, Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;->setColor(I)V

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mColorPicker:Lcom/android/settings/kryp/settings/prefs/ColorPickerView;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/settings/kryp/settings/prefs/ColorPickerView;->setColor(IZ)V

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mWhite:Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->setColorAndClickAction(Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;I)V

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mBlack:Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

    const/high16 v2, -0x1000000

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->setColorAndClickAction(Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;I)V

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mCyan:Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

    const v2, -0xcc4a1b

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->setColorAndClickAction(Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;I)V

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mRed:Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

    const/high16 v2, -0x10000

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->setColorAndClickAction(Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;I)V

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mGreen:Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

    const v2, -0xff0100

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->setColorAndClickAction(Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;I)V

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mYellow:Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

    const/16 v2, -0x100

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->setColorAndClickAction(Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;I)V

    return-void
.end method

.method private updateHexLengthFilter()V
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->getAlphaSliderVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method private updateHexValue(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->getAlphaSliderVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/android/settings/kryp/settings/prefs/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mHexDefaultTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/android/settings/kryp/settings/prefs/ColorPickerPreference;->convertToRGB(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getAlphaSliderVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mColorPicker:Lcom/android/settings/kryp/settings/prefs/ColorPickerView;

    invoke-virtual {v0}, Lcom/android/settings/kryp/settings/prefs/ColorPickerView;->getAlphaSliderVisible()Z

    move-result v0

    return v0
.end method

.method public getColor()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mColorPicker:Lcom/android/settings/kryp/settings/prefs/ColorPickerView;

    invoke-virtual {v0}, Lcom/android/settings/kryp/settings/prefs/ColorPickerView;->getColor()I

    move-result v0

    return v0
.end method

.method public getHexValueEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mHexValueEnabled:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "new_color_panel"

    const-string v2, "id"

    invoke-static {v1, v2}, Lcom/android/settings/kryp/settings/ComotID;->Get(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mListener:Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog$OnColorChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mListener:Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog$OnColorChangedListener;

    iget-object v1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mNewColor:Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

    invoke-virtual {v1}, Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog$OnColorChangedListener;->onColorChanged(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->dismiss()V

    return-void
.end method

.method public onColorChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mNewColor:Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

    invoke-virtual {v0, p1}, Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;->setColor(I)V

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/android/settings/kryp/settings/prefs/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onGlobalLayout()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mOrientation:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mOldColor:Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

    invoke-virtual {v2}, Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;->getColor()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mNewColor:Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

    invoke-virtual {v2}, Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;->getColor()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-direct {p0, v1}, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->setUp(I)V

    iget-object v2, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mNewColor:Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

    invoke-virtual {v2, v0}, Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;->setColor(I)V

    iget-object v2, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mColorPicker:Lcom/android/settings/kryp/settings/prefs/ColorPickerView;

    invoke-virtual {v2, v0}, Lcom/android/settings/kryp/settings/prefs/ColorPickerView;->setColor(I)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mOldColor:Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

    const-string v1, "old_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;->setColor(I)V

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mColorPicker:Lcom/android/settings/kryp/settings/prefs/ColorPickerView;

    const-string v1, "new_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/kryp/settings/prefs/ColorPickerView;->setColor(IZ)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "old_color"

    iget-object v2, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mOldColor:Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

    invoke-virtual {v2}, Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;->getColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "new_color"

    iget-object v2, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mNewColor:Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;

    invoke-virtual {v2}, Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;->getColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mColorPicker:Lcom/android/settings/kryp/settings/prefs/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/android/settings/kryp/settings/prefs/ColorPickerView;->setAlphaSliderVisible(Z)V

    iget-boolean v0, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mHexValueEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->updateHexLengthFilter()V

    invoke-virtual {p0}, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->getColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->updateHexValue(I)V

    :cond_0
    return-void
.end method

.method public setColorAndClickAction(Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;->setColor(I)V

    new-instance v0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog$2;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog$2;-><init>(Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;I)V

    invoke-virtual {p1, v0}, Lcom/android/settings/kryp/settings/prefs/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setHexValueEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mHexValueEnabled:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->updateHexLengthFilter()V

    invoke-virtual {p0}, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->getColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->updateHexValue(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnColorChangedListener(Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog$OnColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog;->mListener:Lcom/android/settings/kryp/settings/prefs/ColorPickerDialog$OnColorChangedListener;

    return-void
.end method
