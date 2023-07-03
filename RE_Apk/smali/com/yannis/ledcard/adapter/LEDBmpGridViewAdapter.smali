.class public Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "LEDBmpGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final isEditMode:Z

.field private final mBmpList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/bean/LEDBmp;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/bean/LEDBmp;",
            ">;Z)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter;->mBmpList:Ljava/util/List;

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 32
    iput-boolean p3, p0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter;->isEditMode:Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter;->mBmpList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter;->mBmpList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 53
    iget-object p3, p0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter;->mBmpList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yannis/ledcard/bean/LEDBmp;

    if-nez p2, :cond_0

    .line 55
    iget-object p2, p0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0a0035

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 56
    new-instance v0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter$ViewHolder;-><init>(Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter;)V

    const v1, 0x7f08007a

    .line 57
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter$ViewHolder;->ledBmp:Landroid/widget/ImageView;

    const v1, 0x7f080068

    .line 58
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter$ViewHolder;->ivAdd:Landroid/widget/ImageView;

    const v1, 0x7f08006e

    .line 59
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter$ViewHolder;->ivDelete:Landroid/widget/ImageView;

    .line 60
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter$ViewHolder;

    .line 64
    :goto_0
    iget-object v1, p0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter;->mBmpList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne p1, v1, :cond_1

    invoke-virtual {p3}, Lcom/yannis/ledcard/bean/LEDBmp;->getId()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 65
    iget-object p1, v0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter$ViewHolder;->ledBmp:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    iget-object p1, v0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter$ViewHolder;->ivAdd:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 68
    :cond_1
    iget-boolean p1, p0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter;->isEditMode:Z

    if-eqz p1, :cond_2

    .line 69
    iget-object p1, v0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter$ViewHolder;->ivDelete:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 71
    :cond_2
    iget-object p1, v0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter$ViewHolder;->ivDelete:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    :goto_1
    iget-object p1, v0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter$ViewHolder;->ivAdd:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    iget-object p1, v0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter$ViewHolder;->ledBmp:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    invoke-virtual {p3}, Lcom/yannis/ledcard/bean/LEDBmp;->getFilePath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 77
    invoke-static {p1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_2

    .line 80
    :cond_3
    iget-object p1, p0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p3}, Lcom/yannis/ledcard/bean/LEDBmp;->getResourceID()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_4

    .line 83
    iget-object p3, v0, Lcom/yannis/ledcard/adapter/LEDBmpGridViewAdapter$ViewHolder;->ledBmp:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_3
    return-object p2
.end method
