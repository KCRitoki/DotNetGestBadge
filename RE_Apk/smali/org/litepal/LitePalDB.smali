.class public Lorg/litepal/LitePalDB;
.super Ljava/lang/Object;
.source "LitePalDB.java"


# instance fields
.field private classNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dbName:Ljava/lang/String;

.field private isExternalStorage:Z

.field private version:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lorg/litepal/LitePalDB;->isExternalStorage:Z

    .line 80
    iput-object p1, p0, Lorg/litepal/LitePalDB;->dbName:Ljava/lang/String;

    .line 81
    iput p2, p0, Lorg/litepal/LitePalDB;->version:I

    return-void
.end method

.method public static fromDefault(Ljava/lang/String;)Lorg/litepal/LitePalDB;
    .locals 3

    .line 65
    invoke-static {}, Lorg/litepal/parser/LitePalParser;->parseLitePalConfiguration()Lorg/litepal/parser/LitePalConfig;

    move-result-object v0

    .line 66
    new-instance v1, Lorg/litepal/LitePalDB;

    invoke-virtual {v0}, Lorg/litepal/parser/LitePalConfig;->getVersion()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lorg/litepal/LitePalDB;-><init>(Ljava/lang/String;I)V

    .line 67
    invoke-virtual {v0}, Lorg/litepal/parser/LitePalConfig;->getStorage()Ljava/lang/String;

    move-result-object p0

    const-string v2, "external"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v1, p0}, Lorg/litepal/LitePalDB;->setExternalStorage(Z)V

    .line 68
    invoke-virtual {v0}, Lorg/litepal/parser/LitePalConfig;->getClassNames()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/litepal/LitePalDB;->setClassNames(Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public addClassName(Ljava/lang/String;)V
    .locals 1

    .line 122
    invoke-virtual {p0}, Lorg/litepal/LitePalDB;->getClassNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getClassNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lorg/litepal/LitePalDB;->classNames:Ljava/util/List;

    const-string v1, "org.litepal.model.Table_Schema"

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/litepal/LitePalDB;->classNames:Ljava/util/List;

    .line 108
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lorg/litepal/LitePalDB;->classNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/litepal/LitePalDB;->classNames:Ljava/util/List;

    return-object v0
.end method

.method public getDbName()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/litepal/LitePalDB;->dbName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 85
    iget v0, p0, Lorg/litepal/LitePalDB;->version:I

    return v0
.end method

.method public isExternalStorage()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lorg/litepal/LitePalDB;->isExternalStorage:Z

    return v0
.end method

.method setClassNames(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lorg/litepal/LitePalDB;->classNames:Ljava/util/List;

    return-void
.end method

.method public setExternalStorage(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lorg/litepal/LitePalDB;->isExternalStorage:Z

    return-void
.end method
