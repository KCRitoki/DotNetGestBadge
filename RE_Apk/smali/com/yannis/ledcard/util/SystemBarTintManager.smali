.class public Lcom/yannis/ledcard/util/SystemBarTintManager;
.super Ljava/lang/Object;
.source "SystemBarTintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yannis/ledcard/util/SystemBarTintManager$SystemBarConfig;
    }
.end annotation


# static fields
.field public static final DEFAULT_TINT_COLOR:I = -0x67000000

.field private static sNavBarOverride:Ljava/lang/String;


# instance fields
.field private final mConfig:Lcom/yannis/ledcard/util/SystemBarTintManager$SystemBarConfig;

.field private mNavBarAvailable:Z

.field private mNavBarTintEnabled:Z

.field private mNavBarTintView:Landroid/view/View;

.field private mStatusBarAvailable:Z

.field private mStatusBarTintEnabled:Z

.field private mStatusBarTintView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 35
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 36
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "qemu.hw.mainkeys"

    aput-object v3, v2, v6

    .line 38
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/yannis/ledcard/util/SystemBarTintManager;->sNavBarOverride:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 40
    :catchall_0
    sput-object v0, Lcom/yannis/ledcard/util/SystemBarTintManager;->sNavBarOverride:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 73
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x13

    if-lt v2, v4, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 75
    fill-array-data v2, :array_0

    .line 77
    invoke-virtual {p1, v2}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 79
    :try_start_0
    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mStatusBarAvailable:Z

    const/4 v4, 0x1

    .line 80
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mNavBarAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v2, 0x4000000

    .line 88
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_0

    .line 89
    iput-boolean v4, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mStatusBarAvailable:Z

    :cond_0
    const/high16 v2, 0x8000000

    .line 92
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 93
    iput-boolean v4, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mNavBarAvailable:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 82
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    throw p1

    .line 97
    :cond_1
    :goto_0
    new-instance v0, Lcom/yannis/ledcard/util/SystemBarTintManager$SystemBarConfig;

    iget-boolean v2, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mStatusBarAvailable:Z

    iget-boolean v4, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mNavBarAvailable:Z

    const/4 v5, 0x0

    invoke-direct {v0, p1, v2, v4, v5}, Lcom/yannis/ledcard/util/SystemBarTintManager$SystemBarConfig;-><init>(Landroid/app/Activity;ZZLcom/yannis/ledcard/util/SystemBarTintManager$1;)V

    iput-object v0, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mConfig:Lcom/yannis/ledcard/util/SystemBarTintManager$SystemBarConfig;

    .line 99
    invoke-virtual {v0}, Lcom/yannis/ledcard/util/SystemBarTintManager$SystemBarConfig;->hasNavigtionBar()Z

    move-result v0

    if-nez v0, :cond_2

    .line 100
    iput-boolean v3, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mNavBarAvailable:Z

    .line 103
    :cond_2
    iget-boolean v0, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_3

    .line 104
    invoke-direct {p0, p1, v1}, Lcom/yannis/ledcard/util/SystemBarTintManager;->setupStatusBarView(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 106
    :cond_3
    iget-boolean v0, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_4

    .line 107
    invoke-direct {p0, p1, v1}, Lcom/yannis/ledcard/util/SystemBarTintManager;->setupNavBarView(Landroid/content/Context;Landroid/view/ViewGroup;)V

    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        0x10103ef
        0x10103f0
    .end array-data
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/yannis/ledcard/util/SystemBarTintManager;->sNavBarOverride:Ljava/lang/String;

    return-object v0
.end method

.method private setupNavBarView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2

    .line 317
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    .line 319
    iget-object p1, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mConfig:Lcom/yannis/ledcard/util/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {p1}, Lcom/yannis/ledcard/util/SystemBarTintManager$SystemBarConfig;->isNavigationAtBottom()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 320
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mConfig:Lcom/yannis/ledcard/util/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v1}, Lcom/yannis/ledcard/util/SystemBarTintManager$SystemBarConfig;->getNavigationBarHeight()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x50

    .line 321
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 323
    :cond_0
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mConfig:Lcom/yannis/ledcard/util/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v1}, Lcom/yannis/ledcard/util/SystemBarTintManager$SystemBarConfig;->getNavigationBarWidth()I

    move-result v1

    invoke-direct {p1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x5

    .line 324
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 326
    :goto_0
    iget-object v0, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    iget-object p1, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    const/high16 v0, -0x67000000

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 328
    iget-object p1, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 329
    iget-object p1, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setupStatusBarView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2

    .line 304
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    .line 305
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mConfig:Lcom/yannis/ledcard/util/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v0}, Lcom/yannis/ledcard/util/SystemBarTintManager$SystemBarConfig;->getStatusBarHeight()I

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x30

    .line 306
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 307
    iget-boolean v0, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mConfig:Lcom/yannis/ledcard/util/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v0}, Lcom/yannis/ledcard/util/SystemBarTintManager$SystemBarConfig;->isNavigationAtBottom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mConfig:Lcom/yannis/ledcard/util/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v0}, Lcom/yannis/ledcard/util/SystemBarTintManager$SystemBarConfig;->getNavigationBarWidth()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    iget-object p1, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    const/high16 v0, -0x67000000

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 312
    iget-object p1, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object p1, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getConfig()Lcom/yannis/ledcard/util/SystemBarTintManager$SystemBarConfig;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mConfig:Lcom/yannis/ledcard/util/SystemBarTintManager$SystemBarConfig;

    return-object v0
.end method

.method public isNavBarTintEnabled()Z
    .locals 1

    .line 300
    iget-boolean v0, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mNavBarTintEnabled:Z

    return v0
.end method

.method public isStatusBarTintEnabled()Z
    .locals 1

    .line 291
    iget-boolean v0, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mStatusBarTintEnabled:Z

    return v0
.end method

.method public setNavigationBarAlpha(F)V
    .locals 2

    .line 271
    iget-boolean v0, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setNavigationBarTintColor(I)V
    .locals 1

    .line 236
    iget-boolean v0, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setNavigationBarTintDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setNavigationBarTintEnabled(Z)V
    .locals 1

    .line 138
    iput-boolean p1, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mNavBarTintEnabled:Z

    .line 139
    iget-boolean v0, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setNavigationBarTintResource(I)V
    .locals 1

    .line 247
    iget-boolean v0, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setStatusBarAlpha(F)V
    .locals 2

    .line 225
    iget-boolean v0, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setStatusBarTintColor(I)V
    .locals 1

    .line 190
    iget-boolean v0, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setStatusBarTintDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setStatusBarTintEnabled(Z)V
    .locals 1

    .line 122
    iput-boolean p1, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mStatusBarTintEnabled:Z

    .line 123
    iget-boolean v0, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setStatusBarTintResource(I)V
    .locals 1

    .line 201
    iget-boolean v0, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/yannis/ledcard/util/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setTintAlpha(F)V
    .locals 0

    .line 180
    invoke-virtual {p0, p1}, Lcom/yannis/ledcard/util/SystemBarTintManager;->setStatusBarAlpha(F)V

    .line 181
    invoke-virtual {p0, p1}, Lcom/yannis/ledcard/util/SystemBarTintManager;->setNavigationBarAlpha(F)V

    return-void
.end method

.method public setTintColor(I)V
    .locals 0

    .line 150
    invoke-virtual {p0, p1}, Lcom/yannis/ledcard/util/SystemBarTintManager;->setStatusBarTintColor(I)V

    .line 151
    invoke-virtual {p0, p1}, Lcom/yannis/ledcard/util/SystemBarTintManager;->setNavigationBarTintColor(I)V

    return-void
.end method

.method public setTintDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 170
    invoke-virtual {p0, p1}, Lcom/yannis/ledcard/util/SystemBarTintManager;->setStatusBarTintDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    invoke-virtual {p0, p1}, Lcom/yannis/ledcard/util/SystemBarTintManager;->setNavigationBarTintDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTintResource(I)V
    .locals 0

    .line 160
    invoke-virtual {p0, p1}, Lcom/yannis/ledcard/util/SystemBarTintManager;->setStatusBarTintResource(I)V

    .line 161
    invoke-virtual {p0, p1}, Lcom/yannis/ledcard/util/SystemBarTintManager;->setNavigationBarTintResource(I)V

    return-void
.end method
