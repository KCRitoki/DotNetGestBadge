.class public final synthetic Lcom/yannis/ledcard/presenter/-$$Lambda$MainPresenter$-78yLPw1ilWe7hiyaWK_gZrEXwU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/yannis/ledcard/presenter/MainPresenter;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/yannis/ledcard/presenter/MainPresenter;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yannis/ledcard/presenter/-$$Lambda$MainPresenter$-78yLPw1ilWe7hiyaWK_gZrEXwU;->f$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    iput-object p2, p0, Lcom/yannis/ledcard/presenter/-$$Lambda$MainPresenter$-78yLPw1ilWe7hiyaWK_gZrEXwU;->f$1:Ljava/util/List;

    iput p3, p0, Lcom/yannis/ledcard/presenter/-$$Lambda$MainPresenter$-78yLPw1ilWe7hiyaWK_gZrEXwU;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/yannis/ledcard/presenter/-$$Lambda$MainPresenter$-78yLPw1ilWe7hiyaWK_gZrEXwU;->f$0:Lcom/yannis/ledcard/presenter/MainPresenter;

    iget-object v1, p0, Lcom/yannis/ledcard/presenter/-$$Lambda$MainPresenter$-78yLPw1ilWe7hiyaWK_gZrEXwU;->f$1:Ljava/util/List;

    iget v2, p0, Lcom/yannis/ledcard/presenter/-$$Lambda$MainPresenter$-78yLPw1ilWe7hiyaWK_gZrEXwU;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/yannis/ledcard/presenter/MainPresenter;->lambda$sendData$0$MainPresenter(Ljava/util/List;I)V

    return-void
.end method
