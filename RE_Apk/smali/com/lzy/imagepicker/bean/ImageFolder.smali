.class public Lcom/lzy/imagepicker/bean/ImageFolder;
.super Ljava/lang/Object;
.source "ImageFolder.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cover:Lcom/lzy/imagepicker/bean/ImageItem;

.field public images:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/lzy/imagepicker/bean/ImageItem;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 27
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/lzy/imagepicker/bean/ImageFolder;

    .line 28
    iget-object v1, p0, Lcom/lzy/imagepicker/bean/ImageFolder;->path:Ljava/lang/String;

    iget-object v2, v0, Lcom/lzy/imagepicker/bean/ImageFolder;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lzy/imagepicker/bean/ImageFolder;->name:Ljava/lang/String;

    iget-object v0, v0, Lcom/lzy/imagepicker/bean/ImageFolder;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 32
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
