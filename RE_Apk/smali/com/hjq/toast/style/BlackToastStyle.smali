.class public Lcom/hjq/toast/style/BlackToastStyle;
.super Ljava/lang/Object;
.source "BlackToastStyle.java"

# interfaces
.implements Lcom/hjq/toast/config/IToastStyle;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/hjq/toast/config/IToastStyle<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/hjq/toast/style/BlackToastStyle;->createView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 5

    .line 25
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x102000b

    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/hjq/toast/style/BlackToastStyle;->getTextGravity(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/hjq/toast/style/BlackToastStyle;->getTextColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    invoke-virtual {p0, p1}, Lcom/hjq/toast/style/BlackToastStyle;->getTextSize(Landroid/content/Context;)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/hjq/toast/style/BlackToastStyle;->getHorizontalPadding(Landroid/content/Context;)I

    move-result v1

    .line 32
    invoke-virtual {p0, p1}, Lcom/hjq/toast/style/BlackToastStyle;->getVerticalPadding(Landroid/content/Context;)I

    move-result v2

    .line 35
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 36
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 41
    :goto_0
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/hjq/toast/style/BlackToastStyle;->getBackgroundDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 45
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_1

    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    :goto_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    .line 53
    invoke-virtual {p0, p1}, Lcom/hjq/toast/style/BlackToastStyle;->getTranslationZ(Landroid/content/Context;)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setZ(F)V

    :cond_2
    return-object v0
.end method

.method protected getBackgroundDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 80
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v1, -0x78000000

    .line 82
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v1, 0x1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method public synthetic getGravity()I
    .locals 1

    invoke-static {p0}, Lcom/hjq/toast/config/IToastStyle$-CC;->$default$getGravity(Lcom/hjq/toast/config/IToastStyle;)I

    move-result v0

    return v0
.end method

.method public synthetic getHorizontalMargin()F
    .locals 1

    invoke-static {p0}, Lcom/hjq/toast/config/IToastStyle$-CC;->$default$getHorizontalMargin(Lcom/hjq/toast/config/IToastStyle;)F

    move-result v0

    return v0
.end method

.method protected getHorizontalPadding(Landroid/content/Context;)I
    .locals 2

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method protected getTextColor(Landroid/content/Context;)I
    .locals 0

    const p1, -0x11000001

    return p1
.end method

.method protected getTextGravity(Landroid/content/Context;)I
    .locals 0

    const/16 p1, 0x11

    return p1
.end method

.method protected getTextSize(Landroid/content/Context;)F
    .locals 2

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x2

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method protected getTranslationZ(Landroid/content/Context;)F
    .locals 2

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method public synthetic getVerticalMargin()F
    .locals 1

    invoke-static {p0}, Lcom/hjq/toast/config/IToastStyle$-CC;->$default$getVerticalMargin(Lcom/hjq/toast/config/IToastStyle;)F

    move-result v0

    return v0
.end method

.method protected getVerticalPadding(Landroid/content/Context;)I
    .locals 2

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public synthetic getXOffset()I
    .locals 1

    invoke-static {p0}, Lcom/hjq/toast/config/IToastStyle$-CC;->$default$getXOffset(Lcom/hjq/toast/config/IToastStyle;)I

    move-result v0

    return v0
.end method

.method public synthetic getYOffset()I
    .locals 1

    invoke-static {p0}, Lcom/hjq/toast/config/IToastStyle$-CC;->$default$getYOffset(Lcom/hjq/toast/config/IToastStyle;)I

    move-result v0

    return v0
.end method
